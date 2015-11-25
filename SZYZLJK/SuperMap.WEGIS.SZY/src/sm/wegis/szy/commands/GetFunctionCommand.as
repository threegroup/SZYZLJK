package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	
	public class GetFunctionCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeHttpService(modelLocator.systemInfo.systemFunctionUrl);
		}
		
		override public function result(data:Object):void
		{
			//绑定数据源
			//系统主菜单功能
			modelLocator.topInfo.systemMenuLabel = "name";
			var menuDs:Object = data.result.functions.menu.systemmenu.item;
			if(menuDs != null)
			{
				if(menuDs is ArrayCollection)
				{
					modelLocator.topInfo.systemMenuList = menuDs as ArrayCollection;
				}
				else
				{
					modelLocator.topInfo.systemMenuList = new ArrayCollection([menuDs]);
				}
			}
			
			//发送数据绑定完成事件
			var dataBindCreated:SystemEvent = new SystemEvent(SystemEvent.DATA_BIND_CREATED);
			dataBindCreated.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("系统功能初始化失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}