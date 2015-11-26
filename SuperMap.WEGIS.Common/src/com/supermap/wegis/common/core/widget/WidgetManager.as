package com.supermap.wegis.common.core.widget
{
	import com.supermap.wegis.common.components.events.BaseWidgetEvent;
	import com.supermap.wegis.common.components.progressBar.ProgressPanel;
	import com.supermap.wegis.common.core.hashTable.HashTable;
	
	import flash.display.DisplayObject;
	import flash.net.LocalConnection;
	import flash.system.ApplicationDomain;
	import flash.system.Security;
	import flash.system.SecurityDomain;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.core.IFlexModuleFactory;
	import mx.core.IVisualElementContainer;
	import mx.events.FlexEvent;
	import mx.events.ModuleEvent;
	import mx.managers.PopUpManager;
	import mx.modules.IModuleInfo;
	import mx.modules.ModuleManager;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import org.osmf.layout.HorizontalAlign;
	
	
	/**负责Widget器件的增、删、改、查*/
	public class WidgetManager
	{
		//保存ModuleInfo信息
		private var moduleTable:HashTable = new HashTable();
		
		//保存Widget器件信息
		private var widgetTable:HashTable = new HashTable();
		
		//加载ModuleInfo
		private var widgetInfo:IModuleInfo;
		
		//模块加载进度窗口
		private var progress:ProgressPanel = null;
		private var moduleTitle:String = "";
		
		//设置安全域只能访问远程的数据
		private var securityDomain:SecurityDomain = Security.sandboxType == Security.REMOTE ? SecurityDomain.currentDomain : null; 
		
		//模块创建工厂
		private var moduleFactory:IFlexModuleFactory = FlexGlobals.topLevelApplication.moduleFactory;
		
		//应用域
		private var _appDomain:ApplicationDomain=ApplicationDomain.currentDomain;
		
		private var widgetList:Array =[];
		
		private var _refX:Number = 0;
		private var _refY:Number = 0;
		private var configCtl:Object;
		//采用单例模式
		private static var widgetManager:WidgetManager;
		
		/**标示上一个是否加载结束*/
		private var _preWidgetIsLoadComplate:Boolean = true; 
		
		public function WidgetManager()
		{
			if(widgetManager != null)
			{
				throw new Error("Only one WidgetManager instance should be instantiated");
			}
		}
		
		public function get appDomain():ApplicationDomain
		{
			return _appDomain;
		}
		
		public function set appDomain(value:ApplicationDomain):void
		{
			_appDomain = value;
		}
		
		/**获取WidgetManager实例*/
		public static function getInstance():WidgetManager
		{
			if(widgetManager == null)
			{
				widgetManager = new WidgetManager();
			}
			
			return widgetManager;
		}
		
		/**获取widget对象*/
		public function getWidget(widgetId:String):WidgetBase
		{
			if(widgetId == null)
				return null;
			var widget:WidgetBase = null;
			if(widgetTable != null && widgetTable.size > 0)
			{
				widget = widgetTable.find(widgetId);
			}
			return widget;
		}
		
		/**获取IModuleInfo对象*/
		public function getModuleInfo(widgetId:String):IModuleInfo
		{
			if(widgetId == null)
				return null;
			var mlduleInfo:IModuleInfo = null;
			if(moduleTable != null && moduleTable.size > 0)
			{
				mlduleInfo = moduleTable.find(widgetId);
			}
			return mlduleInfo;
		}
		
		/**加载widget对象,参数可以是一个widget的数据，也可以是数组*/
		public function loadWidget(widgetParam:Object):void
		{
			if(widgetParam is Array)
			{
				widgetList = widgetList.concat(widgetParam as Array);
			}
			else if(widgetParam is ArrayCollection)
			{
				widgetList = widgetList.concat((widgetParam as ArrayCollection).toArray());
			}
			else
			{
				widgetList = widgetList.concat([widgetParam]);
			}
			
			loadNextControl();
		}
		
		private function loadNextControl():void
		{
			if (widgetList.length &&　_preWidgetIsLoadComplate)
			{
				var ctl:Object = widgetList[0];
				var tempCtl:Object = {};
				_preWidgetIsLoadComplate = false;
				if(ctl.hasOwnProperty("ref"))
				{
					tempCtl = ctl.ref;
					tempCtl.parent = ctl.parent;
					widgetList.splice(0, 1);
					loadControl(tempCtl);
				}
				else
				{
					widgetList.splice(0, 1);
					loadControl(ctl);
				}
			}
			
		}
		
		private function loadControl(ctl:Object):void
		{
			var widget:WidgetBase = getWidget(ctl.key);
			if(widget != null)
			{
				var isExist:Boolean = false;
				_preWidgetIsLoadComplate = true;
				var parentContainer:IVisualElementContainer = (ctl["parent"] as IVisualElementContainer);
				if(parentContainer != null)
				{
					var len:int = parentContainer.numElements;
					if(len > 0)
					{
						for (var i:int = 0; i < len; i++) 
						{
							var childElement:WidgetBase = parentContainer.getElementAt(i) as WidgetBase;
							//对添加进来的模块，控制是否需要设置其他模块可见，通过single控制,false为不需要移除其他模块
							if((!(["single"]  in ctl) || ctl["single"] == true) && childElement.widgetId != ctl.key)
							{
								childElement.visible = false;
								childElement.includeInLayout = false;
								widgetBaseRemove(childElement);
							}
							if(childElement.widgetId == ctl.key)
							{
								childElement.visible = true;
								childElement.includeInLayout = true;
								isExist = true;
								widgetBaseAdd(childElement);
							}
						}
					}
					
					if(!isExist)
					{
						parentContainer.addElement(widget);
						widget.widgetContainer = parentContainer;
						widgetBaseAdd(widget);
					}
				}
				//当前widget加载完成
				loadNextControl();
			}
			else
			{
				//如果模块有配置文件，先请求配置文件
				if(ctl.hasOwnProperty("configurl"))
				{
					configCtl = ctl;
					var http:HTTPService = new HTTPService();
					http.url = ctl["configurl"]+"?t=" + new Date().time.toString();
					http.addEventListener(ResultEvent.RESULT,configSuccess);
					http.addEventListener(FaultEvent.FAULT,configFault);
					http.send();
				}
				else
				{
					configCtl = null;
					addWidgetSwf(ctl);
				}
				
			}
		}
		
		private function widgetBaseAdd(widgetBase:WidgetBase):void
		{
			widgetBase.dispatchEvent(new BaseWidgetEvent(BaseWidgetEvent.WIDGET_ADD_COMPLETE));
		}
		
		private function widgetBaseRemove(widgetBase:WidgetBase):void
		{
			widgetBase.dispatchEvent(new BaseWidgetEvent(BaseWidgetEvent.WIDGET_REMOVE));
		}
		
		//请求配置文件成功
		private function configSuccess(event:ResultEvent):void
		{
			configCtl.config =event.result ;
			addWidgetSwf(configCtl);
		}
		
		private  function configFault(event:FaultEvent):void
		{
			configCtl.config =null ;
			Alert.show("配置文件加载失败"+event.fault.faultDetail,"提示",Alert.OK);
			addWidgetSwf(configCtl);
		}
		
		private function addWidgetSwf(ctl:Object):void
		{
			try
			{
				widgetInfo = ModuleManager.getModule(ctl.url);
				widgetInfo.data = ctl;
				widgetInfo.addEventListener(ModuleEvent.PROGRESS, widgetProgressHandler);
				widgetInfo.addEventListener(ModuleEvent.READY, widgetReadyHandler);
				widgetInfo.addEventListener(ModuleEvent.ERROR, widgetErrorHandler);
				//采用样式继承
				widgetInfo.load(appDomain, securityDomain, null, moduleFactory);
				moduleTitle = ctl.name;
				
				//判断模块是否已经加载
				if(!widgetInfo.ready)
				{
					//显示加载进度条 
					if(progress == null)
					{
						progress = PopUpManager.createPopUp(FlexGlobals.topLevelApplication as DisplayObject, ProgressPanel,true) as ProgressPanel;
						PopUpManager.centerPopUp(progress);
					}
					else
					{
						PopUpManager.addPopUp(progress,FlexGlobals.topLevelApplication as DisplayObject,true);
						PopUpManager.centerPopUp(progress);
					}
					progress.setProgressValue(0, moduleTitle);
				}
			}
			catch(e:Error)
			{
				if(progress != null)
				{
					PopUpManager.removePopUp(progress);
				}
				//code
				if(widgetInfo != null)
				{
					widgetInfo.unload();
					widgetInfo = null;
					clear();
				}
				_preWidgetIsLoadComplate = true;
				loadNextControl();
			}
		}
		
		//Progress
		private function widgetProgressHandler(event:ModuleEvent):void
		{
			//code
			if(progress != null)
				progress.setProgressValue(int((event.bytesLoaded/event.bytesTotal)*100), moduleTitle);
		}
		
		//Ready
		private function widgetReadyHandler(event:ModuleEvent):void
		{
			//code
			var moduleInfo:IModuleInfo = event.module;
			var id:String = moduleInfo.data.key;
			
			moduleTable.add(id, moduleInfo);
			
			if(progress != null)
				PopUpManager.removePopUp(progress);
			
			var moduleData:Object = moduleInfo.data;
			
			var widgetBase:WidgetBase = moduleInfo.factory.create() as WidgetBase;
			widgetBase.widgetId = moduleData.key;
			widgetBase.widgetTitle = moduleData.name;
			widgetBase.config = moduleData.config;
			widgetBase.widgetContainer = moduleData.parent;
			widgetBase.isVisable = moduleData.isVisable;
			widgetBase.setWidthHeight(Number(moduleData.width),Number(moduleData.height));
			var wx:Number = Number(moduleData.x);
			var wy:Number = Number(moduleData.y);
			var wleft:String = moduleData.left;
			var wtop:String = moduleData.top;
			var wright:String = moduleData.right;
			var wbottom:String = moduleData.bottom;
			// if no X and Y both configured, use system X/Y for positioning
			if (wleft || wtop || wright || wbottom)
			{
				widgetBase.setRelativePosition(wleft, wright, wtop, wbottom);
			}
			else if (wx && wy)
			{
				widgetBase.setXYPosition(wx, wy);
			}
			
			if(moduleData.hasOwnProperty("parent") == false  && !(moduleData.parent is IVisualElementContainer))
			{
				Alert.show("没有为widget指定父容器,或者父容器不是容器IVisualElementContainer");
			}else if(moduleData.parent is IVisualElementContainer)
			{
				var isExist:Boolean = false;
				var element:IVisualElementContainer = (moduleData.parent as IVisualElementContainer);
				if(element != null)
				{
					//与其他模块切换互斥
					if(!(moduleData.hasOwnProperty("mutex") && moduleData.mutex == false))
					{
						var len:int = element.numElements;
						for (var i:int = 0; i < len; i++) 
						{
							var childElement:WidgetBase = element.getElementAt(i) as WidgetBase;
							//对添加进来的模块，控制是否需要设置其他模块可见，通过single控制,false为不需要移除其他模块
							if((!(["single"]  in moduleData) || moduleData["single"] == true) && childElement.widgetId != widgetBase.widgetId)
							{
								childElement.visible = false;
								childElement.includeInLayout = false;
								widgetBaseRemove(childElement);
							}
							if(childElement.widgetId == moduleData.key)
							{
								childElement.visible = true;
								childElement.includeInLayout = true;
								isExist = true;
								widgetBaseAdd(childElement);
							}
						}
					}
				}
				if(!isExist)
				{
					element.addElement(widgetBase);
				}
			}
			widgetTable.add(moduleData.key, widgetBase);
			//当前widget加载完成
			_preWidgetIsLoadComplate = true;
			widgetBase.addEventListener(FlexEvent.CREATION_COMPLETE,dispatchWidgetAddComplete);
			
			loadNextControl();
		}
		
		private function dispatchWidgetAddComplete(event:FlexEvent):void
		{
			var widgetBase:WidgetBase = event.currentTarget as WidgetBase;
			widgetBase.dispatchEvent(new BaseWidgetEvent(BaseWidgetEvent.WIDGET_ADD_COMPLETE));
		}
		
		private function setAutoXY():void
		{
			var widgetWidget:Number = 300;
			
			var siftUnit:Number = 20;
			
			if (_refX == 0)
			{
				_refX = siftUnit;
			}
			else
			{
				_refX = _refX + widgetWidget + 20;
			}
			
			if (_refY == 0)
			{
				_refY = Math.round(widgetWidget / 2);
			}
			
		}
		
		//Error
		private function widgetErrorHandler(event:ModuleEvent):void
		{
			if(progress != null)
			{
				PopUpManager.removePopUp(progress);
			}
			//code
			if(widgetInfo != null)
			{
				widgetInfo.unload();
				widgetInfo = null;
				clear();
			}
			_preWidgetIsLoadComplate = true;
			loadNextControl();
		}
		
		/**从WidgetManger移除指定的widget*/
		public function removeWidget(widgetKey:String):void
		{
			//移除moduleTable中存储的moduleInfo
			removerModuleTableModuleInfo(widgetKey);
			
			//移除widget ,包括从widgetTable 和widget.widgetContainer移除widget
			removerWidget(widgetKey);
		}
		
		/**根据传递的父容器，清除父容器内的module*/
		public function removeModuleFromContainer(parents:Array):void
		{
			for each(var parentContainer:IVisualElementContainer in parents)
			{
				if(parentContainer != null)
				{
					var len:int = parentContainer.numElements;
					for (var i:int = 0; i < len; i++) 
					{
						var childElement:WidgetBase = parentContainer.getElementAt(i) as WidgetBase;
						childElement.visible = false;
						childElement.includeInLayout = false;
						widgetBaseRemove(childElement);
					}
				}
			}
		}
		
		//移除moduleTable中指定Key的moduleInfo
		private function removerModuleTableModuleInfo(widgetKey:String):void
		{
			if(widgetKey == null)
				return ;
			if(moduleTable != null && moduleTable.size > 0 && moduleTable.containsKey(widgetKey))
			{
				moduleTable.remove(widgetKey);
			}
		}
		
		//移除widgetTable中指定Key的widget
		private function removerWidget(widgetKey:String):void
		{
			if(widgetKey == null)
				return ;
			if(widgetTable != null && widgetTable.size > 0  && widgetTable.containsKey(widgetKey))
			{
				var widget:WidgetBase = widgetTable.find(widgetKey);
				if(widget.widgetContainer != null)
				{
					widget.widgetContainer.removeElement(widget);
					widget.dispatchEvent( new BaseWidgetEvent(BaseWidgetEvent.WIDGET_REMOVE));
					widget = null;
				}
				widgetTable.remove(widgetKey);
			}
		}
		
		
		/**强制垃圾回收*/
		private function clear():void
		{
			//垃圾回收机强制调用
			try{
				new LocalConnection().connect("GC");
				new LocalConnection().connect("GC");
			}catch(error : Error)//这里的错误类型可以是*
			{
				//强制使用SWF文件出现错误，此时系统捕捉到错误，并执行一次垃圾回收
				//强制垃圾执行的原理就是如此，系统的垃圾回收发生的时间是无法确定的
			}
		}
		
		//运行Widget
		private function runWidget(widgetId:String):void
		{
			var widget:WidgetBase = createWidget(widgetId);
			openWidget(widget);
		}
		
		//打开Widget
		private function openWidget(widget:WidgetBase):void
		{
			loadControl(widget);
		}
		
		//创建Widget
		private function createWidget(widgetId:String):WidgetBase
		{
			//根据Id获取相关的参数
			var modInfo:IModuleInfo = moduleTable.find(widgetId) as IModuleInfo;
			if(modInfo != null)
			{
				var widget:WidgetBase = modInfo.factory.create() as WidgetBase;
				
				widget.widgetId = widgetId;
				
				widgetTable.add(widgetId, widget);
			}
			
			return widget;
		}
	}
}