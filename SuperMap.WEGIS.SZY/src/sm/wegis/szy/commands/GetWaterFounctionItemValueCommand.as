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
	
	//水功能区水质达标率及污染物入河量详情
	public class GetWaterFounctionItemValueCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterCapacityParam:WaterCapacityParam = event.data as WaterCapacityParam;
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(waterCapacityParam.searchYear);
			params.push(waterCapacityParam.id);
			params.push(waterCapacityParam.riverIds);
			params.push(waterCapacityParam.waterFunctionId);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetWaterFounctionItemValue, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var capacityItem:Object = CapacityDataSource.dgCol[3];
			for (var prop:String in value) {
				capacityItem[prop] = value[prop];
			}
			var showCapacityEvent:QueryEvent = new QueryEvent(QueryEvent.GET_WATER_FOUNCTION_ITEM_VALUE_RESPONSE);
			showCapacityEvent.data = capacityItem;;
			showCapacityEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("请求水功能区水质达标率及污染物入河量详情失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}