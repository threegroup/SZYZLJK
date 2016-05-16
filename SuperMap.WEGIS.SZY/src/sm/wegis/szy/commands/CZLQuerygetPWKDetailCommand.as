package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.WSMethod;
	
	public class CZLQuerygetPWKDetailCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetObjDetailInfo, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var resultData:Object = {};
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取水功能区排污口污染物入河量详情失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}