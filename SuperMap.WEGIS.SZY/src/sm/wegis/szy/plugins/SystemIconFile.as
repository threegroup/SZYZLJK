package sm.wegis.szy.plugins
{
	import com.supermap.wegis.common.core.plugin.Plugin;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	public class SystemIconFile extends Plugin
	{
		[Embed(source="assets/image/top/logo.png")]
		private static var logoIconCls:Class;
		private static var logoIconKey:String = "logoIcon";
		ResourceManagerEx.RegisterResource("",logoIconKey, logoIconCls);
		
		[Embed(source="assets/image/top/title.png")]
		private static var titleIconCls:Class;
		private static var titleIconKey:String = "titleIcon";
		ResourceManagerEx.RegisterResource("",titleIconKey, titleIconCls);
		
		//系统菜单图标
		[Embed(source="assets/image/top/water.png")]
		private static var waterCls:Class;
		private static var waterKey:String = "WaterBodyQuery";
		ResourceManagerEx.RegisterResource("",waterKey, waterCls);
		
		[Embed(source="assets/image/top/map.png")]
		private static var mapCls:Class;
		private static var mapKey:String = "MapService";
		ResourceManagerEx.RegisterResource("",mapKey, mapCls);
		
		[Embed(source="assets/image/top/user.png")]
		private static var userCls:Class;
		private static var userKey:String = "UserLogin";
		ResourceManagerEx.RegisterResource("",userKey, userCls);
		
		public function SystemIconFile()
		{
			super();
		}
		
		override public function onExecute():void
		{
			//更新所有图标
			//ResourceManagerEx.updateAllIcons();
		}
	}
}