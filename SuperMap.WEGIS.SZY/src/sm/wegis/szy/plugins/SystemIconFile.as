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
		[Embed(source="assets/image/system/tzh.png")]
		private static var tzhlyPngCls:Class;
		private static var tzhlyPngKey:String = "taizihe";
		ResourceManagerEx.RegisterResource("",tzhlyPngKey, tzhlyPngCls);
		
		[Embed(source="assets/image/system/yqsk.png")]
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
		[Embed(source="assets/image/location/1_1_1.png")]
		private static var C1_1_1Cls:Class;
		private static var  C1_1_1Key:String = "1,1,1";
		ResourceManagerEx.RegisterResource("",C1_1_1Key, C1_1_1Cls);
		
		[Embed(source="assets/image/location/1_1_1_S.png")]
		private static var C1_1_1_SCls:Class;
		private static var  C1_1_1_SKey:String = "1,1,1_S";
		ResourceManagerEx.RegisterResource("",C1_1_1_SKey, C1_1_1_SCls);
		//	1_1_2	水库
		[Embed(source="assets/image/location/1_1_2.png")]
		private static var C1_1_2Cls:Class;
		private static var  C1_1_2Key:String = "1,1,2";
		ResourceManagerEx.RegisterResource("",C1_1_2Key, C1_1_2Cls);
		
		[Embed(source="assets/image/location/1_1_2_S.png")]
		private static var C1_1_2_SCls:Class;
		private static var  C1_1_2_SKey:String = "1,1,2_S";
		ResourceManagerEx.RegisterResource("",C1_1_2_SKey, C1_1_2_SCls);
		//	1_1_3	湖泊
		[Embed(source="assets/image/location/1_1_3.png")]
		private static var C1_1_3Cls:Class;
		private static var  C1_1_3Key:String = "1,1,3";
		ResourceManagerEx.RegisterResource("",C1_1_3Key, C1_1_3Cls);
		
		[Embed(source="assets/image/location/1_1_3_S.png")]
		private static var C1_1_3_SCls:Class;
		private static var  C1_1_3_SKey:String = "1,1,3_S";
		ResourceManagerEx.RegisterResource("",C1_1_3_SKey, C1_1_3_SCls);
		//	1_2_BB	蒸发站
		[Embed(source="assets/image/location/1_2_BB.png")]
		private static var C1_2_BBCls:Class;
		private static var  C1_2_BBKey:String = "1,2,BB";
		ResourceManagerEx.RegisterResource("",C1_2_BBKey, C1_2_BBCls);
		
		[Embed(source="assets/image/location/1_2_BB_S.png")]
		private static var C1_2_BB_SCls:Class;
		private static var  C1_2_BB_SKey:String = "1,2,BB_S";
		ResourceManagerEx.RegisterResource("",C1_2_BB_SKey, C1_2_BB_SCls);
		//	1_2_DC	地面沉降量测站
		[Embed(source="assets/image/location/1_2_DC.png")]
		private static var C1_2_DCCls:Class;
		private static var  C1_2_DCKey:String = "1,2,DC";
		ResourceManagerEx.RegisterResource("",C1_2_DCKey, C1_2_DCCls);
		
		[Embed(source="assets/image/location/1_2_DC_S.png")]
		private static var C1_2_DC_SCls:Class;
		private static var  C1_2_DC_SKey:String = "1,2,DC_S";
		ResourceManagerEx.RegisterResource("",C1_2_DC_SKey, C1_2_DC_SCls);
		//	1_2_DD	堰闸水文站
		[Embed(source="assets/image/location/1_2_DD.png")]
		private static var C1_2_DDCls:Class;
		private static var  C1_2_DDKey:String = "1,2,DD";
		ResourceManagerEx.RegisterResource("",C1_2_DDKey, C1_2_DDCls);
		
		[Embed(source="assets/image/location/1_2_DD_S.png")]
		private static var C1_2_DD_SCls:Class;
		private static var  C1_2_DD_SKey:String = "1,2,DD_S";
		ResourceManagerEx.RegisterResource("",C1_2_DD_SKey, C1_2_DD_SCls);
		//	1_2_DP	泵站水文站
		[Embed(source="assets/image/location/1_2_DP.png")]
		private static var C1_2_DPCls:Class;
		private static var  C1_2_DPKey:String = "1,2,DP";
		ResourceManagerEx.RegisterResource("",C1_2_DPKey, C1_2_DPCls);
		
		[Embed(source="assets/image/location/1_2_DP_S.png")]
		private static var C1_2_DP_SCls:Class;
		private static var  C1_2_DP_SKey:String = "1,2,DP_S";
		ResourceManagerEx.RegisterResource("",C1_2_DP_SKey, C1_2_DP_SCls);
		//	1_2_EL	其他测站
		[Embed(source="assets/image/location/1_2_EL.png")]
		private static var C1_2_ELCls:Class;
		private static var  C1_2_ELKey:String = "1,2,EL";
		ResourceManagerEx.RegisterResource("",C1_2_ELKey, C1_2_ELCls);
		
		[Embed(source="assets/image/location/1_2_EL_S.png")]
		private static var C1_2_EL_SCls:Class;
		private static var  C1_2_EL_SKey:String = "1,2,EL_S";
		ResourceManagerEx.RegisterResource("",C1_2_EL_SKey, C1_2_EL_SCls);
		//	1_2_MM	气象站
		[Embed(source="assets/image/location/1_2_MM.png")]
		private static var C1_2_MMCls:Class;
		private static var  C1_2_MMKey:String = "1,2,MM";
		ResourceManagerEx.RegisterResource("",C1_2_MMKey, C1_2_MMCls);
		
		[Embed(source="assets/image/location/1_2_MM_S.png")]
		private static var C1_2_MM_SCls:Class;
		private static var  C1_2_MM_SKey:String = "1,2,MM_S";
		ResourceManagerEx.RegisterResource("",C1_2_MM_SKey, C1_2_MM_SCls);
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
		[Embed(source="assets/image/location/1_2_SS.png")]
		private static var C1_2_SSCls:Class;
		private static var  C1_2_SSKey:String = "1,2,SS";
		ResourceManagerEx.RegisterResource("",C1_2_SSKey, C1_2_SSCls);
		
		[Embed(source="assets/image/location/1_2_SS_S.png")]
		private static var C1_2_SS_SCls:Class;
		private static var  C1_2_SS_SKey:String = "1,2,SS_S";
		ResourceManagerEx.RegisterResource("",C1_2_SS_SKey, C1_2_SS_SCls);
		//	1_2_TT	潮位站
		[Embed(source="assets/image/location/1_2_TT.png")]
		private static var C1_2_TTCls:Class;
		private static var  C1_2_TTKey:String = "1,2,TT";
		ResourceManagerEx.RegisterResource("",C1_2_TTKey, C1_2_TTCls);
		
		[Embed(source="assets/image/location/1_2_TT_S.png")]
		private static var C1_2_TT_SCls:Class;
		private static var  C1_2_TT_SKey:String = "1,2,TT_S";
		ResourceManagerEx.RegisterResource("",C1_2_TT_SKey, C1_2_TT_SCls);
		//	1_2_WQ	水质站
		[Embed(source="assets/image/location/1_2_WQ.png")]
		private static var C1_2_WQCls:Class;
		private static var  C1_2_WQKey:String = "1,2,WQ";
		ResourceManagerEx.RegisterResource("",C1_2_WQKey, C1_2_WQCls);
		
		[Embed(source="assets/image/location/1_2_WQ_S.png")]
		private static var C1_2_WQ_SCls:Class;
		private static var  C1_2_WQ_SKey:String = "1,2,WQ_S";
		ResourceManagerEx.RegisterResource("",C1_2_WQ_SKey, C1_2_WQ_SCls);
		//	1_2_ZB	分洪水位站
		[Embed(source="assets/image/location/1_2_ZB.png")]
		private static var C1_2_ZBCls:Class;
		private static var  C1_2_ZBKey:String = "1,2,ZB";
		ResourceManagerEx.RegisterResource("",C1_2_ZBKey, C1_2_ZBCls);
		
		[Embed(source="assets/image/location/1_2_ZB_S.png")]
		private static var C1_2_ZB_SCls:Class;
		private static var  C1_2_ZB_SKey:String = "1,2,ZB_S";
		ResourceManagerEx.RegisterResource("",C1_2_ZB_SKey, C1_2_ZB_SCls);
		//	1_2_ZG	地下水站
		[Embed(source="assets/image/location/1_2_ZG.png")]
		private static var C1_2_ZGCls:Class;
		private static var  C1_2_ZGKey:String = "1,2,ZG";
		ResourceManagerEx.RegisterResource("",C1_2_ZGKey, C1_2_ZGCls);
		
		[Embed(source="assets/image/location/1_2_ZG_S.png")]
		private static var C1_2_ZG_SCls:Class;
		private static var  C1_2_ZG_SKey:String = "1,2,ZG_S";
		ResourceManagerEx.RegisterResource("",C1_2_ZG_SKey, C1_2_ZG_SCls);
		//	1_2_ZQ	河道水文站
		[Embed(source="assets/image/location/1_2_ZQ.png")]
		private static var C1_2_ZQCls:Class;
		private static var  C1_2_ZQKey:String = "1,2,ZQ";
		ResourceManagerEx.RegisterResource("",C1_2_ZQKey, C1_2_ZQCls);
		
		[Embed(source="assets/image/location/1_2_ZQ_S.png")]
		private static var C1_2_ZQ_SCls:Class;
		private static var  C1_2_ZQ_SKey:String = "1,2,ZQ_S";
		ResourceManagerEx.RegisterResource("",C1_2_ZQ_SKey, C1_2_ZQ_SCls);
		//	1_2_ZZ	河道水文站
		[Embed(source="assets/image/location/1_2_ZZ.png")]
		private static var C1_2_ZZCls:Class;
		private static var  C1_2_ZZKey:String = "1,2,ZZ";
		ResourceManagerEx.RegisterResource("",C1_2_ZZKey, C1_2_ZZCls);
		
		[Embed(source="assets/image/location/1_2_ZZ_S.png")]
		private static var C1_2_ZZ_SCls:Class;
		private static var  C1_2_ZZ_SKey:String = "1,2,ZZ_S";
		ResourceManagerEx.RegisterResource("",C1_2_ZZ_SKey, C1_2_ZZ_SCls);
		//	1_3_1	水电站
		[Embed(source="assets/image/location/1_3_1.png")]
		private static var C1_3_1Cls:Class;
		private static var  C1_3_1Key:String = "1,3,1";
		ResourceManagerEx.RegisterResource("",C1_3_1Key, C1_3_1Cls);
		
		[Embed(source="assets/image/location/1_3_1_S.png")]
		private static var C1_3_1_SCls:Class;
		private static var  C1_3_1_SKey:String = "1,3,1_S";
		ResourceManagerEx.RegisterResource("",C1_3_1_SKey, C1_3_1_SCls);
		//	1_3_2	引调水
		[Embed(source="assets/image/location/1_3_2.png")]
		private static var C1_3_2Cls:Class;
		private static var  C1_3_2Key:String = "1,3,2";
		ResourceManagerEx.RegisterResource("",C1_3_2Key, C1_3_2Cls);
		
		[Embed(source="assets/image/location/1_3_2_S.png")]
		private static var C1_3_2_SCls:Class;
		private static var  C1_3_2_SKey:String = "1,3,2_S";
		ResourceManagerEx.RegisterResource("",C1_3_2_SKey, C1_3_2_SCls);
		//	1_3_3	水闸
		[Embed(source="assets/image/location/1_3_3.png")]
		private static var C1_3_3Cls:Class;
		private static var  C1_3_3Key:String = "1,3,3";
		ResourceManagerEx.RegisterResource("",C1_3_3Key, C1_3_3Cls);
		
		[Embed(source="assets/image/location/1_3_3_S.png")]
		private static var C1_3_3_SCls:Class;
		private static var  C1_3_3_SKey:String = "1,3,3_S";
		ResourceManagerEx.RegisterResource("",C1_3_3_SKey, C1_3_3_SCls);
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
		[Embed(source="assets/image/location/1_3_5.png")]
		private static var C1_3_5Cls:Class;
		private static var  C1_3_5Key:String = "1,3,5";
		ResourceManagerEx.RegisterResource("",C1_3_5Key, C1_3_5Cls);
		
		[Embed(source="assets/image/location/1_3_5_S.png")]
		private static var C1_3_5_SCls:Class;
		private static var  C1_3_5_SKey:String = "1,3,5_S";
		ResourceManagerEx.RegisterResource("",C1_3_5_SKey, C1_3_5_SCls);
		//	1_3_6	农村供水
		[Embed(source="assets/image/location/1_3_6.png")]
		private static var C1_3_6Cls:Class;
		private static var  C1_3_6Key:String = "1,3,6";
		ResourceManagerEx.RegisterResource("",C1_3_6Key, C1_3_6Cls);
		
		[Embed(source="assets/image/location/1_3_6_S.png")]
		private static var C1_3_6_SCls:Class;
		private static var  C1_3_6_SKey:String = "1,3,6_S";
		ResourceManagerEx.RegisterResource("",C1_3_6_SKey, C1_3_6_SCls);
		//	1_3_7	灌区
		[Embed(source="assets/image/location/1_3_7.png")]
		private static var C1_3_7Cls:Class;
		private static var  C1_3_7Key:String = "1,3,7";
		ResourceManagerEx.RegisterResource("",C1_3_7Key, C1_3_7Cls);
		
		[Embed(source="assets/image/location/1_3_7_S.png")]
		private static var C1_3_7_SCls:Class;
		private static var  C1_3_7_SKey:String = "1,3,7_S";
		ResourceManagerEx.RegisterResource("",C1_3_7_SKey, C1_3_7_SCls);
		//	1_3_8	拦河坝
		[Embed(source="assets/image/location/1_3_8.png")]
		private static var C1_3_8Cls:Class;
		private static var  C1_3_8Key:String = "1,3,8";
		ResourceManagerEx.RegisterResource("",C1_3_8Key, C1_3_8Cls);
		
		[Embed(source="assets/image/location/1_3_8_S.png")]
		private static var C1_3_8_SCls:Class;
		private static var  C1_3_8_SKey:String = "1,3,8_S";
		ResourceManagerEx.RegisterResource("",C1_3_8_SKey, C1_3_8_SCls);
		//	2_1_1	地表取水口
		[Embed(source="assets/image/location/2_1_1.png")]
		private static var C2_1_1Cls:Class;
		private static var  C2_1_1Key:String = "2,1,1";
		ResourceManagerEx.RegisterResource("",C2_1_1Key, C2_1_1Cls);
		
		[Embed(source="assets/image/location/2_1_1_S.png")]
		private static var C2_1_1_SCls:Class;
		private static var  C2_1_1_SKey:String = "2,1,1_S";
		ResourceManagerEx.RegisterResource("",C2_1_1_SKey, C2_1_1_SCls);
		//	2_1_2	地下取水井
		[Embed(source="assets/image/location/2_1_2.png")]
		private static var C2_1_2Cls:Class;
		private static var  C2_1_2Key:String = "2,1,2";
		ResourceManagerEx.RegisterResource("",C2_1_2Key, C2_1_2Cls);
		
		[Embed(source="assets/image/location/2_1_1_S.png")]
		private static var C2_1_2_SCls:Class;
		private static var  C2_1_2_SKey:String = "2,1,2_S";
		ResourceManagerEx.RegisterResource("",C2_1_2_SKey, C2_1_2_SCls);
		//	2_2	取用水户
		[Embed(source="assets/image/location/2_2.png")]
		private static var C2_2Cls:Class;
		private static var  C2_2Key:String = "2,2";
		ResourceManagerEx.RegisterResource("",C2_2Key, C2_2Cls);
		
		[Embed(source="assets/image/location/2_1_1_S.png")]
		private static var C2_2_SCls:Class;
		private static var  C2_2_SKey:String = "2,2_S";
		ResourceManagerEx.RegisterResource("",C2_2_SKey, C2_2_SCls);
		//	2_3_1	取用水测站
		[Embed(source="assets/image/location/2_3_1.png")]
		private static var C2_3_1Cls:Class;
		private static var  C2_3_1Key:String = "2,3,1";
		ResourceManagerEx.RegisterResource("",C2_3_1Key, C2_3_1Cls);
		
		[Embed(source="assets/image/location/2_1_1_S.png")]
		private static var C2_3_1_SCls:Class;
		private static var  C2_3_1_SKey:String = "2,3,1_S";
		ResourceManagerEx.RegisterResource("",C2_3_1_SKey, C2_3_1_SCls);
		//	2_3_2	取用水测点
		[Embed(source="assets/image/location/2_3_2.png")]
		private static var C2_3_2Cls:Class;
		private static var  C2_3_2Key:String = "2,3,2";
		ResourceManagerEx.RegisterResource("",C2_3_2Key, C2_3_2Cls);
		
		[Embed(source="assets/image/location/2_1_1_S.png")]
		private static var C2_3_2_SCls:Class;
		private static var  C2_3_2_SKey:String = "2,3,2_S";
		ResourceManagerEx.RegisterResource("",C2_3_2_SKey, C2_3_2_SCls);
		//	2_4	自来水厂
		[Embed(source="assets/image/location/2_4.png")]
		private static var C2_4Cls:Class;
		private static var  C2_4Key:String = "2,4";
		ResourceManagerEx.RegisterResource("",C2_4Key, C2_4Cls);
		
		[Embed(source="assets/image/location/2_4_S.png")]
		private static var C2_4_SCls:Class;
		private static var  C2_4_SKey:String = "2,4_S";
		ResourceManagerEx.RegisterResource("",C2_4_SKey, C2_4_SCls);
		//	2_5	入河排污口
		[Embed(source="assets/image/location/2_5.png")]
		private static var C2_5Cls:Class;
		private static var  C2_5Key:String = "2,5";
		ResourceManagerEx.RegisterResource("",C2_5Key, C2_5Cls);
		
		[Embed(source="assets/image/location/2_5_S.png")]
		private static var C2_5_SCls:Class;
		private static var  C2_5_SKey:String = "2,5_S";
		ResourceManagerEx.RegisterResource("",C2_5_SKey, C2_5_SCls);
		//	2_6	污水处理厂
		[Embed(source="assets/image/location/2_6.png")]
		private static var C2_6Cls:Class;
		private static var  C2_6Key:String = "2,6";
		ResourceManagerEx.RegisterResource("",C2_6Key, C2_6Cls);
		
		[Embed(source="assets/image/location/2_6_S.png")]
		private static var C2_6_SCls:Class;
		private static var  C2_6_SKey:String = "2,6_S";
		ResourceManagerEx.RegisterResource("",C2_6_SKey, C2_6_SCls);
		//	2_7	水功能区
		[Embed(source="assets/image/location/2_7.png")]
		private static var C2_7Cls:Class;
		private static var  C2_7Key:String = "2,7";
		ResourceManagerEx.RegisterResource("",C2_7Key, C2_7Cls);
		
		[Embed(source="assets/image/location/2_7_S.png")]
		private static var C2_7_SCls:Class;
		private static var  C2_7_SKey:String = "2,7_S";
		ResourceManagerEx.RegisterResource("",C2_7_SKey, C2_7_SCls);
		//	2_8	河道断面
		[Embed(source="assets/image/location/2_8.png")]
		private static var C2_8Cls:Class;
		private static var  C2_8Key:String = "2,8";
		ResourceManagerEx.RegisterResource("",C2_8Key, C2_8Cls);
		
		[Embed(source="assets/image/location/2_8_S.png")]
		private static var C2_8_SCls:Class;
		private static var  C2_8_SKey:String = "2,8_S";
		ResourceManagerEx.RegisterResource("",C2_8_SKey, C2_8_SCls);
		//	2_9_1	地表水
		[Embed(source="assets/image/location/2_9_1.png")]
		private static var C2_9_1Cls:Class;
		private static var  C2_9_1Key:String = "2,9,1";
		ResourceManagerEx.RegisterResource("",C2_9_1Key, C2_9_1Cls);
		
		[Embed(source="assets/image/location/2_9_1_S.png")]
		private static var C2_9_1_SCls:Class;
		private static var  C2_9_1_SKey:String = "2,9,1_S";
		ResourceManagerEx.RegisterResource("",C2_9_1_SKey, C2_9_1_SCls);
		//	2_9_2	地下水
		[Embed(source="assets/image/location/2_9_2.png")]
		private static var C2_9_2Cls:Class;
		private static var  C2_9_2Key:String = "2,9,2";
		ResourceManagerEx.RegisterResource("",C2_9_2Key, C2_9_2Cls);
		
		[Embed(source="assets/image/location/2_9_2_S.png")]
		private static var C2_9_2_SCls:Class;
		private static var  C2_9_2_SKey:String = "2,9,2_S";
		ResourceManagerEx.RegisterResource("",C2_9_2_SKey, C2_9_2_SCls);

		
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