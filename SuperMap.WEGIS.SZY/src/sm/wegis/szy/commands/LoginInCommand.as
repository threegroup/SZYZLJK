package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.UserVO;
	import sm.wegis.szy.vo.WSMethod;
	
	public class LoginInCommand extends CommandBase
	{
		public function LoginInCommand()
		{
			super();
		}
		
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var userVo:UserVO = event.data as UserVO;
			if(userVo != null)
			{
				var requestData:Array = [];
				requestData.push(userVo.userName);
				requestData.push(userVo.password);
				IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.Login, requestData);
			}
		}
		
		override public function result(data:Object):void
		{
			if(data != null)
			{
				var result:String = data["result"];
				var jsDec:JSONDecoder  = new JSONDecoder(result);
				var value:Object = jsDec.getValue() as Object;
				
				//通过登录响应事件派发
				if(value != null)
				{
					var systemEvent:SystemEvent = new SystemEvent(SystemEvent.LoginInResponse);
					systemEvent.data = value;
					systemEvent.dispatch();
				}
			}
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("登录异常，请联系管理员！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}