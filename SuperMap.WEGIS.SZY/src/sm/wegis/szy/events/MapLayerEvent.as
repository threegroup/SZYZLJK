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
		public static const BASE_MAP_CHANGE:String = "BaseMapChange";
		
		/**水体专题图显示控制*/
		public static const MAP_SERVICE_LAYER_ADD:String = "MapServiceLayerAdd";
		
		public static const  MAP_SERVICE_LAYER_REMOVE:String = "MapServiceLayerRemove";
		
		public static const Water_Resource_LayerId_Change:String = "WaterResourceLayerIdChange";
	}
}