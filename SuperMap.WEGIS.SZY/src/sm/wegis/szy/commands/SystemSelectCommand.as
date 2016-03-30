package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.wegis.common.core.hashTable.HashTable;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	
	//选择应用系统，切换应用系统
	public class SystemSelectCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			if( modelLocator.systemInfo.subSystemMapID != null) {
				var subMapID:String = modelLocator.systemInfo.subSystemMapID;
				var systemParams:HashTable = modelLocator.systemInfo.systemParams;
				if (systemParams.find(subMapID) != null) {
					var systemParam:Object = systemParams.find(subMapID) as Object;
					
					//设置各子系统基础地图，矢量、影像地图地址
					modelLocator.baseMapInfo.baseVectorMapUrl = systemParam.baseVectorMapUrl;
					modelLocator.baseMapInfo.baseVectorMapUrl = systemParam.baseImageMapUrl;
					
					//设置应用系统矢量，影像水利专题地图服务地址
					modelLocator.baseMapInfo.waterResourceVectorMapUrl = systemParam.vectorMapUrl;
					modelLocator.baseMapInfo.waterResourceRasterMapUrl = systemParam.rasterMapUrl;
					
					var mapLayerEvent:MapLayerEvent = new MapLayerEvent(MapLayerEvent.BASE_MAP_CHANGE);
					mapLayerEvent.dispatch();
					
					//设置专题地图基础layerIds
					modelLocator.baseMapInfo.waterResourceBaseLayerIds = systemParam.baseLayerId.layerIds;
					
					//设置应用系统显示范围
					var viewBoundStr:String = systemParam.viewBounds;
					var viewBoundsArr:Array = viewBoundStr.split(","); 
					var viewBounds:Rectangle2D = new Rectangle2D(viewBoundsArr[0], viewBoundsArr[1], viewBoundsArr[2], viewBoundsArr[3]);
					modelLocator.mapCtrl.viewBoundsEx = viewBounds;
					
					//设置应用系统，图层控制列表数据
					modelLocator.systemInfo.themeLayers = systemParam.themeLayerId.layer;
					var themeLayerChangeEvent:MapLayerEvent = new MapLayerEvent(MapLayerEvent.THEME_LAYER_CHANGE);
					themeLayerChangeEvent.dispatch();
				}
			}
		}
	}
}