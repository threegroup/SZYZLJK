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
			var lastLayerIds:String = ""; 
			if (StringUtil.trim(modelLocator.baseMapInfo.waterResourceBaseLayerIds).length == 0 ) {
				lastLayerIds = lastLayerIds +  layerInfo.layerIds;
			} else {
				lastLayerIds = lastLayerIds + modelLocator.baseMapInfo.waterResourceBaseLayerIds + "," + layerInfo.layerIds;
			}
			var layerIds:Array = lastLayerIds.split(",").sort(compareFunction, Array.NUMERIC);
			lastLayerIds = layerIds.join(",");
			lastLayerIds = "[0:"+lastLayerIds+"]";
			modelLocator.systemInfo.lastLayerIds = lastLayerIds;
			//水资源地图显示
			var waterResourceLayer:TiledDynamicRESTLayerEx = mapCtrl.getLayer(ConstVO.WaterResourceLayerId) as TiledDynamicRESTLayerEx;
			if (waterResourceLayer != null){
				waterResourceLayer.layersID = lastLayerIds;
				waterResourceLayer.refresh();
			}
		}
		private  function compareFunction(a:String,b:String):int
		{
			var left:Number = Number(a);
			var right:Number = Number(b);
			if (left < right){
				return -1; //a在前,b在后
			}else if(left == right){
				return 0; //ab位置不变
			}else{
				return 1; //b在前,a在后
			}
		}
	}
}