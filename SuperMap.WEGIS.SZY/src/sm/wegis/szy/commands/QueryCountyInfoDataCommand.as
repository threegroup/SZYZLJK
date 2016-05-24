package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.SaveThemeMapVO;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterCapacityParam;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	import sm.wegis.szy.vo.WaterEvaluationVO;
	
	public class QueryCountyInfoDataCommand extends CommandBase
	{
		private var waterCapacityParam:WaterCapacityParam;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			waterCapacityParam = event.data as WaterCapacityParam;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(waterCapacityParam.searchYear);
			params.push(waterCapacityParam.id);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetXZQBubbleDetail, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			
			var resultData:Object = {};
			resultData["resultData"] = value;
			resultData["attribute"] = {};
			resultData["attribute"]["OBJ_NAME"] = waterCapacityParam.name;
			resultData["attribute"]["CENTER_X"] = waterCapacityParam.x;
			resultData["attribute"]["CENTER_Y"] = waterCapacityParam.y;
			if(value.hasOwnProperty("surveyData") && value["surveyData"] != null)
			{
				var queryEvent:QueryEvent = new QueryEvent(QueryEvent.SHOW_OBJECT_DETAIL);
				queryEvent.data = resultData;
				queryEvent.dispatch();
			}
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("请求区域承载力数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}