package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.TiledDynamicRESTLayerEx;
	import com.supermap.wegis.common.mappingEx.TiledWMTSLayerEx;
	import com.supermap.wegis.common.utils.Property;
	
	import org.springextensions.actionscript.collections.Properties;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.BaseMapVO;
	import sm.wegis.szy.vo.ConstVO;
	
	public class BaseMapChangeCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			if (modelLocator.systemInfo.baseMap == null) {
				return;
			}
			var baseMapVO:BaseMapVO = modelLocator.systemInfo.baseMap;
			var mapCtrl:MapCtrl = modelLocator.mapCtrl;
			//底图和注记两个图层
			var baseLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer( ConstVO.BaseMapLayerId) as TiledDynamicRESTLayerEx;
//			var baseLabelLayer:TiledWMTSLayerEx = mapCtrl.getLayer( ConstVO.BaseMapLabelLayerId) as TiledWMTSLayerEx;
			//天地图地图和注记图层
			if (baseLayer == null) {
				baseLayer = new TiledDynamicRESTLayerEx();
				baseLayer.id = ConstVO.BaseMapLayerId;
				baseLayer.layerType = 0
				baseLayer.layerIndex = 1;
				baseLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseLayer);
			}
			
//			if( baseLabelLayer == null) {
//				baseLabelLayer = new TiledWMTSLayerEx();
//				baseLabelLayer.id = ConstVO.BaseMapLabelLayerId;
//				baseLabelLayer.layerType = 4;
//				baseLabelLayer.layerIndex = 1;
//				baseLabelLayer.bounds = modelLocator.systemInfo.layerBounds;
//				mapCtrl.addLayer(baseLabelLayer);
//				mapCtrl.viewEntire();
//			}
//			
			//水资源地图显示
			var waterResourceLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer(ConstVO.WaterResourceLayerId) as TiledDynamicRESTLayerEx;
			if (waterResourceLayer != null) {
				mapCtrl.removeLayer(waterResourceLayer);
				waterResourceLayer = null;
			}
			
//			var waterResourceMaskLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer(ConstVO.WaterResourceMaskLayerId) as TiledDynamicRESTLayerEx;
//			if (waterResourceMaskLayer != null) {
//				mapCtrl.removeLayer(waterResourceMaskLayer);
//				waterResourceMaskLayer = null;
//			}
			
			if (modelLocator.baseMapInfo.waterResourceVectorMapUrl != null && modelLocator.baseMapInfo.waterResourceRasterMapUrl != null){
				waterResourceLayer = new TiledDynamicRESTLayerEx();
				waterResourceLayer.id = ConstVO.WaterResourceLayerId;
				waterResourceLayer.layerType = 1;
				waterResourceLayer.layerIndex = 1;
				waterResourceLayer.transparent = true;
				waterResourceLayer.layersID = modelLocator.systemInfo.lastLayerIds;
				if (baseMapVO.baseMapState == ConstVO.VectorMapState) {
					waterResourceLayer.url = modelLocator.baseMapInfo.waterResourceVectorMapUrl;
				} else {
					waterResourceLayer.url = modelLocator.baseMapInfo.waterResourceRasterMapUrl;
				}
				mapCtrl.addLayer(waterResourceLayer);
			}
			
//			if (modelLocator.baseMapInfo.waterResourceMaskVectorMapUrl != null && modelLocator.baseMapInfo.waterResourceMaskRasterMapUrl != null){
//				waterResourceMaskLayer = new TiledDynamicRESTLayerEx();
//				waterResourceMaskLayer.id = ConstVO.WaterResourceMaskLayerId;
//				waterResourceMaskLayer.layerType = 0;
//				waterResourceMaskLayer.layerIndex = 2;
//				waterResourceMaskLayer.transparent = true;
//				if (baseMapVO.baseMapState == ConstVO.VectorMapState) {
//					waterResourceMaskLayer.url = modelLocator.baseMapInfo.waterResourceMaskVectorMapUrl;
//				} else {
//					waterResourceMaskLayer.url = modelLocator.baseMapInfo.waterResourceMaskRasterMapUrl;
//				}
//				mapCtrl.addLayer(waterResourceMaskLayer);
//			}
			
			mapCtrl.sortLayers();
			
			//显示矢量底图
			if (baseMapVO.baseMapState == ConstVO.VectorMapState) {
				baseLayer.url = modelLocator.baseMapInfo.vectorMap;
//				baseLabelLayer.url = modelLocator.baseMapInfo.tdtVectorLabel;
			} else {
				baseLayer.url = modelLocator.baseMapInfo.imageMap;
//				baseLabelLayer.url = modelLocator.baseMapInfo.tdtImageLabel;
			}
		}
	}
}