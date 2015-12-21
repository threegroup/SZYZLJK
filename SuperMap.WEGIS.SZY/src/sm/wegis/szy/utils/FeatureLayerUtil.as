package sm.wegis.szy.utils
{
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;

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
			}
			return featureLayer;
		}
	}
}