package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	
	public class SystemSecurityCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			//如果开启权限认证，先请求权限列表，然后在派发系统初始化事件
			if(modelLocator.systemInfo.isNeedAuthorization == true)
			{
				
			}
			else
			{
				//系统初始化
				var systemEvent:SystemEvent = new SystemEvent(SystemEvent.SYSTEM_INIT);
				systemEvent.dispatch();
			}
		}
		
		override public function result(data:Object):void
		{
		}
		
		override public function fault(info:Object):void
		{
		}
	}
}