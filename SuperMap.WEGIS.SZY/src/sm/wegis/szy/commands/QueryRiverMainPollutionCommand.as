package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.styles.InfoStyle;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import mx.controls.Alert;
	import mx.core.ClassFactory;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.renders.WaterEvaluationTarget;
	import sm.wegis.szy.utils.FeatureLayerUtil;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.MapQueryVO;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	
	public class QueryRiverMainPollutionCommand extends CommandBase
	{
		var waterEvaluationParam:WaterEvaluaParam;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			waterEvaluationParam = event.data as WaterEvaluaParam;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(waterEvaluationParam.searchType);
			params.push(waterEvaluationParam.periodId);
			params.push(waterEvaluationParam.id);
			
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetSZPJItemValue, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var result:Object = jsDec.getValue() as Object;
			var targetInfoFeaturesLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.MAIN_EVALUATION_TARGET_INFO_LAYER, modelLocator.mapCtrl);
			targetInfoFeaturesLayer.clear();
			if (result.success == true) {
				//如果放回结果只有一条，说明是河流的信息，如果是多条，说明是断面
				var showPoint:GeoPoint;
				var feature:Feature;
				var infoStyle:InfoStyle;
				if (result.type == "1") {
					 showPoint = new GeoPoint(waterEvaluationParam.x, waterEvaluationParam.y);
					 feature = new Feature(showPoint);
					 infoStyle = new InfoStyle();
					 var waterEvaluationCls:ClassFactory = new ClassFactory(WaterEvaluationTarget);
					 waterEvaluationCls.properties = {targets:result};
					 infoStyle.infoRenderer = waterEvaluationCls;
					 feature.style = infoStyle;
					 targetInfoFeaturesLayer.addFeature(feature);
				} else {
					//断面点图层
					var featuresLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.EVALUATION_FEATURE_LAYER, modelLocator.mapCtrl);
				}
			}
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取主要污染指标失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}