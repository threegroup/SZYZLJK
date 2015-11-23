package sm.wegis.szy.plugins
{
	import com.supermap.wegis.common.core.plugin.Plugin;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	public class SystemIconFile extends Plugin
	{
		/**BodyView相关*/
		[Embed(source="assets/image/top/topheadbg.png")]
		private static var topHeadBgCls:Class;
		private static var topHeadBgKey:String = "topHeadBg";
		ResourceManagerEx.RegisterResource("",topHeadBgKey, topHeadBgCls);
		
		[Embed(source="assets/image/top/topmenubg.png")]
		private static var topMenuBgCls:Class;
		private static var topMenuBgKey:String = "topMenuBg";
		ResourceManagerEx.RegisterResource("",topMenuBgKey, topMenuBgCls);
		
		[Embed(source="assets/image/top/logo.png")]
		private static var logoIconCls:Class;
		private static var logoIconKey:String = "logoIcon";
		ResourceManagerEx.RegisterResource("",logoIconKey, logoIconCls);
		
		[Embed(source="assets/image/top/title.png")]
		private static var titleIconCls:Class;
		private static var titleIconKey:String = "titleIcon";
		ResourceManagerEx.RegisterResource("",titleIconKey, titleIconCls);
		
		[Embed(source="assets/image/top/redline.png")]
		private static var redLineCls:Class;
		private static var redLineKey:String = "RedLineManager";
		ResourceManagerEx.RegisterResource("",redLineKey, redLineCls);
		
		[Embed(source="assets/image/top/monitorinfo.png")]
		private static var monitorCls:Class;
		private static var monitorKey:String = "MonitorInfo";
		ResourceManagerEx.RegisterResource("",monitorKey, monitorCls);
		
		[Embed(source="assets/image/top/baseinfo.png")]
		private static var baseCls:Class;
		private static var baseKey:String = "BaseInfo";
		ResourceManagerEx.RegisterResource("",baseKey, baseCls);
		
		[Embed(source="assets/image/top/multiinfo.png")]
		private static var multiCls:Class;
		private static var multiKey:String = "MultipleInfo";
		ResourceManagerEx.RegisterResource("",multiKey, multiCls);
		
		[Embed(source="assets/image/top/infopublish.png")]
		private static var publishCls:Class;
		private static var publishKey:String = "InfoPublish";
		ResourceManagerEx.RegisterResource("",publishKey, publishCls);
		
		[Embed(source="assets/image/top/systemmanager.png")]
		private static var systemCls:Class;
		private static var systemKey:String = "SystemManager";
		ResourceManagerEx.RegisterResource("",systemKey, systemCls);
		
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