package com.supermap.wegis.common.components.panel.dockPanel
{
	import com.supermap.wegis.common.skins.DockPanelSkin;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.core.FlexGlobals;
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
	
	[SkinState("open")]
	[SkinState("minimized")]
	public class DockPanel extends SkinnableContainer
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
		
		[Bindable]
		public var enableDraging:Boolean = true;
		
		[Bindable]
		public var widgetWidth:Number;
		
		[Bindable]
		public var widgetHeight:Number;
		
		[Embed(source="com/supermap/wegis/common/images/drag.png")]
		public var dragCursor:Class;
		
		[Bindable]
		public var enableIcon:Boolean = true;
		
		private static const WIDGET_OPENED:String = "open";
		private static const WIDGET_MINIMIZED:String = "minimized";
		
		private var _widgetId:Number;
		private var _widgetState:String = WIDGET_OPENED;
		private var _cursorID:int = 0;
		private var _widgetTitle:String = "";
		[Embed(source="com/supermap/wegis/common/images/widget.png")]
		private var _widgetIcon:Class;
		
		[Bindable]
		private var _draggable:Boolean = true;
		private var _move:Move = new Move(this);
		
		private var _isMinimizedDrag:Boolean = false;
		
		private var _isMinimizedMoveEffect:Boolean = false;
		
		//是否正在拖动
		private var _isDraging:Boolean = false;
		
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
		
		[Bindable]
		public function get widgetIcon():Class
		{
			return _widgetIcon;
		}
		
		public function set widgetIcon(value:Class):void
		{
			_widgetIcon = value;
		}
		[Bindable]
		public function get widgetTitle():String
		{
			return _widgetTitle;
		}
		
		public function set widgetTitle(value:String):void
		{
			_widgetTitle = value;
		}
		
		public function set widgetState(value:String):void
		{
			_widgetState = value;
			invalidateSkinState();
			
		}
		
		public function get widgetState():String
		{
			return _widgetState;
		}
		public function DockPanel()
		{
			super();
			
			this.setStyle("skinClass", DockPanelSkin);
			
			this.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler);
		}
		private function creationCompleteHandler(event:Event):void
		{
			widgetWidth = width;
			widgetHeight = height;
		}
		
		protected override function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			if (instance == icon)
			{
				icon.addEventListener(MouseEvent.CLICK, icon_clickHandler);
				icon.addEventListener(MouseEvent.MOUSE_DOWN, mouse_downHandler);
				icon.addEventListener(MouseEvent.MOUSE_UP, mouse_upHandler);
			}
		}
		
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
				
				this.alpha = 0.7;
				
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
			
			if (this.y < 0)
			{
				this.y = 0;
			}
			if (this.y > (appHeight - 40))
			{
				this.y = appHeight - 40;
			}
			if (this.x < 0)
			{
				this.x = 20;
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
		protected function icon_clickHandler(event:MouseEvent):void
		{
			if(!this._isDraging)
			{
				if(widgetState == WIDGET_OPENED)
				{
					widgetState = WIDGET_MINIMIZED;
					if(!isMinimizedDrag)
					{
						draggable = false;
					}
					
					if(isMinimizedMoveEffect)
					{
						_move.xTo  = this.parent.width - this.icon.width -20 ;
						_move.play();
					}
				}
				else
				{
					widgetState = WIDGET_OPENED;
					
					if(!isMinimizedDrag)
					{
						draggable = true;
					}
					
					if(isMinimizedMoveEffect)
					{
						_move.xTo  = this.parent.width - this.widgetWidth -10 ;
						_move.play();
					}
				}
			}
			this._isDraging = false;
		}
	}
}