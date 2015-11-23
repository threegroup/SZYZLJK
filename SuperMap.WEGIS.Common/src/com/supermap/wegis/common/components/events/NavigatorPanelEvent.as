package  com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	import mx.collections.IList;
	
	public class NavigatorPanelEvent  extends Event
	{
		public static const REGION_CHANGED:String ="RegionChanged";
		/**存储当前选择区域数据，只有最有一个*/
		public var data:Object;
		/**存储当前区域至全国的数据*/
		public var cascadeData:Object;
		/**标识是否是鼠标交换选择，发生的变化*/
		public var isMouseSelectChanged:Boolean;
		public function NavigatorPanelEvent(type:String,data:Object =null, cascadeData:Object =null,isMouseSelectChanged:Boolean= false,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data  = data;
			this.cascadeData = cascadeData;
			this.isMouseSelectChanged = isMouseSelectChanged;
		}
	}
}