package sm.wegis.szy.vo
{
	public class ConstVO
	{
		/**要素图片Y轴偏移值*/
		public static const PICTURE_FEATURE_YOFFSET:int = 12;
		
		public  static const  VectorMapState:String = "vectorMapState";
		public  static const  ImageMapState:String = "imageMapState";
		
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
		
		/**水质评价，默认监测断面点矢量图层*/
		public static const EVALUATION_FEATURE_LAYER:String = "EvaluationFeatureLayer";
		
		/**水质评价，河流点击，查询显示主要污染指标矢量图层*/
		public static const MAIN_EVALUATION_TARGET_INFO_LAYER:String = "MainEvaluationTargetInfoLayer"
		/**水质评价，水功能区矢量图层*/
		public static const WATERFUNCTION_FEATURE_LAYER:String = "WaterFunctionFeatureLayer";
		
		/**水质评价，水功能区文本图层*/
		public static const WATERFUNCTION_FEATURETEXT_LAYER:String = "WaterFunctionFeatureTextLayer";
		
		/**水质评价，河流图层*/
		public static const WATERRIVER_FEATURE_LAYER:String = "WaterRiverFeatureLayer";
		
		/**水质评价，专题地图——河流水质评价类型*/
		public static const RIVER_WATER_EVALUATION_THEME_TYPE:String = "riverWaterEvaluationThemeType";
		/**水质评价，专题地图——水功能区水质评价类型*/
		public static const FUNCTION_EVALUATION_THEME_TYPE:String = "functionEvaluationThemeType";
		/**水质评价，专题地图——水功能区是否达标类型*/
		public static const FUNCTION_STANDARD_THEME_TYPE:String = "functionStandardThemeType";
		/**水质评价，专题地图——行政区划专题图*/
		public static const ADMINISTRATIVE_DIVISION_THEME_TYPE:String = "AdministrativeDivisionThemeType";
		
		/**水资源承载能力，第一级表格——行政区承载力情况统计表*/
		public static const AREA_CAPACITY_TYPE:String = "Area_Capacity_Type";
		/**水资源承载能力，第二级表格——河流水功能区水质达标率*/
		public static const WATER_QUALITY_TYPE:String = "Water_Quality_Type";
		/**水资源承载能力，第三级表格——水功能区污染物入河量详情*/
		public static const WATER_POLLUTION_DETAIL_TYPE:String = "Water_Pollution_Detail_Type";
		/**水资源承载能力，第三级表格——水功能区排污口污染物入河量详情*/
		public static const WATER_DRAIN_POLLUTION_DETAIL_TYPE:String = "Water_Drain_Pollution_Detail_Type";
	}
}