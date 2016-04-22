package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.SaveThemeMapVO;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	import sm.wegis.szy.vo.WaterEvaluationVO;
	
	public class QueryCountyThemeDataCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeHttpService("data/countymap.txt");
		}
		
		override public function result(data:Object):void
		{
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			
			var queryEvent:QueryEvent;
			
			modelLocator.waterEvaluationVO.waterEvaluationResult = value;
			
			queryEvent = new QueryEvent(QueryEvent.QUERY_WATER_FUNCTION_REGION);
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("请求水资源承载力数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}