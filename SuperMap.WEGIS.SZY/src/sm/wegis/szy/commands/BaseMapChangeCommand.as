package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.TiledTDTLayer;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.BaseMapVO;
	import sm.wegis.szy.vo.ConstVO;
	
	public class BaseMapChangeCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var baseMapVO:BaseMapVO = event.data as BaseMapVO;
			var mapCtrl:MapCtrl = modelLocator.mapCtrl;
			//底图和注记两个图层
			var baseLayer:TiledTDTLayer = mapCtrl.getLayer( ConstVO.baseMapLayerId);
			if (baseLayer == null) {
				baseLayer = new TiledTDTLayer();
				mapCtrl.addLayer(baseLayer, 0);
			}
			var baseLabelLayer:TiledTDTLayer = mapCtrl.getLayer( ConstVO.baseMapLabelLayerId);
			if (baseLabelLayer == null) {
				baseLabelLayer = new TiledTDTLayer();
				baseLabelLayer.isLabel = true;
				mapCtrl.addLayer(baseLayer, 1);
			}
			//显示矢量底图
			if (baseMapVO.baseMapState == ConstVO.vectorMapState) {
				baseLabelLayer.layerType = baseLayer.layerType = TiledTDTLayer.vec;
			} else {
				baseLabelLayer.layerType = baseLayer.layerType = TiledTDTLayer.img;
			}
		}
	}
}