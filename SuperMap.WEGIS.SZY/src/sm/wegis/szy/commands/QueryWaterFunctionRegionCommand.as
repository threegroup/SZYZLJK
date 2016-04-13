package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
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
	
	public class QueryWaterFunctionRegionCommand extends CommandBase
	{
		private static var isFirstInitFeatureLayer:Boolean = true;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			//存储查询的成果数据
			modelLocator.waterEvaluationVO.waterEvaluationResult = event.data;
			
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
			updateEvaluationResult();
			CursorManager.removeBusyCursor();
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
		
		private function zoomEndHandler(event:ZoomEvent):void
		{
			updateEvaluationResult();
		}
		
		private function updateEvaluationResult():void
		{
			var riverFeatureLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERRIVER_FEATURE_LAYER) as FeaturesLayerEx;
			var waterFunctionFeatureLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERFUNCTION_FEATURE_LAYER) as FeaturesLayerEx;
			resolveFeatureLayer(riverFeatureLayer);
			resolveFeatureLayer(waterFunctionFeatureLayer);
			var waterEvaluationVO:WaterEvaluationVO = modelLocator.waterEvaluationVO;
			if (waterEvaluationVO.waterEvaluationResult && waterEvaluationVO.waterEvaluationResult.success == true
				&& modelLocator.waterEvaluationVO.waterEvaluationResult.attributes) {
				var waterEvalutions:Object = waterEvaluationVO.waterEvaluationResult.attributes;
				var ft:Feature;
				var riverInfo:Object;
				var functionInfo:Object;
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
						break;
					//水功能区水质达标专题图
					case ConstVO.FUNCTION_STANDARD_THEME_TYPE:
						waterFunctionFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(functionInfo in riverInfo.waterFunList) {
							for each(ft in waterFunctionFeatureLayer.features) {
								if (ft.attributes["ID"] == functionInfo.SUPER_OBJ_ID)
								{
									ft.attributes["是否达标"] =  functionInfo["是否达标"] == "0" ? "否" : "是";
									//业务数据中水功能区对应的ID
									ft.attributes["businessId"] = riverInfo["评价对象_ID"];
									ft.style = new PredefinedLineStyle("solid",parseInt(functionInfo["达标颜色"],16), 1,8);
									ft.toolTip = ft.attributes["是否达标"];
								}
							}
						}
					}
						break;
				}
				showWaterEvaluationLegend();
				showThemeMapTypePanel(true);
			} else {
				showThemeMapTypePanel(false);
			}
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
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
		}
	}
}