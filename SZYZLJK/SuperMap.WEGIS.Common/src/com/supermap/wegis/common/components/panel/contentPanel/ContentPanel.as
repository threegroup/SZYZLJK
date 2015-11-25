package com.supermap.wegis.common.components.panel.contentPanel
{
	import com.supermap.wegis.common.components.button.CloseButton;
	import com.supermap.wegis.common.components.events.ContentEvent;
	import com.supermap.wegis.common.core.widget.WidgetBase;
	import com.supermap.wegis.common.skins.ContentPanelSkin;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.net.LocalConnection;
	
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;
	import mx.core.UIComponent;
	import mx.events.FlexEvent;
	import mx.managers.CursorManager;
	import mx.managers.DragManager;
	import mx.managers.PopUpManager;
	
	import spark.components.Group;
	import spark.components.Image;
	import spark.components.SkinnableContainer;
	import spark.effects.Move;
	
	//自定义事件
	[Event(name="open", type="flash.events.Event")]
	[Event(name="minimized", type="flash.events.Event")]
	[Event(name="closed", type="flash.events.Event")]
	[Event(name="selectedTitlebarButtonIndexChange",type="com.supermap.wegis.common.components.events.ContentEvent")]
	[Event(name="StateChange",type="com.supermap.wegis.common.components.events.ContentEvent")]
	//皮肤组件
	[SkinState("open")]
	[SkinState("minimized")]
	[SkinState("closed")]
	[Bindable]
	public class ContentPanel extends SkinnableContainer
	{
		//皮肤相关
		[SkinPart(required="false")]
		public var widgetFrame:Group;
		
		[SkinPart(required="false")]
		public var header:Group;
		
		[SkinPart(required="false")]
		public var headerToolGroup:Group;
		
		[SkinPart(required="false")]
		public var icon:Image;
		
		[SkinPart(required="false")]
		public var closeButton:CloseButton;
		
		[SkinPart(required="false")]
		public var minimizeButton:Image;
		
		[SkinPart(required="false")]
		public var resizeButton:Image;
		[SkinPart(required="false")]
		public var stateGroup:Group;

		[SkinPart(required="false")]
		public var floatGroup:Group;
		
		/**用于外部关闭当前窗口,事件名称*/
		public static const CLOSE_WINDOW:String = "CloseWindow";
		/**窗口状态*/
		public static const WIDGET_OPENED:String = "open";
		public static const WIDGET_MINIMIZED:String = "minimized";
		public static const WIDGET_CLOSED:String = "closed";
		
		public var enableCloseButton:Boolean = true;
		/**设置底部状态栏是否可见*/
		public var enableState:Boolean = false;
		public var enableMinimizeButton:Boolean = true;
		
		public var enableResizeButton:Boolean = true;
		
		public var enableDraging:Boolean = true;
		
		public var widgetWidth:Number;
		
		public var widgetHeight:Number;
		public var horizontalScrollPolicy:String = "auto"; 
		public var verticalScrollPolicy:String ="auto";
		private var floatChilds:Array;

		[Embed(source="com/supermap/wegis/common/images/resizeCursor.png")]
		public var resizeCursor:Class;
		
		[Embed(source="com/supermap/wegis/common/images/drag.png")]
		public var dragCursor:Class;
		[Embed(source="com/supermap/wegis/common/images/widget.png")]
		private var widgetPicture:Class;
		[Embed('com/supermap/wegis/common/images/resize.png')]
		public var resizeImage:Class;
		
		public var enableIcon:Boolean = true;
		private var _widgetId:Number;
		private var _widgetState:String = WIDGET_OPENED;
		private var _cursorID:int = 0;
		private var _widgetTitle:String = "";
		private var _widgetIcon:Object;
		public var closeFunction:Function = null;
		private var _draggable:Boolean = true;
		private var _resizable:Boolean = false;
		private var _move:Move = new Move(this);
		private var _minimizedWidth:Number = 100;
		private var _isMinimizedDrag:Boolean = false;
		private var _isMinimizedMoveEffect:Boolean = false;
		/**是否完全卸载,默认为false*/
		private var _unLoad:Boolean = false;
		//是否正在拖动
		private var _isDraging:Boolean = false;
		//记录面板初始宽度
		private var _originalWidth:Number = 0;
		
		private var _widgetBase:WidgetBase;
		private var _paddingTop:Number;
		private var _paddingBottom:Number;
		private var _paddingLeft:Number;
		private var _paddingRight:Number;
		private var _children:ArrayCollection ;
		private var _widgetTitleLength:int = 14;
		//底部状态栏显示的控件
		private var stateViewChild:Array=[];
		/**弹出面板显示标题的长度，默认长度为14*/
		public function get widgetTitleLength():int
		{
			return _widgetTitleLength;
		}
		
		public function set widgetTitleLength(value:int):void
		{
			_widgetTitleLength = value;
		}
		
		public function get children():ArrayCollection
		{
			return _children;
		}
		
		public function set children(value:ArrayCollection):void
		{
			_children = value;
		}
		
		public function get paddingRight():Number
		{
			return _paddingRight;
		}
		
		public function set paddingRight(value:Number):void
		{
			_paddingRight = value;
		}
		
		public function get paddingLeft():Number
		{
			return _paddingLeft;
		}
		
		public function set paddingLeft(value:Number):void
		{
			_paddingLeft = value;
		}
		
		public function get paddingBottom():Number
		{
			return _paddingBottom;
		}
		
		public function set paddingBottom(value:Number):void
		{
			_paddingBottom = value;
		}
		
		/**设置容器内部距离*/
		public function get paddingTop():Number
		{
			return _paddingTop;
		}
		
		/**
		 * @private
		 */
		public function set paddingTop(value:Number):void
		{
			_paddingTop = value;
		}
		
		/**是否完全卸载*/
		public function get unLoad():Boolean
		{
			return _unLoad;
		}
		
		/**是否完全卸载*/
		public function set unLoad(value:Boolean):void
		{
			if(value is Boolean && value)
				_unLoad = value;
			else
				_unLoad = false;
		}
		
		public function get baseWidget():WidgetBase
		{
			return _widgetBase;
		}
		
		/**最小化时项目宽度*/
		public function get minimizedWidth():Number
		{
			return _minimizedWidth;
		}
		
		public function set minimizedWidth(value:Number):void
		{
			_minimizedWidth = value;
		}
		
		/**是否启用最小化移动特效*/
		public function get isMinimizedMoveEffect():Boolean
		{
			return _isMinimizedMoveEffect;
		}
		
		public function set isMinimizedMoveEffect(value:Boolean):void
		{
			_isMinimizedMoveEffect = value;
		}
		
		/**是否启用最小化拖拽功能*/
		public function get isMinimizedDrag():Boolean
		{
			return _isMinimizedDrag;
		}
		
		public function set isMinimizedDrag(value:Boolean):void
		{
			_isMinimizedDrag = value;
		}
		
		/**关闭回调函数*/
		public var  closeHandler:Function = null;
		
		/**面板是否可以改变尺寸*/
		public function set resizable(value:Boolean):void
		{
			if (enableResizeButton)
			{
				_resizable = value;
				if(resizeButton)
				{
					resizeButton.visible = _resizable;	
				}
			}
		}
		
		
		public function get resizable():Boolean
		{
			return _resizable;
		}
		
		/**面板是否可以拖拽*/
		public function set draggable(value:Boolean):void
		{
			if (enableDraging)
			{
				_draggable = value;
			}
			else
			{
				_draggable = false;
			}
		}
		
		/**组件标题*/
		
		public function get widgetTitle():String
		{
			return _widgetTitle;
		}
		
		public function set widgetTitle(value:String):void
		{
			/*if(value != null && value.length > _widgetTitleLength)
			{
				value = value.substr(0,_widgetTitleLength - 1)+"...";
			}*/
			_widgetTitle = value;
		}
		
		/**组件图标*/
		
		public function get widgetIcon():Object
		{
			if(_widgetIcon == null)
			{
				return widgetPicture
			}
			return _widgetIcon;
		}
		
		public function set widgetIcon(value:Object):void
		{
			_widgetIcon = value;
		}
		
		/**组件状态*/
		public function set widgetState(value:String):void
		{
			_widgetState = value;
			if (_widgetState == WIDGET_MINIMIZED && this.widgetFrame !=null && icon !=null)
			{
				this.widgetFrame.toolTip = this.widgetTitle;
				this.icon.toolTip = this.widgetTitle;
			}else if(value == null)
			{
				_widgetState = WIDGET_OPENED;
				value = WIDGET_OPENED;
			}
			
			invalidateSkinState();
			
			var contentEvent:ContentEvent = new ContentEvent(ContentEvent.STATE_CHANGE,-1,-1,value,true);
			dispatchEvent(contentEvent);
		}
		
		public function get widgetState():String
		{
			return _widgetState;
		}
		
		private var _selectedTitlebarButtonIndex:int = -1;
		private var _selectedTitlebarButtonIndexChanged:Boolean = false;
		
		/**标题栏选中按钮索引*/
		public function get selectedTitlebarButtonIndex():int
		{
			return _selectedTitlebarButtonIndex;
		}
		
		public function set selectedTitlebarButtonIndex(value:int):void
		{
			if (_selectedTitlebarButtonIndex != value)
			{
				_selectedTitlebarButtonIndex = value;
				_selectedTitlebarButtonIndexChanged = true;
				invalidateProperties();
			}
		}
		
		public function ContentPanel()
		{
			super();
			
			this.setStyle("skinClass", ContentPanelSkin);
			
			//组件初始化完成
			this.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler);
			this.addEventListener(CLOSE_WINDOW,closeWindow,true);
			this.addEventListener(CLOSE_WINDOW,closeWindow);
		}
		
		private function creationCompleteHandler(event:Event):void
		{
			widgetWidth = width;
			widgetHeight = height;
			
			this.closeButton.toolTip = resourceManager.getString("ViewerStrings", "close");
			this.minimizeButton.toolTip = resourceManager.getString("ViewerStrings", "minimize");
			
			//this.alpha = 0.8;
			
			//添加底图状态栏按钮
			for each(var view:IVisualElement in stateViewChild)
			{
				stateGroup.addElement(view);
			}
		}
		
		/**隐藏关闭按钮*/
		public function hideCloseButton():void
		{
			if(this.closeButton != null)
			{
				this.closeButton.visible = false;
				this.closeButton.includeInLayout = false;
			}
		}
		
		/**显示关闭按钮*/
		public function showCloseButton():void
		{
			if(this.closeButton != null)
			{
				this.closeButton.visible = true;
				this.closeButton.includeInLayout = true;
			}
		}
		
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			if (instance == icon)
			{
				icon.addEventListener(MouseEvent.CLICK, icon_clickHandler);
				icon.addEventListener(MouseEvent.MOUSE_DOWN, mouse_downHandler);
				icon.addEventListener(MouseEvent.MOUSE_UP, mouse_upHandler);
			}
			if (instance == widgetFrame)
			{
				widgetFrame.addEventListener(MouseEvent.MOUSE_DOWN, mouse_downHandler);
				widgetFrame.addEventListener(MouseEvent.MOUSE_UP, mouse_upHandler);
				
			}
			if (instance == header)
			{
				header.addEventListener(MouseEvent.MOUSE_DOWN, mouse_downHandler);
				header.addEventListener(MouseEvent.MOUSE_UP, mouse_upHandler);
			}
			if (instance == closeButton)
			{
				closeButton.addEventListener(MouseEvent.CLICK, close_clickHandler);
			}
			if (instance == minimizeButton)
			{
				minimizeButton.addEventListener(MouseEvent.CLICK, minimize_clickHandler);
			}
			if (instance == resizeButton)
			{
				resizeButton.addEventListener(MouseEvent.MOUSE_OVER, resize_overHandler);
				resizeButton.addEventListener(MouseEvent.MOUSE_OUT, resize_outHandler);
				resizeButton.addEventListener(MouseEvent.MOUSE_DOWN, resize_downHandler);
			}
			if (instance == floatGroup)
			{
				for each(var child:UIComponent in floatChilds)
				{
					floatGroup.addElement(child);
				}
			}
		}
		
		/**在顶部面板中增加元素*/
		public function addTopGroup(visual:IVisualElement):void
		{
			header.addElement(visual);
		}
		
		/**获取皮肤状态*/
		override protected function getCurrentSkinState():String
		{
			return _widgetState;
		}
		
		public function mouse_downHandler(event:MouseEvent):void
		{
			if (_draggable && enableDraging)
			{
				//添加拖动状态光标
				CursorManager.setCursor(dragCursor);
				
				event.currentTarget.addEventListener(MouseEvent.MOUSE_MOVE, mouse_moveHandler);
				widgetFrame.addEventListener(MouseEvent.MOUSE_MOVE, mouse_moveHandler);
			}
		}
		
		private var widgetMoveStarted:Boolean = false;
		
		private function mouse_moveHandler(event:MouseEvent):void
		{
			if (!widgetMoveStarted)
			{
				widgetMoveStarted = true;
				
				this.alpha = 0.8;
				
				if (!DragManager.isDragging)
				{
					this.startDrag();
					this._isDraging = true;
				}
			}
		}
		
		private function mouse_upHandler(event:MouseEvent):void
		{
			if(event == null)
				return;
			event.currentTarget.removeEventListener(MouseEvent.MOUSE_MOVE, mouse_moveHandler);
			widgetFrame.removeEventListener(MouseEvent.MOUSE_MOVE, mouse_moveHandler);
			
			this.alpha = 1;
			
			this.stopDrag();
			
			//移除拖动状态光标
			CursorManager.removeAllCursors();
			
			var appHeight:Number = FlexGlobals.topLevelApplication.height;
			
			if (this.y > (appHeight - 20))
			{
				this.y = appHeight - 20;
			}
			
			if (this.x > (systemManager.stage.width - this.width ))
			{
				this.x = systemManager.stage.width - this.width ;
			}
			
			// clear constraints since x and y have been set
			this.left = this.right = this.top = this.bottom = undefined;
			
			widgetMoveStarted = false;
		}
		
		private function stageout_Handler(event:Event):void
		{
			if (widgetMoveStarted)
			{
				mouse_upHandler(null);
			}
		}
		
		private function notifyStateChanged(widgetState:String):void
		{
			var data:Object =
				{
					id: _widgetId,
					state: widgetState
				};
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
		
		private function close_clickHandler(event:MouseEvent):void
		{
			widgetState = WIDGET_CLOSED;
			//派发窗口关闭事件
			dispatchEvent(new Event(WIDGET_CLOSED));
			if(closeHandler != null)
			{
				closeHandler();
			}
			if(closeFunction != null)
			{
				closeFunction();
			}
			if(unLoad)
			{
				this.removeAllElements();
				var i:int = 0;
				if(this.parent is IVisualElementContainer)
				{
					for (i = 0;IVisualElementContainer(this.parent).numElements;i++)
					{
						if(IVisualElementContainer(this.parent).getElementIndex(this) != -1)
						{
							IVisualElementContainer(this.parent).removeElement(this);
							break;
						}
					}
				}else
				{
					if(this.parent!=null)
					{
						for (i = 0;this.parent.numChildren;i++)
						{
							if(this.parent.getChildIndex(this) != -1)
							{
								this.parent.removeChild(this);
								break;
							}
						}
					}
					//可能是弹出窗口
					PopUpManager.removePopUp(this);
				}
//				clear();
			}
		}
		
		/**关闭窗口*/
		public function closeWindow(event:Event =null):void
		{
			close_clickHandler(null);
		}
		
		public function addTitlebarButton(btnIcon:String, btnTip:String, btnFunction:Function, selectable:Boolean = true):void
		{
			var btn:TitlebarButton = new TitlebarButton();
			btn.callback = btnFunction;
			btn.selectable = selectable;
			btn.source = btnIcon;
			btn.toolTip = btnTip;
			
			if (selectable)
			{
				btn.addEventListener(MouseEvent.CLICK, titlebarButton_clickHandler);
				if (headerToolGroup.numElements == 0)
				{
					selectedTitlebarButtonIndex = 0; // automatically select the first button added
				}
			}
			
			headerToolGroup.addElement(btn);
		}
		
		public function addStateViewButton(child:IVisualElement):void
		{
			stateViewChild.push(child);
		}
		
		private function titlebarButton_clickHandler(event:MouseEvent):void
		{
			var oldIndex:int = selectedTitlebarButtonIndex;
			selectedTitlebarButtonIndex = headerToolGroup.getElementIndex(TitlebarButton(event.currentTarget));
			if(oldIndex != selectedTitlebarButtonIndex)
			{
				dispatchEvent(new ContentEvent(ContentEvent.SELECTED_TITLEBAR_BUTTON_INDEX_CHANGE,selectedTitlebarButtonIndex,oldIndex));
			}
		}
		
		protected function minimize_clickHandler(event:MouseEvent):void
		{
			widgetState = WIDGET_MINIMIZED;
			
			this.widgetFrame.toolTip = this.widgetTitle;
			this.icon.toolTip = this.widgetTitle;
			this.icon.source = this.widgetIcon;
			
			this._originalWidth = this.width;
			this.width = this.minimizedWidth;
			
			if(!isMinimizedDrag)
			{
				draggable = false;
			}
			
			if(isMinimizedMoveEffect)
			{
				_move.xTo = this.parent.width -  this.minimizedWidth - 10;
				_move.play();
			}
		}
		
		protected function icon_clickHandler(event:MouseEvent):void
		{
			if(!this._isDraging && widgetState == WIDGET_MINIMIZED)
			{
				widgetState = WIDGET_OPENED;
				
				this.widgetFrame.toolTip = "";
				this.icon.toolTip = "";
				
				this.width = this._originalWidth;
				
				if(!isMinimizedDrag)
				{
					draggable = true;
				}
				
				if(isMinimizedMoveEffect)
				{
					_move.xTo  = this.parent.width - this.width -10 ;
					_move.play();
				}
			}
			this._isDraging = false;
		}
		
		private function resize_overHandler(event:MouseEvent):void
		{
			_cursorID = CursorManager.setCursor(resizeCursor, 2, -10, -10);
		}
		
		private function resize_outHandler(event:MouseEvent):void
		{
			CursorManager.removeCursor(_cursorID);
		}
		
		private function resize_downHandler(event:MouseEvent):void
		{
			if (_resizable && this.enableResizeButton)
			{
				/*TODO: for now, it can't be resized when is not basic layout*/
				stage.addEventListener(MouseEvent.MOUSE_MOVE, resize_moveHandler);
				stage.addEventListener(MouseEvent.MOUSE_UP, resize_upHandler);
			}
		}
		
		private function resize_moveHandler(event:MouseEvent):void
		{
			// if there is minWidth and minHeight specified on the container, use them while resizing
			const minimumResizeWidth:Number = minWidth ? minWidth : 200;
			const minimumResizeHeight:Number = minHeight ? minHeight : 140;
			var p:Point = this.parent.localToGlobal(new Point(this.x ,this.y));
			width = (stage.mouseX -  p.x);
			height = (stage.mouseY - p.y);
			if(width <= minimumResizeWidth)
			{
				width = minimumResizeWidth;
			}
			
			if(height <= minimumResizeHeight)
			{
				height = minimumResizeHeight;
			}
		}
		
			public function addToFloatGroup(child:UIComponent):void
		{
			if(floatChilds == null)
			{
				floatChilds = [];
			}
			floatChilds.push(child);
		}
		private function resize_upHandler(event:MouseEvent):void
		{
			widgetWidth = width;
			widgetHeight = height;
			
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, resize_moveHandler);
			stage.removeEventListener(MouseEvent.MOUSE_UP, resize_upHandler);
			
			var p:UIComponent = this as UIComponent;
			p.stopDrag();
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			
			if (_selectedTitlebarButtonIndexChanged)
			{
				_selectedTitlebarButtonIndexChanged = false;
				for (var i:int = 0, n:int = headerToolGroup.numElements; i < n; i++)
				{
					var btn:TitlebarButton = TitlebarButton(headerToolGroup.getElementAt(i));
					if (i == _selectedTitlebarButtonIndex)
					{
						btn.selected = true;
					}
					else
					{
						btn.selected = false;
					}
				}
			}
		}
	}
}