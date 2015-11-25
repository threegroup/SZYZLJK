package com.supermap.wegis.common.components.scrollPanel
{
	[SkinState("keepSelected")]
	
	import mx.core.InteractionMode;
	
	import spark.components.Button;
	
	public class ButtonItem extends Button
	{
		private var _key:String;
		private var _param:Object;
		
		private var _keepSelected:Boolean = false;
		public function get keepSelected():Boolean
		{
			return _keepSelected;
		}
		
		public function set keepSelected(value:Boolean):void
		{
			_keepSelected = value;
		}
		
		public function clearSelected():void
		{
			this.keepSelected = false;
			this.invalidateSkinState();
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
		
		public function ButtonItem()
		{
			super();
		}
		
		/**获取项目参数*/
		public function get param():Object
		{
			return _param;
		}
		
		/**设置项目参数*/
		public function set param(value:Object):void
		{
			_param = value;
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
	}
}