package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ToolEvent extends Event
	{
		public static const TOOL_CLICK:String = "ToolClick";
		public static const TOOL_OVER:String = "ToolOver";
		public static const TOOL_OUT:String = "ToolOut";
		public var Message:Object=null;
		public function ToolEvent(type:String, message:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.Message = message;
		}
		
		override public function clone():Event
		{
			return new ToolEvent(type, Message, bubbles, cancelable);
		}
	}
}