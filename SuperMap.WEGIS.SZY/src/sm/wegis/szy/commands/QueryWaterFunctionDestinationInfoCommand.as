package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.utils.Hashtable;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.vo.WSMethod;

	//水功能区目标水质
	public class QueryWaterFunctionDestinationInfoCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var params:Array = [];
			params.push(modelLocator.systemInfo.subSystemID);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetWaterFounctionWaterregimen, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var waterFunctionDestinaResult:Hashtable = new Hashtable();
			if (value.success == true && value.attributes != null && value.attributes.targetList != null) {
				var targetList:Array = value.attributes.targetList;
				for each(var item:Object in targetList) {
					if (item.super_obj_id != null) {
						waterFunctionDestinaResult.add(item.super_obj_id, item);
					}
				}
			}
			modelLocator.waterEvaluationVO.waterFunctionDestinationResult = waterFunctionDestinaResult;
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("请求河流水功能区水质达标率数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}