package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	
	public class DataBindCreatedCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			ResourceManagerEx.updateAllIcons();
		}
	}
}