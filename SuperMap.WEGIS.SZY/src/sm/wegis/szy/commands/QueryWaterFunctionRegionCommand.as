package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.geometry.GeoLine;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.styles.InfoStyle;
	import com.supermap.web.core.styles.PredefinedFillStyle;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.core.styles.TextStyle;
	import com.supermap.web.events.ZoomEvent;
	import com.supermap.web.iServerJava6R.FilterParameter;
	import com.supermap.web.iServerJava6R.Recordset;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLParameters;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLService;
	import com.supermap.web.iServerJava6R.queryServices.QueryResult;
	import com.supermap.web.mapping.FeaturesLayer;
	import com.supermap.web.utils.Hashtable;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.text.TextFormat;
	
	import mx.controls.Alert;
	import mx.core.ClassFactory;
	import mx.core.FlexGlobals;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.renders.WaterFunctionEvaluationTarget;
	import sm.wegis.szy.utils.FeatureLayerUtil;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.WaterCapacityParam;
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
			
			//查询太子河流域内市界
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
		
		//市查询结果
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
			var waterFunctionEvalutionFeatureLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.WATERFUNCTION_EVALUATE_LAYER,modelLocator.mapCtrl) as FeaturesLayerEx;
			resolveFeatureLayer(waterFunctionEvalutionFeatureLayer);
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
								break;
							}
						}
					}
						modelLocator.mapCtrl.moveLayer(riverFeatureLayer.id, modelLocator.mapCtrl.layerIds.length-1);
						showThemeMapTypePanel(true);
						break;
					//水功能区水质评价专题图
					case ConstVO.FUNCTION_EVALUATION_THEME_TYPE:
						waterFunctionFeatureLayer.visible = true;
						waterFunctionEvalutionFeatureLayer.visible = true;
						var waterFunctionDestina:Hashtable = waterEvaluationVO.waterFunctionDestinationResult;
						var geoLine:GeoLine;
						var pointFeature:Feature;
						var waterFunctionDestionInfo:Object;
						//						var infoStyle:InfoStyle;
						//						var waterEvaluationCls:ClassFactory;
						//显示所有水功能区目标水质
						for each(ft in waterFunctionFeatureLayer.features) 
				    	{
							var waterFunctionId:String = ft.attributes["ID"];
							colorStr = "0x000000";
							waterFunctionDestionInfo = waterFunctionDestina.find(waterFunctionId);
							if (waterFunctionDestionInfo != null && waterFunctionDestionInfo["目标水质颜色"] != null)  {
								colorStr = waterFunctionDestionInfo["目标水质颜色"];
								colorStr = colorStr.replace(/#/ig, "0x");
								ft.alpha = 1;
								ft.toolTip = waterFunctionDestionInfo["name"];
							} else {
								//如果没有对应的目标水质，设置不可见
								ft.alpha = 0;
							}
							ft.style = new PredefinedLineStyle("solid",parseInt(colorStr,16), 1,8);
					   }
						
						for each(riverInfo in waterEvalutions.targetList) {
						for each(functionInfo in riverInfo.waterFunList) {
							for each(ft in waterFunctionFeatureLayer.features) {
								if (ft.attributes["ID"] == functionInfo.SUPER_OBJ_ID)
								{
									ft.attributes["水质状况"] =  functionInfo["水质状况"];
									//业务数据中水功能区对应的ID
									ft.attributes["businessId"] = riverInfo["评价对象_ID"];
									waterFunctionDestionInfo = waterFunctionDestina.find(ft.attributes["ID"]);
									if (waterFunctionDestionInfo != null && waterFunctionDestionInfo["目标水质颜色"] != null)  {
										ft.toolTip = getWaterFunctionToolTip(functionInfo);
									}else{
										ft.toolTip = "没有目标水质数据";
									}
									
									//添加水质评价数据
									geoLine = ft.geometry as GeoLine;
									var parts:Array =  geoLine.getPart(0);
									var centerPoint:Point2D = parts[Math.floor(parts.length/2)];
									var geoPoint:GeoPoint = new GeoPoint(centerPoint.x, centerPoint.y);
									pointFeature = new Feature(geoPoint); 
									//业务数据中水功能区对应的ID
									pointFeature.attributes = ft.attributes;  
									//									waterEvaluationCls = new ClassFactory(WaterFunctionEvaluationTarget);
									//									waterEvaluationCls.properties = {targets:getWaterFunctionInfoData(functionInfo), title:functionInfo["WR_SD_NM"]};
									//									infoStyle = new InfoStyle();
									//									infoStyle.infoRenderer = waterEvaluationCls;
									//									infoStyle.containerStyleName = "infoStyle";
									colorStr = functionInfo["表征颜色"];
									colorStr = colorStr.replace(/#/ig, "0x");
									var textStyle:TextStyle = FeatureLayerUtil.getTextStyle("表征");
									textStyle.size = 9;
									textStyle.yOffset = 20;
									textStyle.xOffset = -20;
									textStyle.color = textStyle.backgroundColor = parseInt(colorStr, 16);
									textStyle.borderColor = 0x2174BB;
									textStyle.angle = 90;
									pointFeature.style = 	textStyle;
									pointFeature.toolTip = ft.toolTip;
									pointFeature.buttonMode = true;
									waterFunctionEvalutionFeatureLayer.addFeature(pointFeature);
									break;
								}
							}
						}
					}
						modelLocator.mapCtrl.moveLayer(waterFunctionFeatureLayer.id, modelLocator.mapCtrl.layerIds.length-1);
						modelLocator.mapCtrl.moveLayer(waterFunctionEvalutionFeatureLayer.id, modelLocator.mapCtrl.layerIds.length-1);
						showThemeMapTypePanel(true);
						break;
					//行政区划水质承载力专题图
					case ConstVO.COUNTY_THEME_TYPE:
						countyFeatureLayer.visible = true;
						for each(riverInfo in waterEvalutions.targetList) {
						for each(ft in countyFeatureLayer.features) {
							if (ft.attributes["ID"] == riverInfo["SUPER_OBJ_ID"])
							{
								ft.attributes["行政区_id"] = riverInfo["行政区_id"];
								ft.toolTip =  getCapacityToolTip(riverInfo["承载力类别等级"]);
								ft.style = new PredefinedFillStyle("solid",getCapacityColor(riverInfo["承载力类别等级"]), 0.5, null);
								break;
							}
						}
					}
						break;
				}
				modelLocator.mapCtrl.moveLayer(countyFeatureLayer.id, modelLocator.mapCtrl.layerIds.length-1);
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
			toolStr += "水质状况：" + attr["LEVEL_ID"] + "\n";
			var isPass:String = attr["是否达标"] == "0" ? "达标" : "不达标";
			toolStr += "达标情况：" + isPass;
			return toolStr;
		}
		
		//根据水质评价，水质状况，换成对应的中文
		private function getWaterState(value:String):String
		{
			switch(value){
				case "1":
					return "Ⅰ类";
				case "2":
					return "Ⅱ类";
				case "3":
					return "Ⅲ类";
				case "4":
					return "Ⅳ类";
				case "5":
					return "Ⅴ类";
				case "6":
					return "劣Ⅴ类";
			}
			return "";
		}
		
		//构建水功能区目标水质和评价水质infostyle信息
		private function getWaterFunctionInfoData(attr:Object):Array
		{
			var datas:Array = [];
			datas.push({name:"目标水质", value:attr["水质目标"]});
			datas.push({name:"水质状况", value: attr["水质状况"]});
			var isPass:String = attr["是否达标"] == "0" ? "达标" : "不达标";
			datas.push({name:"达标情况",value:isPass});
			return datas;
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
		
		/**查询太子河流域市承载力数据*/
		private function showCityCapacityInfo(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			var attribute:Object = feature.attributes;
			var clickPoint:Point = new Point(event.stageX,event.stageY);
			var mapPoint:Point2D = modelLocator.mapCtrl.stageToMap(clickPoint);
			
			//请求区域水资源承载力气泡数据
			var waterEvaluaParam:WaterCapacityParam = modelLocator.waterCapacityParam;
			waterEvaluaParam.id = attribute["行政区_id"];
			waterEvaluaParam.name = attribute["NAME"];
			waterEvaluaParam.x = mapPoint.x;
			waterEvaluaParam.y = mapPoint.y;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_COUNTY_INFO_DATA);
			queryEvent.data = waterEvaluaParam;
			queryEvent.dispatch();
			
			//请求在地图窗口底部显示水资源承载能力表格数据
			queryEvent = new QueryEvent(QueryEvent.GET_XZQ_CONDITION);
			queryEvent.data = waterEvaluaParam;
			queryEvent.dispatch();
		}
		
		private function faultHandle(object:Object, mark:Object = null):void
		{
			Alert.show("与服务端交互失败", "抱歉", 4, FlexGlobals.topLevelApplication as Sprite);
		}
		
	}
}