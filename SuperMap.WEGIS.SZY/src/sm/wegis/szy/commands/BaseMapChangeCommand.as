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
	
	import widgets.basemap.BaseMapWidget;
	
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
			var baseMapLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer( ConstVO.BaseMapVectorLayerId) as TiledDynamicRESTLayerEx;
			if (baseMapLayer != null) {
				mapCtrl.removeLayer(baseMapLayer);
				baseMapLayer = null;
			}
			if (baseMapLayer == null) {
				baseMapLayer = new TiledDynamicRESTLayerEx();
				baseMapLayer.id = ConstVO.BaseMapVectorLayerId;
				baseMapLayer.layerType = 0
				baseMapLayer.layerIndex = 1;
				baseMapLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseMapLayer);
				//显示矢量底图
				switch(baseMapVO.baseMapSelectType) {
					case ConstVO.VectorType:
						baseMapLayer.url = modelLocator.baseMapInfo.baseVectorMapUrl;
						break;
					case ConstVO.ImageType:
						baseMapLayer.url = modelLocator.baseMapInfo.baseImageMapUrl;
						break;
					case ConstVO.DemType:
						baseMapLayer.url = modelLocator.baseMapInfo.baseDemMapUrl;
						break;
					default:
						baseMapLayer.url = modelLocator.baseMapInfo.baseVectorMapUrl;
						break;
				}
			}
			
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
				switch(baseMapVO.baseMapSelectType) {
					case ConstVO.VectorType:
						waterResourceLayer.url = modelLocator.baseMapInfo.waterResourceVectorMapUrl;
						break;
					case ConstVO.ImageType:
					case ConstVO.DemType:
						waterResourceLayer.url = modelLocator.baseMapInfo.waterResourceRasterMapUrl;
						break;
					default:
						waterResourceLayer.url = modelLocator.baseMapInfo.waterResourceVectorMapUrl;
						break;
				}
				mapCtrl.addLayer(waterResourceLayer);
			}
			mapCtrl.sortLayers();
			
			
			function mapLayerLoadHandler(event:MapEvent):void
			{
				mapCtrl.resolutions = resolutions;
			}
		}
		
	}
}