package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class QueryEvent extends CairngormEvent
	{
		public function QueryEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		/**模块从父容器移除*/
		public static const WIDGET_REMOVE:String = "WidgetRemove";
		
		/**模块加载完成*/
		public static const WIDGET_ADD_COMPLETE:String = "WidgetAddComplete";
		
		/**隐藏查询右侧面板*/
		public static const HIDE_WATER_WATCH_WIDGET:String = "HideWaterWatchWidget";
		
		/**查询第一级类型*/
		public static const QUERY_MAIN_TYPES:String = "QueryMainTypes";
		
		/**要素一级及多级分类结果派发其他事件监听*/
		public static const QUERY_MAIN_TYPES_RESPONSE:String = "QueryMainTypesResponse";
		
		/**查询要素二级及多级分类*/
		public static const QUERY_TYPES_AND_DETAIL_LIST:String = "QueryTypesAndDetailList";
		
		/**要素二级及多级分类结果派发其他事件监听*/
		public static const QUERY_TYPES_AND_DETAIL_LIST_RESPONSE:String = "QueryTypesAndDetailListResponse";
		
		/**查询单个要素，监测数据*/
		public static const QUERY_STATION_REAL_INFO:String = "QueryStationRealInfo"
			
		/**响应查询单个要素，监测数据查询*/
		public static const QUERY_STATION_REAL_INFO_RESPONSE:String = "QueryStationRealInfoResponse";
		
		/**查询要素详情*/
		public static const QUERY_OBJECT_DETAIL:String = "QueryObjectDetail";
		
		/**显示要素详情*/
		public static const SHOW_OBJECT_DETAIL:String = "ShowObjectDetail";
		
		/**查询默认断面，测站，功能区点*/
		public static  const QUERY_DEFAULT_POINT:String = "QueryDefaultPoint";
		public static  const QUERY_DEFAULT_POINT_RESPONSE:String = "QueryDefaultPointResponse";
		
		/**查询排污口*/
		public static  const QUERY_POLLUTION_POINT:String = "QueryPollutionPoint";
		public static  const QUERY_POLLUTION_POINT_RESPONSE:String = "QueryPollutionPointResponse";

		/**----------------------水质评价----------------*/
		/**水质评价查询单个要素，监测数据*/
		public static const QUERY_STATION_EVALUTION_INFO:String = "QueryStationEvalutionInfo";
		
		/**水质评价，查询当前waterbodyId下，水功能区目标水质*/
		public static const QUERY_WATER_FUNCTION_DESTINATION_INFO:String = "QueryWaterFunctionDestinationInfo";
		
		/**查询河流列表*/
		public static  const QUERY_RIVER_LIST:String = "QueryRiverList";
		public static  const QUERY_RIVER_LIST_RESPONSE:String = "QueryRiverListResponse";
		
		/**查询河流评价年份列表*/
		public static  const QUERY_RIVER_YEAR:String = "QueryRiverYear";
		public static  const QUERY_RIVER_YEAR_RESPONSE:String = "QueryRiverYearResponse";
		
		/**查询水资源承载力评价年份列表*/
		public static  const QUERY_RIVER_CAPACITY_YEAR:String = "QueryRiverCapacityYear";
		public static  const QUERY_RIVER_CAPACITY_YEAR_RESPONSE:String = "QueryRiverCapacityYearResponse";
		
		/**查询水质评价数据*/
		public static const QUERY_WATEREVALUATION_RESULT:String = "QueryWaterEvaluationResult";
		public static const QUERY_WATEREVALUATION_RESULT_RESPONSE:String = "QueryWaterEvaluationResultResponse";
		
		/**查询河流评价周期列表*/
		public static  const QUERY_RIVER_PERIOD:String = "QueryRiverPeriod";
		public static  const QUERY_RIVER_PERIOD_RESPONSE:String = "QueryRiverPeriodResponse";
		
		/**查询河流评价周期数据*/
		public static  const QUERY_RIVER_PERIOD_DATA:String = "QueryRiverPeriodData";
		public static  const QUERY_RIVER_PERIOD_DATA_RESPONSE:String = "QueryRiverPeriodDataResponse";
		
		/**水质评价响应查询单个要素，监测数据查询*/
		public static const QUERY_STATION_EVALUTION_INFO_RESPONSE:String = "QueryStationEvalutionInfoResponse";
		
		/**隐藏查询右侧面板*/
		public static const HIDE_WATER_EVALUTION_WIDGET:String = "HideWaterEvalutionWidget";
		
		/**水质评价，查询水功能区*/
		public static const QUERY_WATER_FUNCTION_REGION:String = "QueryWaterFunctionRegion";
		
		/**水质评价，显示水质专题图图例*/
		public static const Change_Water_Evaluation_Legend:String = "ChangeWaterEvaluationLegend";
		
		/**水质评价--水资源承载力，显示水资源承载力专题图图例*/
		public static const CHANGE_WATER_CAPACITY_LEGEND:String = "ChangeWaterCapacityLegend";
		
		/**水质评价查询条件自定义时间段激活*/
		public static const INVOKE_TIME_SPAN_CONDITION:String = "InvokeTimeSpanCondition";
		
		/**水质评价，控制水质专题地图类型面板显示和隐藏*/
		public static const SHOW_THEME_MAP_TYPE_PANEL_VISIBLE:String = "ShowThemeMapTypePanel";
		
		/**水质评价，河流点击事件*/
		public static const WATER_EVALUATION_THEME_MAP_RIVER_CLICK:String = "WaterEvaluationThemeMapRiverClick";
		
		/**水质评价，查询河流主要污染指标信息*/
		public static const QUERY_RIVER_MAIN_POLLUTION:String = "QueryRiverMainPollution";
		
		/**水质评价，查询保存的专题图数据*/
		public static const QUERY_SAVE_THEME_MAP:String = "QuerySaveThemeMap";
		
		/**设置专题图类型*/
		public static const CHANGE_THEME_MAP_TYPE:String = "ChangeThemeMapType";
		
		/**查询水资源承载力，市地图业务数据*/
		public static const QUERY_COUNTY_THEME_DATA:String = "QueryCountyThemeData";
		
		//-----------------------水资源承载力----------------------------------------------------------------
		
		/**查询行政区划气泡数据*/
		public static const QUERY_COUNTY_INFO_DATA:String = "QueryCountyInfoData";
		
		/**查询水资源承载力，在窗口底部显示表格数据*/
		public static const SHOW_WATER_CAPACITY_DATA:String = "Show_Water_Capacity_Data";
		
		/**查询水资源承载力，在窗口底部显示污染物浓度监测详情数据*/
		public static const SHOW_WATER_CAPACITY_MONITOR_DATA:String = "Show_Water_Capacity_Monitor_Data";
		
		/**行政区承载力情况统计表---1级---接口二*/
		public static const GET_XZQ_CONDITION:String = "GetXZQCondition";
		/**行政区承载力情况统计表---1级---接口二*/
		public static const GET_XZQ_CONDITION_RESPONSE:String = "GetXZQConditionResponse";
		
		/**河流水功能区水质达标率及污染物入河量情况统计表---2级---接口三*/
		public static const GET_RIVER_WATER_FOUNCTION_CONDITION:String = "GetRiverWaterFounctionCondition";
		/**河流水功能区水质达标率及污染物入河量情况统计表---2级---接口三*/
		public static const GET_RIVER_WATER_FOUNCTION_CONDITION_RESPONSE:String = "GetRiverWaterFounctionConditionResponse";
		
		/**水功能区水质达标率及污染物入河量详情---2级详情表---接口四*/
		public static const GET_WATER_FOUNCTION_ITEM_VALUE:String = "GetWaterFounctionItemValue";
		/**水功能区水质达标率及污染物入河量详情---2级详情表---接口四*/
		public static const GET_WATER_FOUNCTION_ITEM_VALUE_RESPONSE:String = "GetWaterFounctionItemValueResponse";
		
		/**水功能区排污口污染物入河量详情---3级---接口五*/
		public static const GET_PWK_DETAIL:String = "GetPWKDetail";
		/**水功能区排污口污染物入河量详情---3级---接口五*/
		public static const GET_PWK_DETAIL_RESPONSE:String = "GetPWKDetailResponse";
	}
}