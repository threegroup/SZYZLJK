package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.utils.StringUtil;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.TiledDynamicRESTLayerEx;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.LayerInfo;
	
	public class WaterResourceLayerIdChangeCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var mapCtrl:MapCtrl = modelLocator.mapCtrl;
			var layerInfo:LayerInfo = event.data as LayerInfo;
			//最终layerIds构成，有[0: + basemapvo.waterResourceBaseLayerIds +layerInfo.layerIds+]构成
			var lastLayerIds:String = "[0:"; 
			if (StringUtil.trim(modelLocator.baseMapInfo.waterResourceBaseLayerIds).length == 0 ) {
				lastLayerIds = lastLayerIds +  layerInfo.layerIds +"]";
			} else {
				lastLayerIds = lastLayerIds + modelLocator.baseMapInfo.waterResourceBaseLayerIds + "," + layerInfo.layerIds +"]";
			}
			//水资源地图显示
			var waterResourceLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer(ConstVO.WaterResourceLayerId) as TiledDynamicRESTLayerEx;
			if (waterResourceLayer == null){
				waterResourceLayer = new TiledDynamicRESTLayerEx();
				waterResourceLayer.id = ConstVO.WaterResourceLayerId;
				waterResourceLayer.layerType = 1;
				waterResourceLayer.layerIndex = 1;
				waterResourceLayer.transparent = true;
				mapCtrl.addLayer(waterResourceLayer);
				mapCtrl.sortLayers();
			}
			waterResourceLayer.layersID = lastLayerIds;
			waterResourceLayer.refresh();
		}
	}
}