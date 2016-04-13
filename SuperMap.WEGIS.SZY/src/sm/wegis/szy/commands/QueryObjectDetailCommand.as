package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.core.Feature;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	
	public class QueryObjectDetailCommand extends CommandBase
	{
		private var waterEvaluationParam:WaterEvaluaParam = null;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			waterEvaluationParam = event.data as WaterEvaluaParam;
			var params:Array = [];
			params.push(waterEvaluationParam.id);
			//searchTypef非空，查询水质评价
			if (waterEvaluationParam.searchType != null) {
				params.push(modelLocator.systemInfo.subSystemID);
				params.push(waterEvaluationParam.searchType);
				params.push(waterEvaluationParam.periodId);
			}
			
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetObjDetailInfo, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var resultData:Object = {};
			resultData["resultData"] = value;
			resultData["attribute"] = {};
			if(waterEvaluationParam != null)
			{
				resultData["attribute"]["OBJ_NAME"] = waterEvaluationParam.name;
				resultData["attribute"]["CENTER_X"] = waterEvaluationParam.x;
				resultData["attribute"]["CENTER_Y"] = waterEvaluationParam.y;
			}
			if(value.hasOwnProperty("surveyData") && value["surveyData"] != null)
			{
				var queryEvent:QueryEvent = new QueryEvent(QueryEvent.SHOW_OBJECT_DETAIL);
				queryEvent.data = resultData;
				queryEvent.dispatch();
			}
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取对象详情失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}