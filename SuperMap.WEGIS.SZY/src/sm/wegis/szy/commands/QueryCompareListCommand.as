package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.ConstVO;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterModelParam;
	
	//查询可对比方案列表
	public class QueryCompareListCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterModel:WaterModelParam = modelLocator.waterModelParam;
			var params:Array = [];
			//方案ID，计算指标ID
			params.push(waterModel.planId);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetCompareblePlanList, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_COMPARE_LIST_RESPONSE);
			var resultValue:Object = jsDec.getValue() as Object;
			queryEvent.data = resultValue;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取可对比方案列表失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_COMPARE_LIST_RESPONSE);
			queryEvent.dispatch();
		}
	}
}