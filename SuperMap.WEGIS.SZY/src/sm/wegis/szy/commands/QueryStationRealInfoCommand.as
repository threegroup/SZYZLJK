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
	import sm.wegis.szy.vo.MapQueryParam;
	import sm.wegis.szy.vo.WSMethod;
	
	public class QueryStationRealInfoCommand extends CommandBase
	{
		private var requestData:MapQueryParam;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			requestData = event.data as MapQueryParam;
			//如果左侧checkbox选择=true，请求数据，否则删除数据
			if (requestData.selected == true) {
				var params:Array = [];
				params.push(modelLocator.userVo.userId);
				params.push(requestData.id);
//				params.push("572A04F39AE34504919F143C48FD8ACA");
				params.push("1");//查询实施监测数据
				params.push(modelLocator.systemInfo.subSystemID);
				IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetTarget, params);
				CursorManager.setBusyCursor();
			} else {
				var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_STATION_REAL_INFO_RESPONSE);
				queryEvent.data = requestData;
				queryEvent.dispatch();
			}
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			//用于前台表格排序，根据左侧列表选择顺序
			value.index = requestData.index;
			//用于右侧表格是添加、还是删除
			value.selected = true;
			value.id = requestData.id;
			value.name = requestData.name;
			value.x = requestData.x;
			value.y = requestData.y;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_STATION_REAL_INFO_RESPONSE);
			queryEvent.data = value;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取目标对象详细信息失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_STATION_REAL_INFO_RESPONSE);
			var faultObject:MapQueryParam = new MapQueryParam();
			faultObject.selected = false;
			faultObject.index = requestData.index;
			queryEvent.dispatch();
		}
	}
}