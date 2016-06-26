package sm.wegis.szy.vo
{
	public class WSMethod
	{
		public function WSMethod()
		{
		}
		
		//----------Web服务API--------//
		/**登录*/
		public static const Login:String = "login";
		/**关键字搜索目标对象*/
		public static const GetObjsBySearch:String = "getObjsBySearch";
		/**获取主体下的第一级类型*/
		public static const GetMainTypes:String = "getMainTypes";
		/***/
		public static const SearchTargets:String = "searchTargets";
		/**获取目标对象详细信息*/
		public static const GetObjsByType:String = "getObjsByType";
		/**获取下拉框中类型，各级通用*/
		public static const GetTypes:String = "getTypes";
		
		/**获取当个对象监测详细信息*/
		public static const GetTarget:String = "getTarget";
		
		/**获取对象详情信息*/
		public static const GetObjDetailInfo:String = "getObjDetailInfo";
		
		/**--------------水质评价查询接口------------*/
		/**查询水质评价模型点列表*/
		public static const GetSZPJDefaultObj:String = "getSZPJDefaultObj";
		/**查询水质评价，排污口点列表*/
		public static const GetSZYPWKObj:String = "getSZYPWKObj";
		/**查询水质评价河流列表*/
		public static const GetSZPJRiverList:String = "getSZPJRiverList";
		/**查询水质评价河流年份列表*/
		public static const GetSZPJYearList:String = "getSZPJYearList";
		/**查询水质评价周期列表*/
		public static const GetSZPJPeriodList:String = "getSZPJPeriodList";
		/**查询水质评价周期内容信息*/
		public static const GetSZPJRiverLevel:String = "getSZPJRiverLevel";
		/**查询水质评价，河流主要污染指标*/
		public static const GetSZPJItemValue:String = "getSZPJItemValue";
		
		/**水功能区目标水质*/
		public static const GetWaterFounctionWaterregimen:String = "getWaterFounctionWaterregimen";
		
		/**--------------水资源承载力查询接口------------*/
		/**
		 * 行政区承载力情况统计表---1级---接口二
		 */
		public static const GetXZQCondition:String = "getXZQCondition";
		/**
		 
		/**获取水资源承载力年份列表*/
		public static const GetSZYYearList:String = "getSZYYearList";
		
		/**选择年份，点击查询，获取【行政区】（各县）评价数据，用于地图展示*/
		public static const GetXZQDataList:String = "getXZQDataList";
		
		/**
		 * 获取水资源承载力，市气泡数据
		 */
		public static const GetXZQBubbleDetail:String = "getXZQBubbleDetail";
		
		/** 
		 * 河流水功能区水质达标率及污染物入河量情况统计表---2级---接口三
		 */
		public static const GetRiverWaterFounctionCondition:String = "getRiverWaterFounctionCondition";
		/**
		 * 水功能区水质达标率及污染物入河量详情---2级详情表---接口四
		 */
		public static const GetWaterFounctionItemValue:String = "getWaterFounctionItemValue";
		/**
		 * 水功能区排污口污染物入河量详情---3级---接口五
		 */
		public static const GetPWKDetail:String = "getPWKDetail";
		
		/**应急管理----水模型*/
		/**通用【可对比的方案列表】
		 参数：计算方案_id
		 */
		public static const GetCompareblePlanList:String ="getCompareblePlanList";
		
		
		
		/**应急管理----水模型--- 断面计算结果查询*/
		/**
		 * 方案列表获取
		 * */
		public static const GetPlanInfoList:String = "getPlanInfoList";
		
		/**获取单个方案断面列表
		 * */
		public static const GetDmInfoList:String = "getDmInfoList";
		
		/**断面【水位】
		 参数：计算方案_id,断面_id
		 */
		public static const GetWaterDMPositionData:String ="waterDMPositionData";
		
		/**断面【水深】
		 参数：计算方案_id,断面_id
		 */
		public static const GetWaterDMDepthData:String ="waterDMDepthData";
		
		/**断面【流量】
		 参数：计算方案_id,断面_id
		 */
		public static const GetWaterDMFlowData:String ="waterDMFlowData";
		
		/**断面【流速】
		 参数：计算方案_id,断面_id
		 */
		public static const GetWaterDMSpeedData:String ="waterDMSpeedData";
		
		/**断面【污染物浓度】
		 参数：计算方案_id,断面_id
		 */
		public static const GetWaterDMDensityData:String ="";//暂时未实现 
		
		/**断面【地形剖面】
		 参数：计算方案_id,断面_id
		 */
		public static const GetTerrainProfileData:String ="getTerrainProfileData";
		
		/**应急管理----水模型--- 河道计算结果查询*/
		/**河道【水位】
		 参数：计算方案_id,河道_id
		 */
		public static const GetWaterHDPositionData:String ="waterHDPositionData";
		
		/**河道【水深】
		 参数：计算方案_id,河道_id
		 */
		public static const GetWaterHDDepthData:String ="waterHDDepthData";
		
		/**河道【流量】
		 参数：计算方案_id,河道_id
		 */
		public static const GetWaterHDFlowData:String ="waterHDFlowData";
		
		/**河道【流速】
		 参数：计算方案_id,河道_id
		 */
		public static const GetWaterHDSpeedData:String ="waterHDSpeedData";
		
		/**河道【污染物浓度】
		 参数：计算方案_id,河道_id
		 */
		public static const GetWaterHDDensityData:String ="";//暂时未实现
		
		/**河道计算结果导出
		 * 参数：方案ID，计算指标ID
		 * */
		public static const GetHDExportUrlList:String = "getHDExportUrlList";
		
		
		/**断面计算结果导出
		 * 参数：方案ID，断面ID，计算指标ID
		 * */
		public static const GetDMExportUrlList:String = "getDMExportUrlList";
		
	}
}