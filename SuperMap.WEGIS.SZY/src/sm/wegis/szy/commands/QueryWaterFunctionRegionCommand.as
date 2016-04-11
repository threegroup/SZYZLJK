package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
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
	import flash.filters.GlowFilter;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.ConstVO;
	
	public class QueryWaterFunctionRegionCommand extends CommandBase
	{
		private static var isFirstInitFeatureLayer:Boolean = true;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			modelLocator.waterEvaluationResult = event.data;
			
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
//								feature.addEventListener(MouseEvent.ROLL_OVER,showToolTip);
//								feature.addEventListener(MouseEvent.ROLL_OUT,hideToolTip);
								feature.addEventListener(MouseEvent.CLICK,showDetailInfo);
								feature.buttonMode = true;
								featuresLayer.addFeature(feature);
							}
						}
					}
				}
			}
			updateEvaluationResult();
			modelLocator.mapCtrl.addEventListener(ZoomEvent.ZOOM_END, zoomEndHandler);
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
//								feature.addEventListener(MouseEvent.ROLL_OVER,showToolTip);
//								feature.addEventListener(MouseEvent.ROLL_OUT,hideToolTip);
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
			if (modelLocator.waterEvaluationResult && modelLocator.waterEvaluationResult.success == true) {
				if (modelLocator.waterEvaluationResult.attributes) {
					var waterEvalutions:Object = modelLocator.waterEvaluationResult.attributes;
					var ft:Feature;
					var riverInfo:Object;
					if (modelLocator.mapCtrl.level < modelLocator.systemInfo.waterEvaluationMaxLevel) {
						riverFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
							for each(ft in riverFeatureLayer.features) {
								if (ft.attributes["ID"] == riverInfo.SUPER_OBJ_ID)
								{
									ft.attributes["水质状况"] =  riverInfo["水质状况"];
									ft.toolTip = ft.attributes["水质状况"];
									ft.style = new PredefinedLineStyle("solid",parseInt(riverInfo["表征颜色"],16), 1,8);
								}
							}
						}
					} else {
						waterFunctionFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
							for each(var functionInfo:Object in riverInfo.waterFunList) {
								for each(ft in waterFunctionFeatureLayer.features) {
									if (ft.attributes["ID"] == functionInfo.SUPER_OBJ_ID)
									{
										ft.attributes["水质状况"] =  riverInfo["水质状况"];
										ft.style = new PredefinedLineStyle("solid",parseInt(functionInfo["表征颜色"],16), 1,8);
										ft.toolTip = ft.attributes["水质状况"];
									}
								}
							}
						}
					}
				}
			}
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
		
		
		//地图显示比例尺发生变化
		private  function mapZoomEndHandler(event:ZoomEvent):void
		{
			if (modelLocator.mapCtrl.level > modelLocator.systemInfo.waterEvaluationMaxLevel) {
				
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
		
		/**显示属性信息*/
		private function showDetailInfo(event:MouseEvent):void
		{
			
		}
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
		}
	}
}