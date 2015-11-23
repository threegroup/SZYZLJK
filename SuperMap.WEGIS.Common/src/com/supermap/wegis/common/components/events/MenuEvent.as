package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class MenuEvent extends Event
	{
		public static const MENU_CLICK:String = "MenuClick";
		public var Message:Object=null;
		public function MenuEvent(type:String, message:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.Message = message;
		}
		
		override public function clone():Event
		{
			return new MenuEvent(type, Message, bubbles, cancelable);
		}
	}
}