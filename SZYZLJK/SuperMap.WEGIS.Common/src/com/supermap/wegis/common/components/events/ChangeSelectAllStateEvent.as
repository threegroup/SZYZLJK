package  com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ChangeSelectAllStateEvent extends Event
	{
		/**全选按钮状态变化*/
		public static const SELECT_ALL_STATE_CHANGED:String = "SelectAllStateChanged";
		public function ChangeSelectAllStateEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}