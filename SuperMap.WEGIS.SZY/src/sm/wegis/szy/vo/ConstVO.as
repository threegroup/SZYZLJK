package sm.wegis.szy.vo
{
	public class ConstVO
	{
		public  static const  VectorMapState:String = "vectorMapState";
		public  static const  ImageMapState:String = "imageMapState";
		
		/**天地图底图*/
		public  static const BaseMapLayerId:String = "baseMapLayerId";
		/**天地图底图注记*/
		public  static const BaseMapLabelLayerId:String = "baseMapLabelLayerId";
		
		/**水资源底图图层名称*/
		public static const WaterResourceLayerId:String = "waterResourceLayerId";
		
		/**重要水体，敏感目标地图定位*/
		public static const LOCATION_FEATURE_LAYER:String = "importWaterLocationFeatureLayer";
		
		//----------Web服务API--------//
		/**登录*/
		public static const Login:String = "login";
		/***/
		public static const GetTarget:String = "getTarget";
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
	}
}