package sm.wegis.szy.plugins
{
	import com.supermap.wegis.common.core.plugin.Plugin;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	public class SystemIconFile extends Plugin
	{
		/**infowindwo  linkdoc 关闭按钮*/
		[Embed(source="assets/image/infoclose.png")]
		private static var infocloseCls:Class;
		private static var infocloseKey:String = "infoclose";
		ResourceManagerEx.RegisterResource("",infocloseKey, infocloseCls);
		
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
		
		/**底图地形*/
		[Embed(source="assets/image/basemap/dem.png")]
		private static var demPngCls:Class;
		private static var demPngKey:String = "demPng";
		ResourceManagerEx.RegisterResource("",demPngKey, demPngCls);
		
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
		ResourceManagerEx.RegisterResource("", DownKey, DownCls);
		
		[Embed(source="assets/image/others/home.png")]
		private static var homeCls:Class;
		private static var homeKey:String = "Home";
		ResourceManagerEx.RegisterResource("", homeKey, homeCls);
		
		[Embed(source="assets/image/others/return.png")]
		private static var returnCls:Class;
		private static var returnKey:String = "Return";
		ResourceManagerEx.RegisterResource("", returnKey, returnCls);
		
		[Embed(source="assets/image/others/location.png")]
		private static var locationCls:Class;
		private static var locationKey:String = "Location";
		ResourceManagerEx.RegisterResource("", locationKey, locationCls);
		
		[Embed(source="assets/image/others/detail.png")]
		private static var detailCls:Class;
		private static var detailKey:String = "Detail";
		ResourceManagerEx.RegisterResource("", detailKey, detailCls);
		
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
//			1_1_3	湖泊
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
		
		//
		[Embed(source="assets/image/location/2_8_H.png")]
		private static var C2_8_HCls:Class;
		private static var  C2_8_HKey:String = "2,8_H";
		ResourceManagerEx.RegisterResource("",C2_8_HKey, C2_8_HCls);
		
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
		
		
		/**服务目录图例*/
		[Embed(source="assets/image/legend/root.png")]
		private static var rootCls:Class;
		private static var rootKey:String = "ROOT";
		ResourceManagerEx.RegisterResource("",rootKey, rootCls);
		//居民�
		[Embed(source="assets/image/legend/jmd.png")]
		private static var jmdCls:Class;
		private static var jmdKey:String = "JMD";
		ResourceManagerEx.RegisterResource("",jmdKey, jmdCls);
		
		//交�
		[Embed(source="assets/image/legend/jt.png")]
		private static var jtCls:Class;
		private static var jtKey:String = "JT";
		ResourceManagerEx.RegisterResource("",jtKey, jtCls);
		
		
		//行政边界
		[Embed(source="assets/image/legend/xzbj.png")]
		private static var xzbjCls:Class;
		private static var xzbjKey:String = "XZBJ";
		ResourceManagerEx.RegisterResource("",xzbjKey,xzbjCls);
		
		//河流
		[Embed(source="assets/image/legend/hl.png")]
		private static var hlCls:Class;
		private static var hlKey:String = "HL";
		ResourceManagerEx.RegisterResource("",hlKey, hlCls);
		
		//湖泊
		[Embed(source="assets/image/legend/hp.png")]
		private static var hpCls:Class;
		private static var hpKey:String = "HP";
		ResourceManagerEx.RegisterResource("",hpKey, hpCls);
		
		//组合工程
		[Embed(source="assets/image/legend/组合工程.png")]
		private static var zhgcCls:Class;
		private static var zhgcKey:String = "组合工程";
		ResourceManagerEx.RegisterResource("",zhgcKey, zhgcCls);
		
		//水库
		[Embed(source="assets/image/legend/sk.png")]
		private static var skCls:Class;
		private static var skKey:String = "SK";
		ResourceManagerEx.RegisterResource("",skKey, skCls);
		
		//入河湖排污口
		[Embed(source="assets/image/legend/入河湖排污口.png")]
		private static var rhhpwkCls:Class;
		private static var rhhpwkKey:String = "入河湖排污口";
		ResourceManagerEx.RegisterResource("",rhhpwkKey, rhhpwkCls);
		
		//引调水工程
		[Embed(source="assets/image/legend/引调水工程.png")]
		private static var ydsgcCls:Class;
		private static var ydsgcKey:String = "引调水工程";
		ResourceManagerEx.RegisterResource("",ydsgcKey, ydsgcCls);
		
		//地表水水源地
		[Embed(source="assets/image/legend/地表水水源地.png")]
		private static var dbssydwkCls:Class;
		private static var dbssydKey:String = "地表水水源地";
		ResourceManagerEx.RegisterResource("",dbssydKey, dbssydwkCls);
		
		
		//渠道
		[Embed(source="assets/image/legend/渠道.png")]
		private static var qdCls:Class;
		private static var qdKey:String = "渠道";
		ResourceManagerEx.RegisterResource("",qdKey, qdCls);
		
		//规模以上用水户
		[Embed(source="assets/image/legend/规模以上用水户.png")]
		private static var gmysqshCls:Class;
		private static var gmysqshKey:String = "规模以上用水户";
		ResourceManagerEx.RegisterResource("",gmysqshKey, gmysqshCls);
		
		//公共供水企业
		[Embed(source="assets/image/legend/公共供水企业.png")]
		private static var gggsqyCls:Class;
		private static var gggsqyKey:String = "公共供水企业";
		ResourceManagerEx.RegisterResource("",gggsqyKey, gggsqyCls);
		
		//水利行政机关
		[Embed(source="assets/image/legend/OFLP.png")]
		private static var slxzjgCls:Class;
		private static var slxzjgKey:String = "水利行政机关";
		ResourceManagerEx.RegisterResource("",slxzjgKey, slxzjgCls);
		
		//水利事业单位
		[Embed(source="assets/image/legend/INLP.png")]
		private static var slsydwCls:Class;
		private static var slsydwKey:String = "水利事业单位";
		ResourceManagerEx.RegisterResource("",slsydwKey, slsydwCls);
		
		//水利企业
		[Embed(source="assets/image/legend/ENLP.png")]
		private static var slqyCls:Class;
		private static var slqyKey:String = "水利企业";
		ResourceManagerEx.RegisterResource("",slqyKey, slqyCls);
		
		//水利社会团体
		[Embed(source="assets/image/legend/COLP.png")]
		private static var slshttCls:Class;
		private static var slshttKey:String = "水利社会团体";
		ResourceManagerEx.RegisterResource("",slshttKey, slshttCls);
		
		//乡镇水利管理单位
		[Embed(source="assets/image/legend/UNORTOWN.png")]
		private static var xzslgldwCls:Class;
		private static var xzslgldwKey:String = "乡镇水利管理单位";
		ResourceManagerEx.RegisterResource("",xzslgldwKey, xzslgldwCls);
		
		//河湖取水口
		[Embed(source="assets/image/legend/河湖取水口.png")]
		private static var hhqskCls:Class;
		private static var hhqskKey:String = "河湖取水口";
		ResourceManagerEx.RegisterResource("",hhqskKey, hhqskCls);
		
		//规模化养殖场
		[Embed(source="assets/image/legend/规模化养殖场.png")]
		private static var gmhyzcCls:Class;
		private static var gmhyzcKey:String = "规模化养殖场";
		ResourceManagerEx.RegisterResource("",gmhyzcKey, gmhyzcCls);
		
		//水利行业单位
		[Embed(source="assets/image/legend/水利行业单位.png")]
		private static var slhydwCls:Class;
		private static var slhydwKey:String = "水利行业单位";
		ResourceManagerEx.RegisterResource("",slhydwKey, slhydwCls);
		
		//小型水闸
		[Embed(source="assets/image/legend/小型水闸.png")]
		private static var xxszCls:Class;
		private static var xxszKey:String = "小型水闸";
		ResourceManagerEx.RegisterResource("",xxszKey, xxszCls);
		
		//中型水闸
		[Embed(source="assets/image/legend/中型水闸.png")]
		private static var zxszCls:Class;
		private static var zxszKey:String = "中型水闸";
		ResourceManagerEx.RegisterResource("",zxszKey, zxszCls);
		
		//大型水闸
		[Embed(source="assets/image/legend/大型水闸.png")]
		private static var dxszCls:Class;
		private static var dxszKey:String = "大型水闸";
		ResourceManagerEx.RegisterResource("",dxszKey, dxszCls);
		
		//水库大坝
		[Embed(source="assets/image/legend/水库大坝.png")]
		private static var skdbCls:Class;
		private static var skdbKey:String = "水库大坝";
		ResourceManagerEx.RegisterResource("",skdbKey, skdbCls);
		
		
		
		
		//小一型水�
		[Embed(source="assets/image/legend/xyxsk.png")]
		private static var xyskCls:Class;
		private static var xyskKey:String = "小一型水库";
		ResourceManagerEx.RegisterResource("",xyskKey, xyskCls);
		
		//小二型水�
		[Embed(source="assets/image/legend/xexsk.png")]
		private static var xeskCls:Class;
		private static var xeskKey:String = "小二型水库";
		ResourceManagerEx.RegisterResource("",xeskKey, xeskCls);
		
		//堤防
		[Embed(source="assets/image/legend/df.png")]
		private static var dfCls:Class;
		private static var dfKey:String = "DF";
		ResourceManagerEx.RegisterResource("",dfKey, dfCls);
		
		//农村供水工程
		[Embed(source="assets/image/legend/ncgsgc.png")]
		private static var ncgsgcCls:Class;
		private static var ncgsgcKey:String = "农村供水工程";
		ResourceManagerEx.RegisterResource("",ncgsgcKey, ncgsgcCls);
		
		//水闸
		[Embed(source="assets/image/legend/sz.png")]
		private static var szCls:Class;
		private static var szKey:String = "水闸";
		ResourceManagerEx.RegisterResource("",szKey, szCls);
		
		//泵站
		[Embed(source="assets/image/legend/bz.png")]
		private static var bzCls:Class;
		private static var bzKey:String = "泵站";
		ResourceManagerEx.RegisterResource("",bzKey, bzCls);
		
		//水电�
		[Embed(source="assets/image/legend/sdz.png")]
		private static var sdzCls:Class;
		private static var sdzKey:String = "水电站";
		ResourceManagerEx.RegisterResource("",sdzKey, sdzCls);
		
		//灌区 
		[Embed(source="assets/image/legend/gq.png")]
		private static var gzCls:Class;
		private static var gzKey:String = "GQU";
		ResourceManagerEx.RegisterResource("",gzKey, gzCls);
		
		//蓄滞洪区
		[Embed(source="assets/image/legend/xzhq.png")]
		private static var xzhqCls:Class;
		private static var xzhqKey:String = "XZHQ";
		ResourceManagerEx.RegisterResource("",xzhqKey, xzhqCls);
		
		//洲滩民垸
		[Embed(source="assets/image/legend/ztmy.png")]
		private static var ztmyCls:Class;
		private static var ztmyKey:String = "ZTMY";
		ResourceManagerEx.RegisterResource("",ztmyKey, ztmyCls);
		
		//控制�
		[Embed(source="assets/image/legend/root.png")]
		private static var kzzCls:Class;
		private static var kzzKey:String = "KZZ";
		ResourceManagerEx.RegisterResource("",kzzKey, kzzCls);
		
		//雨量�
		[Embed(source="assets/image/legend/ylz.png")]
		private static var ylzCls:Class;
		private static var ylzKey:String = "雨量站";
		ResourceManagerEx.RegisterResource("",ylzKey, ylzCls);
		
		//雨量�2
		[Embed(source="assets/image/legend/ylz2.png")]
		private static var ylz2Cls:Class;
		private static var ylz2Key:String = "雨量站2";
		ResourceManagerEx.RegisterResource("",ylz2Key, ylz2Cls);
		
		//雨量�3
		[Embed(source="assets/image/legend/ylz3.png")]
		private static var ylz3Cls:Class;
		private static var ylz3Key:String = "雨量站3";
		ResourceManagerEx.RegisterResource("",ylz3Key, ylz3Cls);
		
		//水文�
		[Embed(source="assets/image/legend/swenz.png")]
		private static var swenzCls:Class;
		private static var swenzKey:String = "水文站";
		ResourceManagerEx.RegisterResource("",swenzKey, swenzCls);
		
		//水文�2
		[Embed(source="assets/image/legend/swenz2.png")]
		private static var swenz2Cls:Class;
		private static var swenz2Key:String = "水文站2";
		ResourceManagerEx.RegisterResource("",swenz2Key, swenz2Cls);
		
		//水位�
		[Embed(source="assets/image/legend/sweiz.png")]
		private static var sweizCls:Class;
		private static var sweizKey:String = "水位站";
		ResourceManagerEx.RegisterResource("",sweizKey, sweizCls);
		
		//墒情�
		[Embed(source="assets/image/legend/sqz.png")]
		private static var sqzCls:Class;
		private static var sqzKey:String = "墒情站";
		ResourceManagerEx.RegisterResource("",sqzKey, sqzCls);
		
		//水土保持监测�
		[Embed(source="assets/image/legend/stbcjcz.png")]
		private static var stbcjczCls:Class;
		private static var stbcjczKey:String = "水土保持监测站";
		ResourceManagerEx.RegisterResource("",stbcjczKey, stbcjczCls);
		
		//地下水监测站
		[Embed(source="assets/image/legend/dxsjcz.png")]
		private static var dxsjczCls:Class;
		private static var dxsjczKey:String = "地下水监测站";
		ResourceManagerEx.RegisterResource("",dxsjczKey, dxsjczCls);
		
		//地下水取水井
		[Embed(source="assets/image/legend/地下水取水井.png")]
		private static var dixiashuiCls:Class;
		private static var dixiashuiKey:String = "地下水取水井";
		ResourceManagerEx.RegisterResource("",dixiashuiKey, dixiashuiCls);
		
		//橡胶坝
		[Embed(source="assets/image/legend/橡胶坝.png")]
		private static var xjbCls:Class;
		private static var xjbKey:String = "橡胶坝";
		ResourceManagerEx.RegisterResource("",xjbKey, xjbCls);
		
		//灌区
		[Embed(source="assets/image/legend/灌区.png")]
		private static var guanquCls:Class;
		private static var guanquKey:String = "灌区";
		ResourceManagerEx.RegisterResource("",guanquKey, guanquCls);
		
		
		/**新增图例*/
		[Embed(source="assets/image/legend/df1.png")]
		private static var df1Cls:Class;
		private static var df1Key:String = "df1";
		ResourceManagerEx.RegisterResource("",df1Key, df1Cls);
		
		
		[Embed(source="assets/image/legend/df2.png")]
		private static var df2Cls:Class;
		private static var df2Key:String = "df2";
		ResourceManagerEx.RegisterResource("",df2Key, df2Cls);
		
		[Embed(source="assets/image/legend/df3.png")]
		private static var df3Cls:Class;
		private static var df3Key:String = "df3";
		ResourceManagerEx.RegisterResource("",df3Key, df3Cls);
		
		[Embed(source="assets/image/legend/df4.png")]
		private static var df4Cls:Class;
		private static var df4Key:String = "df4";
		ResourceManagerEx.RegisterResource("",df4Key, df4Cls);
		
		[Embed(source="assets/image/legend/gd.png")]
		private static var gdCls:Class;
		private static var gdKey:String = "gd";
		ResourceManagerEx.RegisterResource("",gdKey, gdCls);
		
		[Embed(source="assets/image/legend/gd2.png")]
		private static var gd2Cls:Class;
		private static var gd2Key:String = "gd2";
		ResourceManagerEx.RegisterResource("",gd2Key, gd2Cls);
		
		[Embed(source="assets/image/legend/gq.png")]
		private static var gq1Cls:Class;
		private static var gq1Key:String = "gq";
		ResourceManagerEx.RegisterResource("",gq1Key, gq1Cls);
		
		[Embed(source="assets/image/legend/gs.png")]
		private static var gsCls:Class;
		private static var gsKey:String = "gs";
		ResourceManagerEx.RegisterResource("",gsKey, gsCls);
		
		[Embed(source="assets/image/legend/hl1.png")]
		private static var hl1Cls:Class;
		private static var hl1Key:String = "hl1";
		ResourceManagerEx.RegisterResource("",hl1Key, hl1Cls);
		
		[Embed(source="assets/image/legend/jd.png")]
		private static var jdCls:Class;
		private static var jdKey:String = "jd";
		ResourceManagerEx.RegisterResource("",jdKey, jdCls);
		
		[Embed(source="assets/image/legend/qd.png")]
		private static var qd1Cls:Class;
		private static var qd1Key:String = "qd";
		ResourceManagerEx.RegisterResource("",qd1Key, qd1Cls);
		
		[Embed(source="assets/image/legend/sd.png")]
		private static var sdCls:Class;
		private static var sdKey:String = "sd";
		ResourceManagerEx.RegisterResource("",sdKey, sdCls);
		
		[Embed(source="assets/image/legend/sdz1.png")]
		private static var sdz1Cls:Class;
		private static var sdz1Key:String = "sdz1";
		ResourceManagerEx.RegisterResource("",sdz1Key, sdz1Cls);
		
		[Embed(source="assets/image/legend/sdz2.png")]
		private static var sdz2Cls:Class;
		private static var sdz2Key:String = "sdz2";
		ResourceManagerEx.RegisterResource("",sdz2Key, sdz2Cls);
		
		[Embed(source="assets/image/legend/sdz3.png")]
		private static var sdz3Cls:Class;
		private static var sdz3Key:String = "sdz3";
		ResourceManagerEx.RegisterResource("",sdz3Key, sdz3Cls);
		
		[Embed(source="assets/image/legend/shui.png")]
		private static var shuiCls:Class;
		private static var shuiKey:String = "shui";
		ResourceManagerEx.RegisterResource("",shuiKey, shuiCls);
		
		[Embed(source="assets/image/legend/sj.png")]
		private static var sjCls:Class;
		private static var sjKey:String = "sj";
		ResourceManagerEx.RegisterResource("",sjKey, sjCls);
		
		
		[Embed(source="assets/image/legend/sk1.png")]
		private static var sk1Cls:Class;
		private static var sk1Key:String = "sk1";
		ResourceManagerEx.RegisterResource("",sk1Key, sk1Cls);
		
		[Embed(source="assets/image/legend/sk2.png")]
		private static var sk2Cls:Class;
		private static var sk2Key:String = "sk2";
		ResourceManagerEx.RegisterResource("",sk2Key, sk2Cls);
		
		[Embed(source="assets/image/legend/sweiz2.png")]
		private static var sweiz2Cls:Class;
		private static var sweiz2Key:String = "sweiz2";
		ResourceManagerEx.RegisterResource("",sweiz2Key, sweiz2Cls);
		
		[Embed(source="assets/image/legend/swz1.png")]
		private static var swz1Cls:Class;
		private static var swz1Key:String = "swz1";
		ResourceManagerEx.RegisterResource("",swz1Key, swz1Cls);
		
		[Embed(source="assets/image/legend/sz1.png")]
		private static var sz1Cls:Class;
		private static var sz1Key:String = "sz1";
		ResourceManagerEx.RegisterResource("",sz1Key, sz1Cls);
		
		[Embed(source="assets/image/legend/sz2.png")]
		private static var sz2Cls:Class;
		private static var sz2Key:String = "sz2";
		ResourceManagerEx.RegisterResource("",sz2Key, sz2Cls);
		
		[Embed(source="assets/image/legend/sz3.png")]
		private static var sz3Cls:Class;
		private static var sz3Key:String = "sz3";
		ResourceManagerEx.RegisterResource("",sz3Key, sz3Cls);
		
		[Embed(source="assets/image/legend/tl.png")]
		private static var tlCls:Class;
		private static var tlKey:String = "tl";
		ResourceManagerEx.RegisterResource("",tlKey, tlCls);
		
		[Embed(source="assets/image/legend/xd.png")]
		private static var xdCls:Class;
		private static var xdKey:String = "xd";
		ResourceManagerEx.RegisterResource("",xdKey, xdCls);
		
		[Embed(source="assets/image/legend/xjb.png")]
		private static var xjb2Cls:Class;
		private static var xjb2Key:String = "xjb";
		ResourceManagerEx.RegisterResource("",xjb2Key, xjb2Cls);
		
		[Embed(source="assets/image/legend/yds.png")]
		private static var ydsCls:Class;
		private static var ydsKey:String = "yds";
		ResourceManagerEx.RegisterResource("",ydsKey, ydsCls);
		
		//土地利用图例
		[Embed(source="assets/image/legend/21.png")]
		private static var s21Cls:Class;
		private static var s21Key:String = "21";
		ResourceManagerEx.RegisterResource("",s21Key, s21Cls);
		
		[Embed(source="assets/image/legend/22.png")]
		private static var s22Cls:Class;
		private static var s22Key:String = "22";
		ResourceManagerEx.RegisterResource("",s22Key, s22Cls);
		
		[Embed(source="assets/image/legend/23.png")]
		private static var s23Cls:Class;
		private static var s23Key:String = "23";
		ResourceManagerEx.RegisterResource("",s23Key, s23Cls);
		
		[Embed(source="assets/image/legend/31.png")]
		private static var s31Cls:Class;
		private static var s31Key:String = "31";
		ResourceManagerEx.RegisterResource("",s31Key, s31Cls);
		
		[Embed(source="assets/image/legend/32.png")]
		private static var s32Cls:Class;
		private static var s32Key:String = "32";
		ResourceManagerEx.RegisterResource("",s32Key, s32Cls);
		
		[Embed(source="assets/image/legend/33.png")]
		private static var s33Cls:Class;
		private static var s33Key:String = "33";
		ResourceManagerEx.RegisterResource("",s33Key, s33Cls);
		
		[Embed(source="assets/image/legend/41.png")]
		private static var s41Cls:Class;
		private static var s41Key:String = "41";
		ResourceManagerEx.RegisterResource("",s41Key, s41Cls);
		
		[Embed(source="assets/image/legend/42.png")]
		private static var s42Cls:Class;
		private static var s42Key:String = "42";
		ResourceManagerEx.RegisterResource("",s42Key, s42Cls);
		
		[Embed(source="assets/image/legend/43.png")]
		private static var s43Cls:Class;
		private static var s43Key:String = "43";
		ResourceManagerEx.RegisterResource("",s43Key, s43Cls);
		
		[Embed(source="assets/image/legend/51.png")]
		private static var s51Cls:Class;
		private static var s51Key:String = "51";
		ResourceManagerEx.RegisterResource("",s51Key, s51Cls);
		
		[Embed(source="assets/image/legend/52.png")]
		private static var s52Cls:Class;
		private static var s52Key:String = "52";
		ResourceManagerEx.RegisterResource("",s52Key, s52Cls);
		
		[Embed(source="assets/image/legend/53.png")]
		private static var s53Cls:Class;
		private static var s53Key:String = "53";
		ResourceManagerEx.RegisterResource("",s53Key, s53Cls);
		
		
		[Embed(source="assets/image/legend/61.png")]
		private static var s61Cls:Class;
		private static var s61Key:String = "61";
		ResourceManagerEx.RegisterResource("",s61Key, s61Cls);
		
		[Embed(source="assets/image/legend/62.png")]
		private static var s62Cls:Class;
		private static var s62Key:String = "62";
		ResourceManagerEx.RegisterResource("",s62Key, s62Cls);
		
		[Embed(source="assets/image/legend/63.png")]
		private static var s63Cls:Class;
		private static var s63Key:String = "63";
		ResourceManagerEx.RegisterResource("",s63Key, s63Cls);
		
		[Embed(source="assets/image/legend/111.png")]
		private static var s111Cls:Class;
		private static var s111Key:String = "111";
		ResourceManagerEx.RegisterResource("",s111Key, s111Cls);
		
		[Embed(source="assets/image/legend/112.png")]
		private static var s112Cls:Class;
		private static var s112Key:String = "112";
		ResourceManagerEx.RegisterResource("",s112Key, s112Cls);
		
		[Embed(source="assets/image/legend/113.png")]
		private static var s113Cls:Class;
		private static var s113Key:String = "113";
		ResourceManagerEx.RegisterResource("",s113Key, s113Cls);
		
		[Embed(source="assets/image/legend/121.png")]
		private static var s121Cls:Class;
		private static var s121Key:String = "121";
		ResourceManagerEx.RegisterResource("",s121Key, s121Cls);
		
		[Embed(source="assets/image/legend/122.png")]
		private static var s122Cls:Class;
		private static var s122Key:String = "122";
		ResourceManagerEx.RegisterResource("",s122Key, s122Cls);
		
		[Embed(source="assets/image/legend/123.png")]
		private static var s123Cls:Class;
		private static var s123Key:String = "123";
		ResourceManagerEx.RegisterResource("",s123Key, s123Cls);
		
		[Embed(source="assets/image/station.png")]
		private static var stationCls:Class;
		private static var stationKey:String = "station";
		ResourceManagerEx.RegisterResource("",stationKey, stationCls);
		
		[Embed(source="assets/image/period.png")]
		private static var periodCls:Class;
		private static var periodKey:String = "period";
		ResourceManagerEx.RegisterResource("",periodKey, periodCls);
		
		[Embed(source="assets/image/theme.png")]
		private static var themeCls:Class;
		private static var themeKey:String = "theme";
		ResourceManagerEx.RegisterResource("",themeKey, themeCls);
		
		[Embed(source="assets/image/report.png")]
		private static var reportCls:Class;
		private static var reportKey:String = "report";
		ResourceManagerEx.RegisterResource("",reportKey, reportCls);
		
		[Embed(source="assets/image/model.png")]
		private static var modelCls:Class;
		private static var modelKey:String = "model";
		ResourceManagerEx.RegisterResource("",modelKey, modelCls);
		
		/**播放*/
		[Embed(source="assets/image/play/play.png")]
		private static var playCls:Class;
		private static var playKey:String = "play";
		ResourceManagerEx.RegisterResource("",playKey, playCls);
		
		[Embed(source="assets/image/play/pause.png")]
		private static var pauseCls:Class;
		private static var pauseKey:String = "pause";
		ResourceManagerEx.RegisterResource("",pauseKey, pauseCls);
		
		[Embed(source="assets/image/play/stop.png")]
		private static var stopCls:Class;
		private static var stopKey:String = "stop";
		ResourceManagerEx.RegisterResource("",stopKey, stopCls);

		
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