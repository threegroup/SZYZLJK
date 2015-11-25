package  com.supermap.wegis.common.components.events
{
	
	import flash.events.Event;
	public class CheckTreeEvent extends Event
	{
		/**itemrender的checkbox选择状态发生变化，由itemrender派发*/
		public static const ITEM_CHECK_SELECT_CHANGE:String = "ItemCheckSelectChange";
		
		/**Tree的选择集发生变化，由Tree派发*/
		public static const CHECK_SELECT_CHANGE:String = "CheckSelectChange";
		public var data:Object;
		public function CheckTreeEvent(type:String, data:Object = null,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}