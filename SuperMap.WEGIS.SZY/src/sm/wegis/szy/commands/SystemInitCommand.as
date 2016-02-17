package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.managers.BrowserManager;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	
	public class SystemInitCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			
			switch(event.type)
			{
				case SystemEvent.SYSTEM_INIT://系统初始化
				{
					//加载系统功能信息
					var functionEvent:SystemEvent = new SystemEvent(SystemEvent.GET_FUNCTION);
					functionEvent.dispatch();
					
					var systemParamEvent:SystemEvent = new SystemEvent(SystemEvent.GET_SYSTEM_PARAM);
					systemParamEvent.dispatch();
					
					//设置系统标题
					BrowserManager.getInstance().setTitle(modelLocator.systemInfo.systemTitle);
					break;
				}
				default:
					break;
			}
		}
	}
}