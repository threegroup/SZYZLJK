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
		public static const QUERY_SINGLE_OBJECT_INFO:String = "QuerySingleObjectInfo"
			
		/**响应查询单个要素，监测数据查询*/
		public static const QUERY_SINGLE_OBJECT_INFO_RESPONSE:String = "QuerySingleObjectInfoResponse";
	}
}