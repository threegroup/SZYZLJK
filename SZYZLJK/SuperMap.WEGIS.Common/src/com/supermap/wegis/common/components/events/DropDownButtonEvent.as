package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class DropDownButtonEvent extends Event
	{
		/**按钮点击事件*/
		public static const CLICK:String = "DropDownButtonClick";
		/**菜单项目点击事件*/
		public static const MENU_CLICK:String = "DropDownMenuClick";
		
		public var Message:Object=null;
		public function DropDownButtonEvent(type:String, message:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			this.Message = message;
		}
		
		override public function clone():Event
		{
			return new DropDownButtonEvent(type, Message, bubbles, cancelable);
		}
	}
}