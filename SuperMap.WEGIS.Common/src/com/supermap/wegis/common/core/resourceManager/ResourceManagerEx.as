//IVoyager资源管理类
//bmliang-2012年3月5日

package com.supermap.wegis.common.core.resourceManager
{
	import com.supermap.wegis.common.components.security.SecurityControler;
	import com.supermap.wegis.common.components.toolBar.ToolItem;
	
	import flash.display.DisplayObject;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.core.UIComponent;
	
	import spark.components.Button;
	import spark.components.Image;
	
	
	public class ResourceManagerEx
	{
		/**资源列表*/
		public static var ResourceList:Array = new Array();
		
		public function ResourceManagerEx()
		{
		}
		
		/**检查资源是否存在*/
		public static function CheckResourceExist(resinfo:ResourceInfo):Boolean
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				var index:int = ResourceList.indexOf(resinfo);
				if(index > -1)
					return true;
			}
			return false;
		}
		
		/**注册系统资源*/
		public static function RegisterResource(name:String="", key:String="", cls:Class=null):void
		{
			var resinfo:ResourceInfo = new ResourceInfo();
			resinfo.key = key;
			resinfo.name = name;
			resinfo.cls = cls;
			ResourceManagerEx.AddResource(resinfo);
		}
		
		/**增加资源*/
		public static function AddResource(resinfo:ResourceInfo):void
		{
			if(ResourceList != null || resinfo != null)
			{
				ResourceList.push(resinfo);
			}
		}
		
		/**查找资源*/
		public static function FindResource(reskey:String):ResourceInfo
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				for (var i:int = 0; i < ResourceList.length; i++) 
				{
					var resinfo:ResourceInfo = ResourceList[i] as ResourceInfo;
					if(resinfo != null &&　resinfo.key === reskey)
					{
						return resinfo;
					}
				}
				
			}
			return null;
		}
		
		/**查找资源*/
		public static function GetResourceIndex(reskey:String):int
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				for (var i:int = 0; i < ResourceList.length; i++) 
				{
					var resinfo:ResourceInfo = ResourceList[i] as ResourceInfo;
					if(resinfo != null &&　resinfo.key === reskey)
					{
						return i;
					}
				}
				
			}
			return -1;
		}
		
		/**编辑资源*/
		public static function EditResource(reskey:String, resname:String, rescls:Class):void
		{
			var index:int = GetResourceIndex(reskey);
			if(index != -1)
			{
				var resinfo:ResourceInfo = new ResourceInfo();
				resinfo.name = resname;
				resinfo.cls = rescls;
				ResourceList[index] = resinfo;
			}
		}
		
		/**删除资源*/
		public static function DeleteResource(resinfo:ResourceInfo):void
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				var index:int = ResourceList.indexOf(resinfo);
				if(index != -1)
					ResourceList.splice(index, 1);
			}
		}
		
		/**删除资源*/
		public static function DeleteResourceEx(reskey:String):void
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				for (var i:int = 0; i < ResourceList.length; i++) 
				{
					var resinfo:ResourceInfo = ResourceList[i] as ResourceInfo;
					if(resinfo != null && resinfo.key === reskey)
					{
						ResourceList.splice(i, 1);
						break;
					}
				}
			}
		}
		
		/**清空资源*/
		public static function ClearResource():void
		{
			ResourceList = null;
			ResourceList = new Array();
		}
		
		/**客户端界面显示元素列表，数组项为DisplayInfo对象*/
		public static var DisplayList:Array = new Array();
		
		/**添加显示对象到列表中*/
		public static function AddDisplayInfoToList(display:DisplayInfo):void
		{
			if(DisplayList != null && display != null)
			{
				DisplayList.push(display);
				var data:Object=null;
				data = display.display.data;
				
				if(data != null)
				{
					//根据配置文件，判断是否对改控件添加权限控制
					if(data.hasOwnProperty("securitycontroler") 
						&& data.securitycontroler 
						&& display.display is UIComponent)
					{
						//如果没有配置data.securitytype，则默认为enabled控制类型
						if(data.hasOwnProperty("securitytype") && data.securitytype != null)
						{
							if(data.securitytype == "enabled" || data.securitytype == "visible")
								SecurityControler.addSecurityAction(display.display as UIComponent, display.key, data.securitytype);
							else 
								SecurityControler.addSecurityAction(display.display as UIComponent, display.key, "enabled");
						}
						else 
							SecurityControler.addSecurityAction(display.display as UIComponent,  display.key, "enabled");
					}
				}
			}
		}
		
		/**查找显示对象*/
		public static function FindDisplayInfoByKey(key:String):DisplayInfo
		{
			if(DisplayList != null && DisplayList.length > 0)
			{
				for (var i:int = 0; i < DisplayList.length; i++) 
				{
					var disitem:DisplayInfo = DisplayList[i] as DisplayInfo;
					if(disitem != null && disitem.key === key)
					{
						return disitem;
					}
				}
			}
			return null;
		}
		
		/**删除显示对象*/
		public static function DeleteDisplayObject(display:DisplayInfo):void
		{
			if(ResourceList != null && ResourceList.length > 0)
			{
				var index:int = DisplayList.indexOf(display);
				if(index != -1)
					DisplayList.splice(index, 1);
			}
		}
		
		
		/**清空显示列表*/
		public static function ClearDisplayList():void
		{
			DisplayList = null;
			DisplayList = new Array();
		}
		
		/**将资源添加到显示列表*/
		public static function AddResourceToDisplayList(key:String, object:DisplayObject):void
		{
			if(key != "" && object != null)
			{
				var exist:DisplayInfo = FindDisplayInfoByKey(key);
				if(exist != null)
					return;
				
				//添加到显示列表中
				var disinfo:DisplayInfo = new DisplayInfo();
				disinfo.key = key;
				disinfo.display = object;
				ResourceManagerEx.AddDisplayInfoToList(disinfo);
				
				//查找Key对应的图标并显示
				var resinfo:ResourceInfo = ResourceManagerEx.FindResource(disinfo.key);
				if(resinfo != null)
				{
					if(disinfo.display is Button)
					{
						(disinfo.display as Button).setStyle("icon", resinfo.cls);
					}
					else if(disinfo.display is Image)
					{
						(disinfo.display as Image).source = resinfo.cls;
					}
				}
			}
		}
		
		
		/**更新所有图标*/
		public static function updateIconByKey(key:String):void
		{
			if(key == null)
				return;
			//执行图标赋值操作
			var disinfo:DisplayInfo = ResourceManagerEx.FindDisplayInfoByKey(key);
			if(disinfo != null)
			{
				var resinfo:ResourceInfo = ResourceManagerEx.FindResource(disinfo.key);
				if(resinfo != null)
				{
					if(disinfo.display is ToolItem)
					{
						(disinfo.display as ToolItem).setStyle("preImage", resinfo.cls);
					}
					else if(disinfo.display is Button)
					{
						(disinfo.display as Button).setStyle("icon", resinfo.cls);
					}else if(disinfo.display is Image)
					{
						(disinfo.display as Image).source = resinfo.cls;
					}
				}
			}
		}
		
		/**更新所有图标*/
		public static function updateAllIcons():void
		{
			//等待500ms之后再执行
			var timer:Timer = new Timer(500, 1);
			timer.addEventListener(TimerEvent.TIMER, deferredMethod);
			timer.start();
		}
		
		private static function deferredMethod(event:TimerEvent):void
		{
			//执行图标赋值操作
			if(ResourceManagerEx.DisplayList != null && ResourceManagerEx.DisplayList.length > 0)
			{
				for(var i:int=0; i < ResourceManagerEx.DisplayList.length; i++)
				{
					var disinfo:DisplayInfo = ResourceManagerEx.DisplayList[i] as DisplayInfo;
					if(disinfo != null)
					{
						var resinfo:ResourceInfo = ResourceManagerEx.FindResource(disinfo.key);
						if(resinfo != null)
						{
							if(disinfo.display is ToolItem)
							{
								(disinfo.display as ToolItem).setStyle("preImage", resinfo.cls);
							}
							else if(disinfo.display is Button)
							{
								(disinfo.display as Button).setStyle("icon", resinfo.cls);
							}else if(disinfo.display is Image)
							{
								(disinfo.display as Image).source = resinfo.cls;
							}
						}
					}
				}
			}
		}
	}
}