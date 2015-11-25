package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;
	
	public class MenuItemEvent extends CairngormEvent
	{
		/**系统菜单*/
		public static const SYSTEM_MENU_SELECT_CHANGE:String = "SystemMeunSelectChange";
//		/**系统二级菜单*/
//		public static const SYSTEM_SUB_MENU_SELECT_CHANGE:String = "SystemSubMeunSelectChange";
		public function MenuItemEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new MenuItemEvent(type, bubbles, cancelable);
		}
	}
}