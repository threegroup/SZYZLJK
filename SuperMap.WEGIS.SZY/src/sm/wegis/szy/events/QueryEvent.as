package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class QueryEvent extends CairngormEvent
	{
		public function QueryEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		/**查询第一级类型*/
		public static const Query_Main_Types:String = "QueryMainTypes";
		
		/**要素一级及多级分类结果派发其他事件监听*/
		public static const Query_Main_Types_Response:String = "QueryMainTypesResponse";
		
		
		/**查询要素二级及多级分类*/
		public static const Query_Types_And_Detail_List:String = "QueryTypesAndDetailList";
		
		/**要素二级及多级分类结果派发其他事件监听*/
		public static const Query_Types_And_Detail_List_Response:String = "QueryTypesAndDetailListResponse";
	}
}