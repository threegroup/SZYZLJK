package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.core.styles.PredefinedMarkerStyle;
	import com.supermap.web.core.styles.TextStyle;
	import com.supermap.web.iServerJava6R.FilterParameter;
	import com.supermap.web.iServerJava6R.Recordset;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLParameters;
	import com.supermap.web.iServerJava6R.queryServices.QueryBySQLService;
	import com.supermap.web.iServerJava6R.queryServices.QueryResult;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.rpc.AsyncResponder;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.utils.ColorUtils;
	import sm.wegis.szy.vo.ConstVO;
	
	public class QueryWaterFunctionRegionCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			QueryWaterFunctionHandle("http://localhost:8090/iserver/services/map-SZYNew/rest/maps/水功能区",
				"水功能区汇总@断面",['OBJECTID', '水功能区名']);
		}
		
		//查询
		private function QueryWaterFunctionHandle(layerUrl:String, layerName:String, fields:Array):void 
		{
			//定义 SQL 查询参数
			var queryBySQLParam:QueryBySQLParameters = new QueryBySQLParameters();
			var filter:FilterParameter = new FilterParameter();
			filter.name = layerName;
			filter.fields = fields;
			queryBySQLParam.filterParameters = [filter];
			
			/* 执行 SQL 查询 */
			var queryByDistanceService:QueryBySQLService = new QueryBySQLService(layerUrl);
			queryByDistanceService.processAsync(queryBySQLParam, new AsyncResponder(displayQueryRecords, faultHandle, null));
		}	 
		
		//显示查询结果
		private function displayQueryRecords(queryResult:QueryResult, mark:Object = null):void
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
						featuresLayer.id = ConstVO.WATERFUNCTION_FEATURE_LAYER;
						featuresLayer.minVisibleResolution = map.resolutions[map.resolutions.length-1];
						featuresLayer.maxVisibleResolution = map.resolutions[15];
						modelLocator.mapCtrl.addLayer(featuresLayer);
					}
					else
					{
						featuresLayer.clear();
					}
					
					var featuresTextLayer:FeaturesLayerEx = modelLocator.mapCtrl.getLayer(ConstVO.WATERFUNCTION_FEATURETEXT_LAYER) as FeaturesLayerEx;
					if (featuresTextLayer == null)
					{
						featuresTextLayer = new FeaturesLayerEx();
						featuresTextLayer.isPanEnableOnFeature = true;
						featuresTextLayer.id = ConstVO.WATERFUNCTION_FEATURETEXT_LAYER;
						featuresTextLayer.minVisibleResolution = map.resolutions[map.resolutions.length-1];
						featuresTextLayer.maxVisibleResolution = map.resolutions[15];
						modelLocator.mapCtrl.addLayer(featuresTextLayer);
					}
					else
					{
						featuresTextLayer.clear();
					}
					
					var glowFilter:GlowFilter = new GlowFilter();
					glowFilter.color = 0xffff00;
					glowFilter.quality = 0.5;
					glowFilter.inner = false;
					for each(var recordSet:Recordset in recordSets)
					{
						if (recordSet.features != null && recordSet.features.length != 0)
						{
							for each (var feature:Feature in recordSet.features)
							{
								feature.addEventListener(MouseEvent.ROLL_OVER,showToolTip);
								feature.addEventListener(MouseEvent.ROLL_OUT,hideToolTip);
								feature.addEventListener(MouseEvent.CLICK,showDetailInfo);
								feature.buttonMode = true;
								feature.style = new PredefinedLineStyle(PredefinedLineStyle.JOIN_ROUND, Math.random()*0xff0000,0.9, 5);
								featuresLayer.addFeature(feature);
								
								/*var geoPoint:GeoPoint = new GeoPoint(feature.geometry.center.x,feature.geometry.center.y);
								var textFeature:Feature = new Feature(geoPoint);
								var textStyle:TextStyle = new TextStyle(feature.attributes["OBJECTID"],0xFF0000);
								textStyle.yOffset = 0;
								textFeature.addEventListener(MouseEvent.CLICK,showDetailInfo);
								textFeature.style = textStyle;
								textFeature.buttonMode = true;
								textFeature.autoMoveToTop = true;
								textFeature.attributes = feature.attributes;
								textFeature.filters = [glowFilter];
								featuresTextLayer.addFeature(textFeature);*/
							}
						}
					}
				}
			}
		}
		
		private function showToolTip(event:MouseEvent):void
		{
			var feature:Feature = event.currentTarget as Feature;
			if (feature.attributes != null && feature.attributes["OBJECTID"])
			{
				feature.toolTip = feature.attributes["OBJECTID"];
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