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
	
	public class QueryStationEvalutionInfoCommand extends CommandBase
	{
		private var waterEvaluaParam:WaterEvaluaParam;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			waterEvaluaParam = event.data as WaterEvaluaParam;
			//如果左侧checkbox选择=true，请求数据，否则删除数据
				var params:Array = [];
				params.push(modelLocator.userVo.userId);
				params.push(waterEvaluaParam.id);
				params.push("2");//评价指标
				if (waterEvaluaParam.searchType != null) {
					params.push(modelLocator.systemInfo.subSystemID);
					params.push(waterEvaluaParam.searchType);
					params.push(waterEvaluaParam.periodId);
				}
			
				IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetTarget, params);
				CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			//用于右侧表格是添加、还是删除
			value.x = waterEvaluaParam.x;
			value.y = waterEvaluaParam.y;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_STATION_EVALUTION_INFO_RESPONSE);
			queryEvent.data = value;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取目标对象详细信息失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_STATION_EVALUTION_INFO_RESPONSE);
			var faultObject:Object = new Object();
			faultObject.success = false;
			queryEvent.dispatch();
		}
	}
}