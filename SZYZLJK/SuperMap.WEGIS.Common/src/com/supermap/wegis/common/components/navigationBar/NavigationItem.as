package com.supermap.wegis.common.components.navigationBar
{
	[SkinState("keepSelected")]
	
	import mx.core.InteractionMode;
	
	import spark.components.Button;
	
	public class NavigationItem extends Button
	{
		private var _key:String;
		private var _data:Object;
		private var _keepSelected:Boolean = false;

		/**参数*/
		public function get data():Object
		{
			return _data;
		}

		public function set data(value:Object):void
		{
			_data = value;
		}

		/**是否保持选择*/
		public function get keepSelected():Boolean
		{
			return _keepSelected;
		}
		
		public function set keepSelected(value:Boolean):void
		{
			_keepSelected = value;
		}
		
		/**清除选择状态*/
		public function clearSelected():void
		{
			this.keepSelected = false;
			this.invalidateSkinState();
		}
		
		/**获取项目Key*/
		public function get key():String
		{
			return _key;
		}
		
		/**设置项目Key*/
		public function set key(value:String):void
		{
			_key = value;
		}
		
		private function isDown():Boolean
		{
			if (!enabled)
				return false;
			
			if (keyboardPressed)
				return true;
			
			if (mouseCaptured && (hovered || stickyHighlighting))
				return true;
			
			return false;
		}
		
		override protected function getCurrentSkinState():String
		{
			if(_keepSelected)
				return "keepSelected";
			if (!enabled)
				return "disabled";
			
			if (isDown())
				return "down";
			
			// if interactionMode == InteractionMode.TOUCH, then we have no over state
			// if interactionMode == InteractionMode.MOUSE, then only go in to the over state if 
			// we are currently hovered or if someone pressed down on us 
			// and then rolled away (and stickyHighlighting is off--otherwise 
			// isDown() would have returned true)
			if (getStyle("interactionMode") === InteractionMode.MOUSE && (hovered || mouseCaptured))
				return "over";
			
			return "up";
		}
		
		public function NavigationItem()
		{
			super();
		}
	}
}