package sm.wegis.szy.utils
{
	import com.supermap.web.core.styles.TextStyle;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import mx.controls.Text;

	public class FeatureLayerUtil
	{
		public function FeatureLayerUtil()
		{
		}
		
		public static function getFeatureLayerById(layerId:String, map:MapCtrl):FeaturesLayerEx
		{
			var featureLayer:FeaturesLayerEx = map.getLayer(layerId) as FeaturesLayerEx;
			if (featureLayer == null) {
				featureLayer = new FeaturesLayerEx();
				featureLayer.id = layerId;
				map.addLayer(featureLayer);
			} else{
				map.moveLayer(layerId,map.layerIds.length-1);
				if(!featureLayer.visible)
				{
					featureLayer.visible = true;
				}
			}
			return featureLayer;
		}
		
		public static function getTextStyle(text:String):TextStyle
		{
			return new TextStyle(text, 0xFFFFFF, true, 0xFFFFFF, true, 0x979797, 0, TextStyle.PLACEMENT_BOTTOM);
		}
	}
}