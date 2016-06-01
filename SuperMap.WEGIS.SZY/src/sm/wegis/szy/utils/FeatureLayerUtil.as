package sm.wegis.szy.utils
{
	import com.supermap.web.core.styles.TextStyle;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.text.TextFormat;
	
	import mx.controls.Text;
	import mx.styles.StyleManager;

	public class FeatureLayerUtil
	{
		public function FeatureLayerUtil()
		{
		}
		
		public static function getFeatureLayerById(layerId:String, map:MapCtrl, layerType:int = -1, layerIndex:int = -1):FeaturesLayerEx
		{
			var featureLayer:FeaturesLayerEx = map.getLayer(layerId) as FeaturesLayerEx;
			if (featureLayer == null) {
				featureLayer = new FeaturesLayerEx();
				featureLayer.id = layerId;
				map.addLayer(featureLayer);
			} else{
				if(!featureLayer.visible)
				{
					featureLayer.visible = true;
				}
			}
			if (layerType != -1 ) {
				featureLayer.layerType = layerType;
				if (layerIndex != -1) {
					featureLayer.layerIndex = layerIndex;
				}
			}
			map.sortLayers();
			return featureLayer;
		}
		
		public static function getTextStyle(text:String):TextStyle
		{
			var textFormat:TextFormat = new TextFormat("宋体",13);
			return new TextStyle(text, 0xFFFFFF, true, 0xFFFFFF, true, 0x3D4852, 0, TextStyle.PLACEMENT_BOTTOM,0,0,null,textFormat);
		}
	}
}