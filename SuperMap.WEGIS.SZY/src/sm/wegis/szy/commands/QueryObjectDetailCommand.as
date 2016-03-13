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
	
	public class QueryObjectDetailCommand extends CommandBase
	{
		private var f:Feature = null;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			f = event.data as Feature;
			var objId:String = f.id;
			var params:Array = [];
			params.push(objId);
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
			if(f != null)
			{
				resultData["attribute"]["OBJ_NAME"] = f.attributes["name"];
				resultData["attribute"]["CENTER_X"] = f.attributes["x"];
				resultData["attribute"]["CENTER_Y"] = f.attributes["y"];
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