package sm.wegis.szy.vo
{
	public class ConstVO
	{
		/**要素图片Y轴偏移值*/
		public static const PICTURE_FEATURE_YOFFSET:int = 12;
		
		
		/**底图类型，矢量，影像，地形*/
		public static const VectorType:String = "vectorType";
		public static const ImageType:String = "imageType";
		public static const DemType:String = "demType";
		
		
		/**矢量底图*/
		public  static const BaseMapVectorLayerId:String = "baseMapVectorLayerId";
		
		/**影像底图*/
		public  static const BaseMapImageLayerId:String = "BaseMapImageLayerId";
		
		/**水资源底图图层名称*/
		public static const WaterResourceLayerId:String = "waterResourceLayerId";
		
		/**水资源遮罩底图图层名称*/
		public static const WaterResourceMaskLayerId:String = "waterResourceMaskLayerId";
		
		/**重要水体，敏感目标地图定位*/
		public static const LOCATION_FEATURE_LAYER:String = "importWaterLocationFeatureLayer";
		
		/**重要水体，敏感目标地图定位注记图层*/
		public static const LOCATION_FEATURETEXT_LAYER:String = "importWaterLocationFeatureTextLayer";
		
		/**信息查询，河流图层*/
		public static const INFOQUERY_RIVER_LAYER:String = "InfoQueryRiverLayer";
		
		/**水质评价，默认监测断面点矢量图层*/
		public static const EVALUATION_FEATURE_LAYER:String = "EvaluationFeatureLayer";
		
		/**水质评价，排污点矢量图层*/
		public static const EVALUATION_POLLUTION_STATION_LAYER:String = "EvaluationPollutionStationLayer";
		
		/**水质评价，河流点击，查询显示主要污染指标矢量图层*/
		public static const MAIN_EVALUATION_TARGET_INFO_LAYER:String = "MainEvaluationTargetInfoLayer"
		/**水质评价，水功能区矢量图层*/
		public static const WATERFUNCTION_FEATURE_LAYER:String = "WaterFunctionFeatureLayer";
		
		/**水质评价，显示水功能区水质评价文本数据*/
		public static const WATERFUNCTION_EVALUATE_LAYER:String = "waterFunctionEvaluateLayer";
		
		/**水质评价，水功能区文本图层*/
		public static const WATERFUNCTION_FEATURETEXT_LAYER:String = "WaterFunctionFeatureTextLayer";
		
		/**水质评价，河流图层*/
		public static const WATERRIVER_FEATURE_LAYER:String = "WaterRiverFeatureLayer";
		
		/**水资源承载力，县界图层*/
		public static const WATERCOUNTY_FEATURE_LAYER:String = "WaterCountyFeatureLayer";
		
		/**水质评价，专题地图——河流水质评价类型*/
		public static const RIVER_WATER_EVALUATION_THEME_TYPE:String = "riverWaterEvaluationThemeType";
		/**水质评价，专题地图——水功能区水质评价类型*/
		public static const FUNCTION_EVALUATION_THEME_TYPE:String = "functionEvaluationThemeType";
		/**水质评价，专题地图——水功能区是否达标类型*/
		public static const FUNCTION_STANDARD_THEME_TYPE:String = "functionStandardThemeType";
		/**水质评价，专题地图——水功能区目标水质类型*/
		public static const FUNCTION_DESTINATION_THEME_TYPE:String = "functionDestinationThemeType";
		/**水质评价，专题地图——行政区划专题图*/
		public static const COUNTY_THEME_TYPE:String = "CountyThemeType";
		
		/**水资源承载能力，测站水质评价主要评价指标表*/
		public static const WATER_EVALUATION_TYPE:String = "Water_Evaluation_Type";
		/**水资源承载能力，第一级表格——行政区承载力情况统计表*/
		public static const AREA_CAPACITY_TYPE:String = "Area_Capacity_Type";
		/**水资源承载能力，第二级表格——河流水功能区水质达标率*/
		public static const WATER_QUALITY_TYPE:String = "Water_Quality_Type";
		/**水资源承载能力，第三级表格——水功能区污染物入河量详情*/
		public static const WATER_POLLUTION_DETAIL_TYPE:String = "Water_Pollution_Detail_Type";
		/**水资源承载能力，第三级表格——水功能区排污口污染物入河量详情*/
		public static const WATER_DRAIN_POLLUTION_DETAIL_TYPE:String = "Water_Drain_Pollution_Detail_Type";
		
		/**----------------------------应急管理------------------------------------*/
		/**水模型方案打开，展示方案关联的断面*/
		public static const WATER_MODEL_BREAK_FEATURE_LAYER:String = "WaterModelBreakFeatureLayer";
		/**水模型方案打开，展示方案关联的河流*/
		public static const WATER_MODEL_RIVER_FEATURE_LAYER:String = "WaterModelRiverFeatureLayer";
		
		/**计算指标ID*/
		/**水位*/
		public static const WaterLevel:String = "38d5d1f65bc24641a6010759b949473b";
		/**(水深)*/
		public static const WaterDepth:String = " ae0f48e69e0d4dc79d4a995303b4d9c9";
		/**(流量) */
		public static const WaterQuality:String = "e6e886de83254958a024f33e010700aa";
		/**(流速)*/
		public static const WaterFlow:String = "6641d96650694ce2a704dd1b3f71052d";
		/**(污染物浓度)*/
		public static const WaterPollution:String = "nh3nandcodsource";
		
		
		/**河道污染物浓度对比*/
		public static const River_Pollution_Compare_Layer:String = "RiverPollutionCompareLayer";
		
		/**河道污染物最高浓度断面*/
		public static const River_Max_Pollution_Layer:String = "River_Max_Pollution_Layer";

	}
}