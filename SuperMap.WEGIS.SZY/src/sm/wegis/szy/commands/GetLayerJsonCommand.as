package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.SystemEvent;
	
	public class GetLayerJsonCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeHttpService("config/layerjson.txt");
		}
		
		override public function result(data:Object):void
		{
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var getLayerEvent:SystemEvent = new SystemEvent(SystemEvent.GetLayerJsonResponse);
			getLayerEvent.data = value;
			getLayerEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("系统功能初始化失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var getLayerEvent:SystemEvent = new SystemEvent(SystemEvent.GetLayerJsonResponse);
			getLayerEvent.dispatch();
		}
	}
}