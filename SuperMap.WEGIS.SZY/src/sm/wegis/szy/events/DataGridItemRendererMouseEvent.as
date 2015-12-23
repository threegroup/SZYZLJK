package sm.wegis.szy.events
{
	import flash.events.Event;
	
	public class DataGridItemRendererMouseEvent extends Event
	{
		public static const ROLLOVER:String = "rollOverEvent";
		public static const ROLLOUT:String = "rollOutEvent";
		public var rowIndex:int;
		public function DataGridItemRendererMouseEvent(type:String, rowIndex:int, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.rowIndex = rowIndex;
		}
	}
}