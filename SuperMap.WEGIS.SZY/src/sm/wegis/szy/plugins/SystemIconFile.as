package sm.wegis.szy.plugins
{
	import com.supermap.wegis.common.core.plugin.Plugin;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	public class SystemIconFile extends Plugin
	{
		/**logo and title*/
		[Embed(source="assets/image/top/logoT.png")]
		private static var logoTIconCls:Class;
		private static var logoTIconKey:String = "logoTIcon";
		ResourceManagerEx.RegisterResource("",logoTIconKey, logoTIconCls);
		
		/**single logo*/
		[Embed(source="assets/image/top/logo.png")]
		private static var logoIconCls:Class;
		private static var logoIconKey:String = "logoIcon";
		ResourceManagerEx.RegisterResource("",logoIconKey, logoIconCls);
		
		//顶部背景图片
		[Embed(source="assets/image/top/bg.png")]
		private static var bgPngCls:Class;
		private static var bgPngKey:String = "bg";
		ResourceManagerEx.RegisterResource("",bgPngKey, bgPngCls);
		
		/**系统选择界面*/
		[Embed(source="assets/image/system/system.png")]
		private static var tzhlyPngCls:Class;
		private static var tzhlyPngKey:String = "taizihe";
		ResourceManagerEx.RegisterResource("",tzhlyPngKey, tzhlyPngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqskPngCls:Class;
		private static var yqskPngKey:String = "yuqiao";
		ResourceManagerEx.RegisterResource("",yqskPngKey, yqskPngCls);
		
		//如果系统mapId为null,使用默认图片
		[Embed(source="assets/image/system/system.png")]
		private static var defaultPngCls:Class;
		private static var defaultPngKey:String = "defaultSystem";
		ResourceManagerEx.RegisterResource("",defaultPngKey, defaultPngCls);
		
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
		
		/**地图工具栏*/
		[Embed(source="assets/image/tool/area.png")]
		private static var areaCls:Class;
		private static var areaKey:String = "Area";
		ResourceManagerEx.RegisterResource("",areaKey, areaCls);
		
		[Embed(source="assets/image/tool/clear.png")]
		private static var clearCls:Class;
		private static var clearKey:String = "Clear";
		ResourceManagerEx.RegisterResource("",clearKey, clearCls);
		
		[Embed(source="assets/image/tool/distance.png")]
		private static var distanceCls:Class;
		private static var distanceKey:String = "Distance";
		ResourceManagerEx.RegisterResource("",distanceKey, distanceCls);
		
		[Embed(source="assets/image/tool/full.png")]
		private static var fullCls:Class;
		private static var fullKey:String = "Full";
		ResourceManagerEx.RegisterResource("",fullKey, fullCls);
		
		[Embed(source="assets/image/tool/fullextent.png")]
		private static var fullextentCls:Class;
		private static var fullextentKey:String = "FullExtent";
		ResourceManagerEx.RegisterResource("",fullextentKey, fullextentCls);
		
		[Embed(source="assets/image/tool/pan.png")]
		private static var panCls:Class;
		private static var panKey:String = "Pan";
		ResourceManagerEx.RegisterResource("",panKey, panCls);
		
		[Embed(source="assets/image/tool/zoomin.png")]
		private static var zoominCls:Class;
		private static var zoominKey:String = "ZoomIn";
		ResourceManagerEx.RegisterResource("",zoominKey, zoominCls);
		
		[Embed(source="assets/image/tool/zoomout.png")]
		private static var zoomoutCls:Class;
		private static var zoomoutKey:String = "ZoomOut";
		ResourceManagerEx.RegisterResource("",zoomoutKey, zoomoutCls);
		
		[Embed(source="assets/image/tool/left.png")]
		private static var leftCls:Class;
		private static var leftKey:String = "Left";
		ResourceManagerEx.RegisterResource("",leftKey, leftCls);
		
		[Embed(source="assets/image/tool/right.png")]
		private static var rightCls:Class;
		private static var rightKey:String = "Right";
		ResourceManagerEx.RegisterResource("",rightKey, rightCls);
		
		/**显示控制图标*/
		[Embed(source="assets/image/showcontrol/show-a.png")]
		private static var showLayerCls:Class;
		private static var showLayerKey:String = "ShowLayerIcon";
		ResourceManagerEx.RegisterResource("",showLayerKey, showLayerCls);
		
		[Embed(source="assets/image/showcontrol/hide-a.png")]
		private static var hideLayerCls:Class;
		private static var hideLayerKey:String = "HideLayerIcon";
		ResourceManagerEx.RegisterResource("",hideLayerKey, hideLayerCls);
		
		//根节点
		[Embed(source="assets/image/legend/root.png")]
		private static var defaultCls:Class;
		private static var defaultKey:String = "DefaultLayerIcon";
		ResourceManagerEx.RegisterResource("",defaultKey, defaultCls);
		
		//重要水体
		[Embed(source="assets/image/type/water.png")]
		private static var ZYSTCls:Class;
		private static var ZYSTKey:String = "ZYST";
		ResourceManagerEx.RegisterResource("",ZYSTKey, ZYSTCls);
		
		//敏感目标
		[Embed(source="assets/image/type/target.png")]
		private static var MGMBCls:Class;
		private static var MGMBKey:String = "MGMB";
		ResourceManagerEx.RegisterResource("",MGMBKey, MGMBCls);
		
		//地图标识mark图片
		[Embed(source="assets/image/location/lcnor.png")]
		private static var LcNorCls:Class;
		private static var LcNorKey:String = "lcnor";
		ResourceManagerEx.RegisterResource("",LcNorKey, LcNorCls);
		
		//地图标识mark选择图片
		[Embed(source="assets/image/location/lcsel.png")]
		private static var LcSelCls:Class;
		private static var LcSelKey:String = "lcsel";
		ResourceManagerEx.RegisterResource("",LcSelKey, LcSelCls);
		
		//控制panel窗口展开和关闭图片
		[Embed(source="assets/image/others/down.png")]
		private static var DownCls:Class;
		private static var DownKey:String = "Down";
		ResourceManagerEx.RegisterResource("",DownKey, DownCls);
		
		
		//用户登录图标
		[Embed(source="assets/image/login/user.png")]
		private static var userIconCls:Class;
		private static var userIconKey:String = "userIcon";
		ResourceManagerEx.RegisterResource("",userIconKey, userIconCls);
		
		
		[Embed(source="assets/image/tip.png")]
		private static var tipCls:Class;
		private static var tipKey:String = "TIP";
		ResourceManagerEx.RegisterResource("",tipKey, tipCls);
		
		
		
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