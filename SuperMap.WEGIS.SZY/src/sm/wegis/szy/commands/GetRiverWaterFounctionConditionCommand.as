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
	
	import widgets.waterevaluation.CapacityDataSource;
	
	//河流水功能区水质达标率及污染物入河量情况统计表
	public class GetRiverWaterFounctionConditionCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterCapacityParam:WaterCapacityParam = event.data as WaterCapacityParam;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(waterCapacityParam.id);
			params.push(waterCapacityParam.searchYear);
			params.push(waterCapacityParam.riverIds);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetRiverWaterFounctionCondition, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var capacityItem:Object = CapacityDataSource.dgCol[1];
			for (var prop:String in value) {
				capacityItem[prop] = value[prop];
			}
//			if ("propFields" in value && value["propFields"] is Array) {
//				(value["propFields"] as Array).push({"fieldKey": "monDetail",	"fieldName": "污染物浓度^监测详情","colWidth": "120",	"isMainKey": "-1"});
//			}
			var showCapacityEvent:QueryEvent = new QueryEvent(QueryEvent.GET_RIVER_WATER_FOUNCTION_CONDITION_RESPONSE);
			showCapacityEvent.data = capacityItem;;
			showCapacityEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("请求河流水功能区水质达标率数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}