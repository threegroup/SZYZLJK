package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ContainerEvent extends Event
	{
		public static const ContainerEventName:String = "SHOWCONTAINER";
		public var ContainerKey:String = "";
		public function ContainerEvent(type:String, value:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.ContainerKey = value;
		}
	}
}