package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.SaveThemeMapVO;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	import sm.wegis.szy.vo.WaterEvaluationVO;
	
	public class QuerySaveThemeMapCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeHttpService("data/thememap.txt");
		}
		
		override public function result(data:Object):void
		{
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			
			var queryEvent:QueryEvent;
			
			var saveThemeMapVO:SaveThemeMapVO = new SaveThemeMapVO();
			saveThemeMapVO.mapViewBounds = value.mapViewBounds;
			
			var  waterEvaluationObj:Object =  value.waterEvaluation;
			if (waterEvaluationObj != null) {
				var waterEvaluation:WaterEvaluationVO = new WaterEvaluationVO();
				waterEvaluation.themeMapType = waterEvaluationObj.themeMapType;
				queryEvent = new QueryEvent(QueryEvent.CHANGE_THEME_MAP_TYPE);
				queryEvent.data = waterEvaluation.themeMapType;
				queryEvent.dispatch();
				
				waterEvaluation.waterEvaluationResult = waterEvaluationObj.waterEvaluationResult;
				
				//发送数据绑定完成事件
				modelLocator.waterEvaluationVO = waterEvaluation;
			}
			//设置查询参数
			var  jsonWaterEvaluaParam:Object = value.waterEvaluaParam;
			if (jsonWaterEvaluaParam != null) {
				var waterEvaluaParam:WaterEvaluaParam = new WaterEvaluaParam();
				waterEvaluaParam.periodId = jsonWaterEvaluaParam["periodId"];
				waterEvaluaParam.searchType = jsonWaterEvaluaParam["searchType"];
				modelLocator.waterEvaluaParam = waterEvaluaParam;
			}
			
			queryEvent = new QueryEvent(QueryEvent.QUERY_WATER_FUNCTION_REGION);
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("系统功能初始化失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}