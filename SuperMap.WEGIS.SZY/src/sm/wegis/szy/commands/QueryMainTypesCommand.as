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
	
	public class QueryMainTypesCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var params:Array = [];
			params.push(modelLocator.userVo.userId);
			params.push(modelLocator.systemInfo.subSystemID);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetMainTypes, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var resultValue:Object = jsDec.getValue() as Object;
			if (resultValue.success == true) {
				for each (var item:Object in resultValue.attributes.mainTypes) {
					if (item.id == "1") {
						item.key = "ZYST";
					} else if (item.id == "2"){ 
						item.key = "MGMB";
					}
				}
			}
			
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MAIN_TYPES_RESPONSE);
			queryEvent.data = resultValue;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取第一级分类失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MAIN_TYPES_RESPONSE);
			queryEvent.dispatch();
		}
	}
}