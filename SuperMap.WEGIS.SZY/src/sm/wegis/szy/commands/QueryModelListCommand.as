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
	
	public class QueryModelListCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var params:Array = [];
//			params.push(modelLocator.userVo.userId);
//			params.push(modelLocator.systemInfo.subSystemID);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetPlanInfoList, params);
//			IDelegate(this.businessDelegate).executeHttpService("data/plans.txt");
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var resultValue:Object = jsDec.getValue() as Object;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MODEL_LIST_RESPONSE);
			queryEvent.data = resultValue;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取水模型方案失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MODEL_LIST_RESPONSE);
			queryEvent.dispatch();
		}
	}
}