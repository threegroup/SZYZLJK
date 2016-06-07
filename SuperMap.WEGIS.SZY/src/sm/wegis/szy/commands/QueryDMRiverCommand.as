package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.iServerJava6R.FilterParameter;
	import com.supermap.web.iServerJava6R.Recordset;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLParameters;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLService;
	import com.supermap.web.iServerJava6R.queryServices.QueryResult;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.WSMethod;
	
	public class QueryDMRiverCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			//定义 SQL 查询参数
			var queryBySQLParam:QueryBySQLParameters = new QueryBySQLParameters();
			var filter:FilterParameter = new FilterParameter();
			filter.name = modelLocator.baseMapInfo.dmLayerName;
			filter.fields = ["ID"];
			queryBySQLParam.filterParameters = [filter];
			
			//				/* 执行 SQL 查询 */
			var queryByDistanceService:QueryBySQLService = new QueryBySQLService( modelLocator.baseMapInfo.dmMapUrl);
			queryByDistanceService.processAsync(queryBySQLParam, new AsyncResponder(displayRiverQueryRecords, faultHandle, null));
		}
		
		//河流查询结果
		private function displayRiverQueryRecords(queryResult:QueryResult, mark:Object = null):void
		{
			if(queryResult.recordsets != null && queryResult.recordsets.length != 0)
			{
				var recordSets:Array = queryResult.recordsets;
				if(recordSets.length != 0)
				{
					var map:MapCtrl = modelLocator.mapCtrl;
					var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATER_MODEL_RIVER_FEATURE_LAYER) as FeaturesLayerEx;
					if (featuresLayer == null)
					{
						featuresLayer = new FeaturesLayerEx();
						featuresLayer.id = ConstVO.WATER_MODEL_RIVER_FEATURE_LAYER;
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					featuresLayer.isPanEnableOnFeature = true;
					featuresLayer.style = new PredefinedLineStyle("solid", 0x0160C6);
					featuresLayer.clear();
					
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.id = feature.attributes.ID;
								feature.visible = false;
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_DM_RIVER_RESPONSE);
			queryEvent.dispatch();
		}
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_DM_RIVER_RESPONSE);
			queryEvent.dispatch();
		}
	}
}