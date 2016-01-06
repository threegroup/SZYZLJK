package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	
	public class QueryMainTypesCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var urlRequest:URLVariables = new URLVariables();
			urlRequest.userName = "admin";
			urlRequest.password = "123";
			var param:Array = [];
			param.push("admin");
			param.push("123");
//			IDelegate(this.businessDelegate).executeHttpService("testdata/getMainTypes.txt");
//			IDelegate(this.businessDelegate).executeWebServiceOperation("login",urlRequest);
			IDelegate(this.businessDelegate).executeWebServiceEx("login",param);
		}
		
		override public function result(data:Object):void
		{
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MAIN_TYPES_RESPONSE);
			queryEvent.data = value;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("获取第一级分类失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_MAIN_TYPES_RESPONSE);
			queryEvent.dispatch();
		}
	}
}