package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.wegis.common.core.hashTable.HashTable;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.SystemParamVO;
	
	public class GetSystemParamCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			IDelegate(this.businessDelegate).executeHttpService(modelLocator.systemInfo.systemParamUrl);
		}
		
		override public function result(data:Object):void
		{
			//绑定数据源
			var subSystems:Object = data.result.system.subSystem;
			var subSystemHT:HashTable = new HashTable();
			for each(var subSystem:Object in subSystems) {
				subSystemHT.add(subSystem.name, subSystem);
			}
			modelLocator.systemInfo.systemParams = subSystemHT;
			var systemSelectEvent:SystemEvent = new SystemEvent(SystemEvent.SYSTEM_SELECT);
			systemSelectEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("系统功能初始化失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}