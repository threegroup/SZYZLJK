package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class WidgetStateEvent extends Event
	{
		public static const STATE_CHANGE_EVENT:String = "StateChangeEvent";
		public var data:Object;
		public function WidgetStateEvent(type:String,data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}