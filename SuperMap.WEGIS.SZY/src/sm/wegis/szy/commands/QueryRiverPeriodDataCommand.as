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
	
	public class QueryRiverPeriodDataCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var tempData:Object = event.data;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(tempData["searchType"]);
			params.push(tempData["searchPeriodId"]);//单个周期ID值
			params.push(tempData["searchIds"]);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetSZPJRiverLevel, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_RIVER_PERIOD_DATA_RESPONSE);
			var resultValue:Object = jsDec.getValue() as Object;
			if (resultValue.success == true) {
				queryEvent.data = resultValue;
			}
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取水质评价周期数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_RIVER_PERIOD_DATA_RESPONSE);
			queryEvent.dispatch();
		}
	}
}