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
		[Embed(source="assets/image/top/banner.png")]
		private static var bgPngCls:Class;
		private static var bgPngKey:String = "banner";
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
		
		//高亮重要水体
		[Embed(source="assets/image/type/water.png")]
		private static var HZYSTCls:Class;
		private static var HZYSTKey:String = "HZYST";
		ResourceManagerEx.RegisterResource("",HZYSTKey, HZYSTCls);
		
		//高亮敏感目标
		[Embed(source="assets/image/type/target.png")]
		private static var HMGMBCls:Class;
		private static var HMGMBKey:String = "HMGMB";
		ResourceManagerEx.RegisterResource("",HMGMBKey, HMGMBCls);
		
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
		
		/**水资源类型图标，每个图标有选择和未选择两张图标*/
		
		/**显示控制图标*/
		[Embed(source="assets/image/location/lcnor.png")]
		private static var lcnorCls:Class;
		private static var lcnorKey:String = "lcnor";
		ResourceManagerEx.RegisterResource("",lcnorKey, lcnorCls);
		
		[Embed(source="assets/image/location/lcsel.png")]
		private static var lcselCls:Class;
		private static var lcselKey:String = "lcsel";
		ResourceManagerEx.RegisterResource("",lcselKey, lcselCls);
		
		//	1_1_1	河流
		//	1_1_2	水库
		//	1_1_3	湖泊
		//	1_2_BB	蒸发站
		//	1_2_DC	地面沉降量测站
		//	1_2_DD	堰闸水文站
		//	1_2_DP	泵站水文站
		//	1_2_EL	其他测站
		//	1_2_MM	气象站
		//	1_2_PP	雨量站
		[Embed(source="assets/image/location/1_2_PP.png")]
		private static var C1_2_PPCls:Class;
		private static var  C1_2_PPKey:String = "1,2,PP";
		ResourceManagerEx.RegisterResource("",C1_2_PPKey, C1_2_PPCls);
		
		[Embed(source="assets/image/location/1_2_PP_S.png")]
		private static var C1_2_PP_SCls:Class;
		private static var  C1_2_PP_SKey:String = "1,2,PP_S";
		ResourceManagerEx.RegisterResource("",C1_2_PP_SKey, C1_2_PP_SCls);
		//	1_2_RR	水库水文站
		[Embed(source="assets/image/location/1_2_RR.png")]
		private static var C1_2_RRCls:Class;
		private static var  C1_2_RRKey:String = "1,2,RR";
		ResourceManagerEx.RegisterResource("",C1_2_RRKey, C1_2_RRCls);
		
		[Embed(source="assets/image/location/1_2_RR_S.png")]
		private static var C1_2_RR_SCls:Class;
		private static var  C1_2_RR_SKey:String = "1,2,RR_S";
		ResourceManagerEx.RegisterResource("",C1_2_RR_SKey, C1_2_RR_SCls);
		//	1_2_SS	墒情站
		//	1_2_TT	潮位站
		[Embed(source="assets/image/location/1_2_TT.png")]
		private static var C1_2_TTCls:Class;
		private static var  C1_2_TTKey:String = "1,2,TT";
		ResourceManagerEx.RegisterResource("",C1_2_TTKey, C1_2_TTCls);
		//	1_2_WQ	水质站
		[Embed(source="assets/image/location/1_2_WQ.png")]
		private static var C1_2_WQCls:Class;
		private static var  C1_2_WQKey:String = "1,2,WQ";
		ResourceManagerEx.RegisterResource("",C1_2_WQKey, C1_2_WQCls);
		//	1_2_ZB	分洪水位站
		//	1_2_ZG	地下水站
		//	1_2_ZQ	河道水文站
		//	1_2_ZZ	河道水文站
		//	1_3_1	水电站
		[Embed(source="assets/image/location/1_3_1.png")]
		private static var C1_3_1Cls:Class;
		private static var  C1_3_1Key:String = "1,3,1";
		ResourceManagerEx.RegisterResource("",C1_3_1Key, C1_3_1Cls);
		//	1_3_2	引调水
		//	1_3_3	水闸
		//	1_3_4	泵站
		[Embed(source="assets/image/location/1_3_4.png")]
		private static var C1_3_4Cls:Class;
		private static var  C1_3_4Key:String = "1,3,4";
		ResourceManagerEx.RegisterResource("",C1_3_4Key, C1_3_4Cls);
		
		[Embed(source="assets/image/location/1_3_4_S.png")]
		private static var C1_3_4_SCls:Class;
		private static var  C1_3_4_SKey:String = "1,3,4_S";
		ResourceManagerEx.RegisterResource("",C1_3_4_SKey, C1_3_4_SCls);
		//	1_3_5	渠道工程
		//	1_3_6	农村供水
		//	1_3_7	灌区
		//	1_3_8	拦河坝
		//	2_1_1	地表取水口
		//	2_1_2	地下取水井
		//	2_2	取用水户
		//	2_3_1	取用水测站
		//	2_3_2	取用水测点
		//	2_4	自来水厂
		//	2_5	入河排污口
		//	2_6	污水处理厂
		//	2_7	水功能区
		//	2_8	河道断面
		//	2_9_1	地表水
		//	2_9_2	地下水

		
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