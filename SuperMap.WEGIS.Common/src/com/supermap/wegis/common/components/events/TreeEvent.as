package  com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class TreeEvent extends Event
	{
		public static const OPEN_ITEM:String ="openItem";
		private var _item:Object;

		public function get item():Object
		{
			return _item;
		}

		public function set item(value:Object):void
		{
			_item = value;
		}

		public function TreeEvent(type:String, item:Object = null,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.item = item;
		}
	}
}