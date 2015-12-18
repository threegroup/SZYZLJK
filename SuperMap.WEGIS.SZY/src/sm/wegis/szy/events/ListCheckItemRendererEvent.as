package sm.wegis.szy.events
{
	import flash.events.Event;
	
	//带有checkbox的列表，选项发生变化，派发的事件
	public class ListCheckItemRendererEvent extends Event
	{
		public static const SELECT_CHANGED:String = "selectChanged";
		
		public var data:Object;
		
		public function ListCheckItemRendererEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}