package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.mapping.FeaturesLayer;
	import com.supermap.wegis.common.action.MeasureAreaAction;
	import com.supermap.wegis.common.action.MeasureDistanceAction;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.WSMethod;
	
	public class ClearSystemCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var layer:FeaturesLayer = modelLocator.mapCtrl.getLayer(MeasureDistanceAction.MEASURE_DISTANCE_LAYER_NAME) as FeaturesLayer;
			if (layer != null) {
				layer.clear();
			}
			layer = modelLocator.mapCtrl.getLayer(MeasureAreaAction.MEASURE_AREA_LAYER_NAME)  as FeaturesLayer;
			if (layer != null) {
				layer.clear();
			}
		}
	}
}