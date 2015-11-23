package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ScrollPanelEvent extends Event
	{
		public static const CLICK:String = "ScrollPanelClick";
		public var Message:Object=null;
		public function ScrollPanelEvent(type:String, message:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.Message = message;
		}
		
		override public function clone():Event
		{
			return new ScrollPanelEvent(type, Message, bubbles, cancelable);
		}
	}
}