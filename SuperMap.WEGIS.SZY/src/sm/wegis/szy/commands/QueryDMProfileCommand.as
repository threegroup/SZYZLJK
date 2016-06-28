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
	
	public class QueryDMProfileCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var waterModel:WaterModelParam = modelLocator.waterModelParam;
			var params:Array = [];
			//方案ID,断面ID
			params.push(waterModel.planId);
			params.push(waterModel.dmId);
//			params.push("73476806f527419686g18gbca8485689");
//			params.push("0A0B60799C9547ACBCBCF6989AD7AE48");
//			params.push("0A0B60799C9547ACBCBCF6989AD7AE48");
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetTerrainProfileData, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			
			//后台返回数据有误，用假数据替换
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_DM_PROFILE_RESPONSE);
			var resultValue:Object = jsDec.getValue() as Object;
			if (resultValue.success == true) {
				queryEvent.data = resultValue;
			}
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取断面地形剖面数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_DM_PROFILE_RESPONSE);
			queryEvent.dispatch();
		}
	}
}