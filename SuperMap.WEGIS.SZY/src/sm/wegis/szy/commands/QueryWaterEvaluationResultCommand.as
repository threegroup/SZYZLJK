package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	
	//根据，特定周期参数，查询水质评价结果数据
	public class QueryWaterEvaluationResultCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterEvaluaParam:WaterEvaluaParam = event.data as WaterEvaluaParam;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(waterEvaluaParam.searchType);
			params.push(waterEvaluaParam.periodId);
			params.push(waterEvaluaParam.riverIds);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetSZPJRiverLevel, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_WATER_FUNCTION_REGION);
			var resultValue:Object = jsDec.getValue() as Object;
			if (resultValue.success == true) {
				modelLocator.waterEvaluationVO.waterEvaluationResult = resultValue;
			}
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取水质评价数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			modelLocator.waterEvaluationVO.waterEvaluationResult = null;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_WATER_FUNCTION_REGION);
			queryEvent.dispatch();
		}
	}
}