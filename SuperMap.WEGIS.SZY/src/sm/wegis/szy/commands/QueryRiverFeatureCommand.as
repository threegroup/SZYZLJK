package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.iServerJava6R.FilterParameter;
	import com.supermap.web.iServerJava6R.Recordset;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLParameters;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLService;
	import com.supermap.web.iServerJava6R.queryServices.QueryResult;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.display.Sprite;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.ConstVO;
	
	public class QueryRiverFeatureCommand extends CommandBase
	{
		private var isAdd:Boolean = false;
		private var superObjId:String = "";
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			
			var param:Object = event.data;
			this.isAdd = param["isAdd"];
			this.superObjId = param["superObjId"];
			
			if(this.isAdd)
			{
				CursorManager.setBusyCursor();
				//查询河流
				QueryVectorDatasetHandle(modelLocator.baseMapInfo.riverMapUrl, modelLocator.baseMapInfo.riverLayerName, ['ID','河流名称']
					, displayRiverQueryRecords);
			}
			else
			{
				//清除河流高亮对象
				this.removeRiverFeature();
			}
		}
		
		private function removeRiverFeature():void
		{
			var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.INFOQUERY_RIVER_LAYER) as FeaturesLayerEx;
			if(featuresLayer != null)
			{
				var f:Feature = featuresLayer.getFeatureByID(this.superObjId);
				if(f != null)
				{
					featuresLayer.removeFeature(f);
				}
			}
		}
		
		//查询水功能区
		private function QueryVectorDatasetHandle(layerUrl:String, layerName:String, fields:Array, callBackHandler:Function):void 
		{
			//定义 SQL 查询参数
			var queryBySQLParam:QueryBySQLParameters = new QueryBySQLParameters();
			var filter:FilterParameter = new FilterParameter();
			filter.name = layerName;
			//filter.fields = fields;
			filter.attributeFilter = "ID='" + this.superObjId + "'";
			queryBySQLParam.filterParameters = [filter];
			
			/* 执行 SQL 查询 */
			var queryByDistanceService:QueryBySQLService = new QueryBySQLService(layerUrl);
			queryByDistanceService.processAsync(queryBySQLParam, new AsyncResponder(callBackHandler, faultHandle, null));
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
					var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.INFOQUERY_RIVER_LAYER) as FeaturesLayerEx;
					if (featuresLayer == null)
					{
						featuresLayer = new FeaturesLayerEx();
						featuresLayer.isPanEnableOnFeature = true;
						featuresLayer.id = ConstVO.INFOQUERY_RIVER_LAYER;
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.style = new PredefinedLineStyle("solid",0xFFFF00, 1,6);//高亮为黄色
								feature.id = this.superObjId;
								feature.toolTip = feature.attributes["河流名称"];
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			
			CursorManager.removeBusyCursor();
		}
		
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
			CursorManager.removeBusyCursor();
		}
		
	}
}