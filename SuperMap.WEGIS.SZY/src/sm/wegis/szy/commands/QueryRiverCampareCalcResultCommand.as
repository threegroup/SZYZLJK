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
	import sm.wegis.szy.vo.WaterModelParam;
	
	//查询河道对比计算结果
	public class QueryRiverCampareCalcResultCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterModel:WaterModelParam = event.data as WaterModelParam;
			var params:Array = [];
			//方案ID，计算指标ID
			params.push(waterModel.planId);
			//			if (waterModel.method == WSMethod.GetWaterHDDensitySource){
			//				IDelegate(this.businessDelegate).executeHttpService("data/rivercompare.txt");
			//			} else {
			IDelegate(this.businessDelegate).executeWebServiceEx(waterModel.method, params);
			//			}
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_RIVER_COMPARE_CALC_RESULT_RESPONSE);
			var resultValue:Object = jsDec.getValue() as Object;
			queryEvent.data = resultValue;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取河道对比计算结果失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_RIVER_COMPARE_CALC_RESULT_RESPONSE);
			queryEvent.dispatch();
		}
	}
}