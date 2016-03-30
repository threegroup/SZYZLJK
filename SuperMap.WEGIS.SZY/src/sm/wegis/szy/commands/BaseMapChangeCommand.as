package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.TiledDynamicRESTLayerEx;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
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
			
			var baseLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer( ConstVO.BaseMapLayerId) as TiledDynamicRESTLayerEx;
			//子系统基础地图
			if (baseLayer == null) {
				baseLayer = new TiledDynamicRESTLayerEx();
				baseLayer.id = ConstVO.BaseMapLayerId;
				baseLayer.layerType = 0
				baseLayer.layerIndex = 1;
				baseLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseLayer);
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
				baseLayer.url = modelLocator.baseMapInfo.baseVectorMapUrl;
			} else {
				baseLayer.url = modelLocator.baseMapInfo.baseImageMapUrl;
			}
		}
	}
}