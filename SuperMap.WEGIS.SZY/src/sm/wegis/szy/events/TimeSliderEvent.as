package sm.wegis.szy.events
{
	import flash.events.Event;
	
	public class TimeSliderEvent extends Event
	{
		public static const Change:String = "change";
		
		public var data:Object;
		public function TimeSliderEvent(type:String, data:Object =null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}