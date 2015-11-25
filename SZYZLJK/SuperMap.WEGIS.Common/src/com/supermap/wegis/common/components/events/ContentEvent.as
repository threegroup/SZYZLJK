package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	/**
	 * ContentPanel使用的事件
	 * */
	public class ContentEvent extends Event
	{
		public static const STATE_CHANGE:String = "StateChange";
		
		public static const SELECTED_TITLEBAR_BUTTON_INDEX_CHANGE:String = "SelectedTitlebarButtonIndexChange";
		/**
		 * 当前选择索引
		 * */
		public var selectIndex:int;
		/**
		 * 上次选择索引
		 * */
		public var oldIndex:int;
		/**content状态*/
		public var state:String;
		
		public function ContentEvent(type:String,selectIndex:int = -1, oldIndex:int = -1,state:String = null,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.selectIndex = selectIndex;
			this.oldIndex = oldIndex;
			this.state = state;
		}
	}
}