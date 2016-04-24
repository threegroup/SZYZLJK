package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.styles.PredefinedFillStyle;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.events.ZoomEvent;
	import com.supermap.web.iServerJava6R.FilterParameter;
	import com.supermap.web.iServerJava6R.Recordset;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLParameters;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLService;
	import com.supermap.web.iServerJava6R.queryServices.QueryResult;
	import com.supermap.web.mapping.FeaturesLayer;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	import sm.wegis.szy.vo.WaterEvaluationVO;
	
	import widgets.waterevaluation.CapacityDataSource;
	
	public class QueryWaterFunctionRegionCommand extends CommandBase
	{
		private static var isFirstInitFeatureLayer:Boolean = true;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			if (isFirstInitFeatureLayer == true) {
				CursorManager.setBusyCursor();
				//查询河流
				QueryVectorDatasetHandle(modelLocator.baseMapInfo.riverMapUrl, modelLocator.baseMapInfo.riverLayerName, ['ID']
					, displayRiverQueryRecords);
				
				isFirstInitFeatureLayer = false;
			} else {
				updateEvaluationResult();
			}
		}
		
		//查询水功能区
		private function QueryVectorDatasetHandle(layerUrl:String, layerName:String, fields:Array, callBackHandler:Function):void 
		{
			//定义 SQL 查询参数
			var queryBySQLParam:QueryBySQLParameters = new QueryBySQLParameters();
			var filter:FilterParameter = new FilterParameter();
			filter.name = layerName;
			filter.fields = fields;
			queryBySQLParam.filterParameters = [filter];
			
			/* 执行 SQL 查询 */
			var queryByDistanceService:QueryBySQLService = new QueryBySQLService(layerUrl);
			queryByDistanceService.processAsync(queryBySQLParam, new AsyncResponder(callBackHandler, faultHandle, null));
		}	 
		
		
		//水功能区查询结果
		private function displayWaterFunctionQueryRecords(queryResult:QueryResult, mark:Object = null):void
		{
			if(queryResult.recordsets != null && queryResult.recordsets.length != 0)
			{
				var recordSets:Array = queryResult.recordsets;
				if(recordSets.length != 0)
				{
					var map:MapCtrl = modelLocator.mapCtrl;
					var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERFUNCTION_FEATURE_LAYER) as FeaturesLayerEx;
					if (featuresLayer == null)
					{
						featuresLayer = new FeaturesLayerEx();
						featuresLayer.isPanEnableOnFeature = true;
						featuresLayer.visible = false;
						featuresLayer.id = ConstVO.WATERFUNCTION_FEATURE_LAYER;
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					featuresLayer.clear();
					
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.addEventListener(MouseEvent.CLICK,showDetailInfo);
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			
			//查询县界
			QueryVectorDatasetHandle(modelLocator.baseMapInfo.countyMapUrl, modelLocator.baseMapInfo.countyLayerName, ['ID','NAME']
				, displayCountyQueryRecords);
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
					var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERRIVER_FEATURE_LAYER) as FeaturesLayerEx;
					if (featuresLayer == null)
					{
						featuresLayer = new FeaturesLayerEx();
						featuresLayer.isPanEnableOnFeature = true;
						featuresLayer.id = ConstVO.WATERRIVER_FEATURE_LAYER;
						featuresLayer.visible = false;
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					featuresLayer.clear();
					
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.addEventListener(MouseEvent.CLICK,showDetailInfo);
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			
			//查询水功能区
			QueryVectorDatasetHandle(modelLocator.baseMapInfo.sfzMapUrl, modelLocator.baseMapInfo.sfzLayerName, ['ID']
				, displayWaterFunctionQueryRecords);
		}
		
		//县查询结果
		private function displayCountyQueryRecords(queryResult:QueryResult, mark:Object = null):void
		{
			if(queryResult.recordsets != null && queryResult.recordsets.length != 0)
			{
				var recordSets:Array = queryResult.recordsets;
				if(recordSets.length != 0)
				{
					var map:MapCtrl = modelLocator.mapCtrl;
					var featuresLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERCOUNTY_FEATURE_LAYER) as FeaturesLayerEx;
					if (featuresLayer == null)
					{
						featuresLayer = new FeaturesLayerEx();
						featuresLayer.isPanEnableOnFeature = true;
						featuresLayer.id = ConstVO.WATERCOUNTY_FEATURE_LAYER;
						featuresLayer.visible = false;
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					featuresLayer.clear();
					
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.addEventListener(MouseEvent.CLICK, showCityCapacityInfo);
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			
			updateEvaluationResult();
			CursorManager.removeBusyCursor();
		}
		
		private function updateEvaluationResult():void
		{
			var riverFeatureLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERRIVER_FEATURE_LAYER) as FeaturesLayerEx;
			var waterFunctionFeatureLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERFUNCTION_FEATURE_LAYER) as FeaturesLayerEx;
			var countyFeatureLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERCOUNTY_FEATURE_LAYER) as FeaturesLayerEx;
			resolveFeatureLayer(riverFeatureLayer);
			resolveFeatureLayer(waterFunctionFeatureLayer);
			resolveFeatureLayer(countyFeatureLayer);
			var waterEvaluationVO:WaterEvaluationVO = modelLocator.waterEvaluationVO;
			if (waterEvaluationVO.waterEvaluationResult && waterEvaluationVO.waterEvaluationResult.success == true
				&& modelLocator.waterEvaluationVO.waterEvaluationResult.attributes) {
				var waterEvalutions:Object = waterEvaluationVO.waterEvaluationResult.attributes;
				var ft:Feature;
				var riverInfo:Object;
				var functionInfo:Object;
				var colorStr:String;
				switch(waterEvaluationVO.themeMapType) {
					//河流水质评价专题图
					case ConstVO.RIVER_WATER_EVALUATION_THEME_TYPE:
						riverFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(ft in riverFeatureLayer.features) {
							if (ft.attributes["ID"] == riverInfo.SUPER_OBJ_ID)
							{
								ft.attributes["水质状况"] =  riverInfo["水质状况"];
								//业务数据中河流对应的ID
								ft.attributes["businessId"] = riverInfo["评价对象_ID"];
								ft.toolTip = ft.attributes["水质状况"];
								ft.style = new PredefinedLineStyle("solid",parseInt(riverInfo["表征颜色"],16), 1,8);
							}
						}
					}
						showThemeMapTypePanel(true);
						break;
					//水功能区水质评价专题图
					case ConstVO.FUNCTION_EVALUATION_THEME_TYPE:
						waterFunctionFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(functionInfo in riverInfo.waterFunList) {
							for each(ft in waterFunctionFeatureLayer.features) {
								if (ft.attributes["ID"] == functionInfo.SUPER_OBJ_ID)
								{
									ft.attributes["水质状况"] =  functionInfo["水质状况"];
									//业务数据中水功能区对应的ID
									ft.attributes["businessId"] = riverInfo["评价对象_ID"];
									ft.style = new PredefinedLineStyle("solid",parseInt(functionInfo["表征颜色"],16), 1,8);
									ft.toolTip = ft.attributes["水质状况"];
								}
							}
						}
					}
						showThemeMapTypePanel(true);
						break;
					//水功能区水质达标专题图
					case ConstVO.FUNCTION_STANDARD_THEME_TYPE:
						waterFunctionFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(functionInfo in riverInfo.waterFunList) {
							for each(ft in waterFunctionFeatureLayer.features) {
								if (ft.attributes["ID"] == functionInfo.SUPER_OBJ_ID)
								{
									ft.attributes["是否达标"] =  functionInfo["是否达标"] == "0" ? "达标" : "不达标";
									//业务数据中水功能区对应的ID
									ft.attributes["businessId"] = riverInfo["评价对象_ID"];
									colorStr = functionInfo["达标颜色"];
									colorStr = colorStr.replace(/#/ig, "0x");
									ft.style = new PredefinedLineStyle("solid",parseInt(colorStr,16), 1,8);
									ft.toolTip = getWaterFunctionToolTip(functionInfo);
								}
							}
						}
					}
						showThemeMapTypePanel(true);
						break;
					//行政区划水质评价专题图--待完善
					case ConstVO.COUNTY_THEME_TYPE:
						countyFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(ft in countyFeatureLayer.features) {
							if (ft.attributes["ID"] == riverInfo.SUPER_OBJ_ID)
							{
								ft.toolTip =  getCapacityToolTip(riverInfo["承载力类别等级"]);
								ft.style = new PredefinedFillStyle("solid",getCapacityColor(riverInfo["承载力类别等级"]), 0.5, null);
							}
						}
					}
						break;
				}
				showWaterEvaluationLegend();
			} else {
				showThemeMapTypePanel(false);
			}
			clearMainPollutionInfoStyle();
		}
		
		//水资源承载力 承载力类别等级
		private function getCapacityToolTip(value:String):String
		{
			switch(value) {
				case "0" :
					return "不超载";
				case "1" :
					return "临界超载";
				case "2" :
					return "超载区";
			}
			return "";
		}
		
		private function getCapacityColor(value:String):uint
		{
			switch(value) {
				case "0" :
					return 0x0000FF;
				case "1" :
					return 0xFCD209;
				case "2" :
					return 0xFF0000;
			}
			return 0xFFFFFF;
		}
		
		//构建水功能区tooltip信息
		private function getWaterFunctionToolTip(attr:Object):String
		{
			var toolStr:String = "";
			toolStr += "水功能区：" + attr["WR_SD_NM"] + "\n";
			toolStr += "目标水质：" + attr["水质目标"] + "\n";
			toolStr += "水质状况：" + attr["水质状况"] + "\n";
			var isPass:String = attr["是否达标"] == "0" ? "达标" : "不达标";
			toolStr += "达标情况：" + isPass;
			return toolStr;
		}
		
		//显示水质评价专题地图图例
		private function showWaterEvaluationLegend():void
		{
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.Change_Water_Evaluation_Legend);
			queryEvent.dispatch();
		}
		
		private function showThemeMapTypePanel(visible:Boolean):void
		{
			var queryEvent:QueryEvent  = new QueryEvent(QueryEvent.SHOW_THEME_MAP_TYPE_PANEL_VISIBLE);
			queryEvent.data = visible;
			queryEvent.dispatch();
		}
		
		//清除主要污染物气泡
		private function clearMainPollutionInfoStyle():void
		{
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_RIVER_MAIN_POLLUTION);
			queryEvent.dispatch();
		}
		
		//设置要素透明和图层不可见
		private function resolveFeatureLayer(featureLayer:FeaturesLayer):void
		{
			if (featureLayer != null) {
				featureLayer.visible = false;
				for each(var ft:Feature in featureLayer.features) {
					ft.style = new PredefinedLineStyle(PredefinedLineStyle.SYMBOL_NULL, 0xFFFFFF,0);
				}
			}
		}
		
		private function showToolTip(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			if (feature.attributes != null)
			{
				feature.toolTip = feature.attributes["水质状况"];
			}
		}
		
		private function hideToolTip(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			feature.toolTip = null;
		}
		
		/**查询河流主要污染物信息*/
		private function showDetailInfo(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			var clickPoint:Point = new Point(event.stageX,event.stageY);
			var mapPoint:Point2D = modelLocator.mapCtrl.stageToMap(clickPoint);
			//将点击河流的ID，通过事件派发出去
			var waterEvaluationParam:WaterEvaluaParam = new WaterEvaluaParam();
			waterEvaluationParam.id = feature.attributes["businessId"];
			waterEvaluationParam.x = mapPoint.x;
			waterEvaluationParam.y = mapPoint.y;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.WATER_EVALUATION_THEME_MAP_RIVER_CLICK);
			queryEvent.data = waterEvaluationParam;
			queryEvent.dispatch();
		}
		
		/**查询县承载力数据*/
		private function showCityCapacityInfo(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			var attribute:Object = feature.attributes;
			var clickPoint:Point = new Point(event.stageX,event.stageY);
			var mapPoint:Point2D = modelLocator.mapCtrl.stageToMap(clickPoint);
			
			var resultData:Object = {};
			var value:Object = CapacityDataSource.countyInfoData
			resultData["resultData"] = value;
			resultData["attribute"] = {};
			resultData["attribute"]["OBJ_NAME"] = attribute["NAME"];
			resultData["attribute"]["CENTER_X"] = mapPoint.x;
			resultData["attribute"]["CENTER_Y"] = mapPoint.y;
			if(value.hasOwnProperty("surveyData") && value["surveyData"] != null)
			{
				var queryEvent:QueryEvent = new QueryEvent(QueryEvent.SHOW_OBJECT_DETAIL);
				queryEvent.data = resultData;
				queryEvent.dispatch();
			}
			
			//在地图窗口底部显示水资源承载能力表格数据
			var showCapacityEvent:QueryEvent = new QueryEvent(QueryEvent.SHOW_WATER_CAPACITY_DATA);
			showCapacityEvent.data = CapacityDataSource.dgCol[0];
			showCapacityEvent.dispatch();
		}
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
		}
		
	}
}