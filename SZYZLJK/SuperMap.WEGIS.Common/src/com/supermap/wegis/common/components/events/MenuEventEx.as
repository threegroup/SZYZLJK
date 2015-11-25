package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class MenuEventEx extends Event
	{
		public static const MENU_CLICK:String = "MenuClick";
		public static const MENU_ITEM_VISIBLE_CHANGED:String = "MenuItemVisibleChanged";
		public var Message:Object=null;
		public function MenuEventEx(type:String, message:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.Message = message;
		}
		
		override public function clone():Event
		{
			return new MenuEventEx(type, Message, bubbles, cancelable);
		}
	}
}