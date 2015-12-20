package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;
	
	public class ToolItemEvent extends CairngormEvent
	{
		/**系统工具*/
		public static const MAP_TOOL_ITEM_CLICK:String = "MapToolItemClick";

		public function ToolItemEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new ToolItemEvent(type, bubbles, cancelable);
		}
	}
}