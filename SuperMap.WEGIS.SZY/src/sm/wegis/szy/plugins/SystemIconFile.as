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
		
		/**底图矢量*/
		[Embed(source="assets/image/basemap/vector.png")]
		private static var vectorPngCls:Class;
		private static var vectorPngKey:String = "vectorPng";
		ResourceManagerEx.RegisterResource("",vectorPngKey, vectorPngCls);
		
		/**底图影像*/
		[Embed(source="assets/image/basemap/image.png")]
		private static var imagePngCls:Class;
		private static var imagePngKey:String = "imagePng";
		ResourceManagerEx.RegisterResource("",imagePngKey, imagePngCls);
		
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