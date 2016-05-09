package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.events.MapEvent;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.TiledDynamicRESTLayerEx;
	
	import flash.events.Event;
	
	import mx.controls.Alert;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.vo.BaseMapVO;
	import sm.wegis.szy.vo.ConstVO;
	
	public class BaseMapChangeCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			if (modelLocator.baseMapInfo == null) {
				return;
			}
			var baseMapVO:BaseMapVO = modelLocator.baseMapInfo;
			var mapCtrl:MapCtrl = modelLocator.mapCtrl;
			var resolutions:Array;
			if (mapCtrl.resolutions.length > 1) {
				resolutions = mapCtrl.resolutions;
				mapCtrl.removeEventListener(MapEvent.LOAD, mapLayerLoadHandler);
				mapCtrl.addEventListener(MapEvent.LOAD, mapLayerLoadHandler);
			} else {
				Alert.show("地图比例尺异常","错误",Alert.OK);
			}
			
			//矢量底图
			var baseVectorLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer( ConstVO.BaseMapVectorLayerId) as TiledDynamicRESTLayerEx;
			if (baseVectorLayer == null) {
				baseVectorLayer = new TiledDynamicRESTLayerEx();
				baseVectorLayer.id = ConstVO.BaseMapVectorLayerId;
				baseVectorLayer.layerType = 0
				baseVectorLayer.layerIndex = 1;
				baseVectorLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseVectorLayer);
			}
			baseVectorLayer.visible = false;
			var baseImageLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer( ConstVO.BaseMapImageLayerId) as TiledDynamicRESTLayerEx;
			if (baseImageLayer == null) {
				baseImageLayer = new TiledDynamicRESTLayerEx();
				baseImageLayer.id = ConstVO.BaseMapImageLayerId;
				baseImageLayer.layerType = 0
				baseImageLayer.layerIndex = 1;
				baseImageLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseImageLayer);
			}
			baseImageLayer.visible = false;
			
			//水资源地图显示，必须先移除，再添加，不然地图不更新，iserver的bug
			var waterResourceLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer(ConstVO.WaterResourceLayerId) as TiledDynamicRESTLayerEx;
			if (waterResourceLayer != null) {
				mapCtrl.removeLayer(waterResourceLayer);
				waterResourceLayer = null;
			}
			
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
			mapCtrl.sortLayers();
			
			//显示矢量底图
			if (baseMapVO.baseMapState == ConstVO.VectorMapState) {
				baseVectorLayer.url = modelLocator.baseMapInfo.baseVectorMapUrl;
				baseVectorLayer.visible = true;
			} else {
				baseImageLayer.url = modelLocator.baseMapInfo.baseImageMapUrl;
				baseImageLayer.visible = true;
			}
			
			function mapLayerLoadHandler(event:MapEvent):void
			{
				mapCtrl.resolutions = resolutions;
			}
		}
		
	}
}