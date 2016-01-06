package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.ConstVO;
	
	public class LoginInCommand extends CommandBase
	{
		public function LoginInCommand()
		{
			super();
		}
		
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeWebServiceEx(ConstVO.Login,["admin", "admin"]);
		}
		
		override public function result(data:Object):void
		{
			if(data != null)
			{
				var result:String = data["result"];
				var jsDec:JSONDecoder  = new JSONDecoder(result);
				var value:Object = jsDec.getValue() as Object;
				
				//通过登录响应事件派发
				
			}
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("登录异常，请联系管理员！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}