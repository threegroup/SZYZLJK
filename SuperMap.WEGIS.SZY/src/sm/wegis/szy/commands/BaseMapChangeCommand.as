package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
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
			var baseMapVO:BaseMapVO = event.data as BaseMapVO;
			var mapCtrl:MapCtrl = modelLocator.mapCtrl;
			//底图和注记两个图层
			var baseLayer:TiledWMTSLayerEx = mapCtrl.getLayer( ConstVO.baseMapLayerId) as TiledWMTSLayerEx;
			var baseLabelLayer:TiledWMTSLayerEx = mapCtrl.getLayer( ConstVO.baseMapLabelLayerId) as TiledWMTSLayerEx;
			if (baseLayer == null) {
				baseLayer = new TiledWMTSLayerEx();
				baseLayer.id = ConstVO.baseMapLayerId;
				baseLayer.layerType = 0
				baseLayer.layerIndex = 1;
				baseLayer.bounds = modelLocator.systemInfo.layerBounds;
				
				baseLabelLayer = new TiledWMTSLayerEx();
				baseLabelLayer.id = ConstVO.baseMapLabelLayerId;
				baseLabelLayer.layerType = 4;
				baseLabelLayer.layerIndex = 1;
				baseLabelLayer.bounds = modelLocator.systemInfo.layerBounds;
				mapCtrl.addLayer(baseLayer, 0);
				mapCtrl.addLayer(baseLabelLayer);
				mapCtrl.viewEntire();
				mapCtrl.sortLayers();
			}
			//显示矢量底图
			if (baseMapVO.baseMapState == ConstVO.vectorMapState) {
				baseLayer.url = Property.getDefaultProperty("TDTVector");
				baseLabelLayer.url =  Property.getDefaultProperty("TDTVectorLabel");
			} else {
				baseLayer.url = Property.getDefaultProperty("TDTImage");
				baseLabelLayer.url =  Property.getDefaultProperty("TDTImageLabel");
			}
		}
	}
}