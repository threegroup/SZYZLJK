package sm.wegis.szy.events
{
	import flash.events.Event;
	
	public class DropDownPanelEvent extends Event
	{
		public static const SELECT_CHANGED:String = "selectChanged";
		
		public var data:Object;
		public function DropDownPanelEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}