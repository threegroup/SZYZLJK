package sm.wegis.szy.plugins
{
	import com.supermap.wegis.common.core.plugin.Plugin;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	public class SystemIconFile extends Plugin
	{
		[Embed(source="assets/image/top/banner.png")]
		private static var bannerCls:Class;
		private static var bannerKey:String = "banner";
		ResourceManagerEx.RegisterResource("",bannerKey, bannerCls);
		
		[Embed(source="assets/image/top/logo.png")]
		private static var logoIconCls:Class;
		private static var logoIconKey:String = "logoIcon";
		ResourceManagerEx.RegisterResource("",logoIconKey, logoIconCls);
		
		[Embed(source="assets/image/top/title.png")]
		private static var titleIconCls:Class;
		private static var titleIconKey:String = "titleIcon";
		ResourceManagerEx.RegisterResource("",titleIconKey, titleIconCls);
		
		/**系统选择界面*/
		[Embed(source="assets/image/system/system.png")]
		private static var tzhlyPngCls:Class;
		private static var tzhlyPngKey:String = "TZHLY";
		ResourceManagerEx.RegisterResource("",tzhlyPngKey, tzhlyPngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqskPngCls:Class;
		private static var yqskPngKey:String = "YQSK";
		ResourceManagerEx.RegisterResource("",yqskPngKey, yqskPngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var tzhly1PngCls:Class;
		private static var tzhly1PngKey:String = "TZHLY1";
		ResourceManagerEx.RegisterResource("",tzhly1PngKey, tzhly1PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqsk1PngCls:Class;
		private static var yqsk1PngKey:String = "YQSK1";
		ResourceManagerEx.RegisterResource("",yqsk1PngKey, yqsk1PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var tzhly2PngCls:Class;
		private static var tzhly2PngKey:String = "TZHLY2";
		ResourceManagerEx.RegisterResource("",tzhly2PngKey, tzhly2PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqsk2PngCls:Class;
		private static var yqsk2PngKey:String = "YQSK2";
		ResourceManagerEx.RegisterResource("",yqsk2PngKey, yqsk2PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var tzhly3PngCls:Class;
		private static var tzhly3PngKey:String = "TZHLY3";
		ResourceManagerEx.RegisterResource("",tzhly3PngKey, tzhly3PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqsk3PngCls:Class;
		private static var yqsk3PngKey:String = "YQSK3";
		ResourceManagerEx.RegisterResource("",yqsk3PngKey, yqsk3PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var tzhly4PngCls:Class;
		private static var tzhly4PngKey:String = "TZHLY4";
		ResourceManagerEx.RegisterResource("",tzhly4PngKey, tzhly4PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqsk4PngCls:Class;
		private static var yqsk4PngKey:String = "YQSK4";
		ResourceManagerEx.RegisterResource("",yqsk4PngKey, yqsk4PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var tzhly5PngCls:Class;
		private static var tzhly5PngKey:String = "TZHLY5";
		ResourceManagerEx.RegisterResource("",tzhly5PngKey, tzhly5PngCls);
		
		[Embed(source="assets/image/system/system.png")]
		private static var yqsk5PngCls:Class;
		private static var yqsk5PngKey:String = "YQSK5";
		ResourceManagerEx.RegisterResource("",yqsk5PngKey, yqsk5PngCls);
		
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
		
		//文字前面图片
		[Embed(source="assets/image/list/list1.png")]
		private static var List1Cls:Class;
		private static var List1Key:String = "List1";
		ResourceManagerEx.RegisterResource("",List1Key, List1Cls);
		
		//文字前面图片
		[Embed(source="assets/image/list/list2.png")]
		private static var List2Cls:Class;
		private static var List2Key:String = "List2";
		ResourceManagerEx.RegisterResource("",List2Key, List2Cls);
		
		//文字前面图片
		[Embed(source="assets/image/list/list3.png")]
		private static var List3Cls:Class;
		private static var List3Key:String = "List3";
		ResourceManagerEx.RegisterResource("",List3Key, List3Cls);
		
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