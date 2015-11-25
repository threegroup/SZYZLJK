package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class BaseWidgetEvent extends Event
	{
		
		/**模块从父容器移除*/
		public static const WIDGET_REMOVE:String = "WidgetRemove";
		
		/**模块加载完成*/
		public static const WIDGET_ADD_COMPLETE:String = "WidgetAddComplete";
		
		public var data:Object;
		
		public function BaseWidgetEvent(type:String,data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}