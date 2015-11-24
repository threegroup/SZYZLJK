package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class MapLayerEvent extends CairngormEvent
	{
		public function MapLayerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		/**底图显示，底图切换显示*/
		public static const BASE_MAP_CHANGE_COMMAND:String = "BaseMapChangeCommand";
		
	}
}