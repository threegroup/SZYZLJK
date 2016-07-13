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
		private var waterEvaluationParam:WaterEvaluaParam;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			//如果不为空，查询主要污染指标
			if (event.data != null) {
				waterEvaluationParam = event.data as WaterEvaluaParam;
				var params:Array = [];
				params.push(modelLocator.systemInfo.subSystemID);
				params.push(waterEvaluationParam.searchType);
				params.push(waterEvaluationParam.periodId);
				params.push(waterEvaluationParam.id);
				
				IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetSZPJItemValue, params);
				CursorManager.setBusyCursor();
			} else {
				var targetInfoFeaturesLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.MAIN_EVALUATION_TARGET_INFO_LAYER, modelLocator.mapCtrl);
				targetInfoFeaturesLayer.clear();
			}
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var result:Object = jsDec.getValue() as Object;
			var targetInfoFeaturesLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.MAIN_EVALUATION_TARGET_INFO_LAYER, modelLocator.mapCtrl, 8, 2);
			targetInfoFeaturesLayer.clear();
			if (result.success == true) {
				//如果放回结果只有一条，说明是河流的信息，如果是多条，说明是断面
				var showPoint:GeoPoint;
				var feature:Feature;
				var infoStyle:InfoStyle;
				var waterEvaluationCls:ClassFactory;
				if (result.attributes && result.attributes.targetList && result.attributes.targetList.length > 0) {
					var riverInfo:Object = result.attributes.targetList[0];
					var riverMessage:Object = riverInfo.riverMessage;
					if (!(riverMessage is Array) && riverMessage.dmID == "$$$") {
						showPoint = new GeoPoint(waterEvaluationParam.x, waterEvaluationParam.y);
						feature = new Feature(showPoint);
						infoStyle = new InfoStyle();
						waterEvaluationCls = new ClassFactory(WaterEvaluationTarget);
						waterEvaluationCls.properties = {targets:riverMessage.dmMessage, title:"", type:WaterEvaluationTarget.River};
						infoStyle.infoRenderer = waterEvaluationCls;
						infoStyle.containerStyleName = "infoStyle";
						feature.style = infoStyle;
						targetInfoFeaturesLayer.addFeature(feature);
					}else if (riverMessage is Array){
						//断面点图层
						var featuresLayer:FeaturesLayerEx = FeatureLayerUtil.getFeatureLayerById(ConstVO.EVALUATION_FEATURE_LAYER, modelLocator.mapCtrl);
						for each(var item:Object in riverMessage) {
							for each(var featrue:Feature in featuresLayer.features) {
								if (item.dmID == featrue.attributes.id) {
									var targetFeature:Feature = new Feature(featrue.geometry);
									targetFeature.id = item.dmID;
									infoStyle = new InfoStyle();
									waterEvaluationCls = new ClassFactory(WaterEvaluationTarget);
									waterEvaluationCls.properties = {targets:item.dmMessage, 
										title:item.dmName,
										type:WaterEvaluationTarget.Break,
										targetLayer:targetInfoFeaturesLayer,
										dmID:item.dmID};
									infoStyle.infoRenderer = waterEvaluationCls;
									infoStyle.containerStyleName = "infoStyle";
									targetFeature.style = infoStyle;
									targetInfoFeaturesLayer.addFeature(targetFeature);
								}
							}
						}
					}
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