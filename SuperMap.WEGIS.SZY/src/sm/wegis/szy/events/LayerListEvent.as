package sm.wegis.szy.events
{
	import flash.events.Event;
	
	public class LayerListEvent extends Event
	{
		
		public static const LayerSelectedChange:String = "layerSelectedChange";
		public function LayerListEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
	}
}