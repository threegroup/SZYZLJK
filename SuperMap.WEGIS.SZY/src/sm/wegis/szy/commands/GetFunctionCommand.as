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
			
			var initWidget:Object = data.result.functions.initwidget.item;
			//派发事件，通知mapview添加widget
			var initialWidgetEvent:SystemEvent = new SystemEvent(SystemEvent.INITIAL_WIDGET);
			initialWidgetEvent.data = initWidget;
			initialWidgetEvent.dispatch();
			//绑定数据源
			//二维地图相关功能
			modelLocator.toolInfo.mapToolLabel = "name";
			var mapTool:Object = data.result.functions.tool.maptool;
			if(mapTool != null)
			{
				if(mapTool.item is ArrayCollection)
					modelLocator.toolInfo.mapToolList = mapTool.item as ArrayCollection;
				else
					modelLocator.toolInfo.mapToolList = new ArrayCollection([mapTool.item]);
			}
			
			modelLocator.menuInfo.mapMenuLabel = "name";
			var mapMenu:Object = data.result.functions.menu.mapmenu;
			if(mapMenu != null)
			{
				if(mapMenu.item is ArrayCollection)
					modelLocator.menuInfo.mapMenuList = mapMenu.item as ArrayCollection;
				else
					modelLocator.menuInfo.mapMenuList = new ArrayCollection([mapMenu.item]);
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