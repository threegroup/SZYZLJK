package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ZoomPanelEvent extends Event
	{
		/**方向按钮单击事件*/
		public static const ZOOM_ARROW_CLICK:String = "ZoomArrowClick";
		public function ZoomPanelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}