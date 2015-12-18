package  sm.wegis.szy.utils
{
	import mx.collections.ArrayCollection;
	
	public class CairngormEventClass
	{
		public function CairngormEventClass(en:String=null, ef:Function=null)
		{
			_eventName = en;
			_eventFunction = ef;
		}
		
		private var _eventName:String;
		
		private var _eventFunction:Function;
		
		public function get eventFunction():Function
		{
			return _eventFunction;
		}
		
		public function set eventFunction(value:Function):void
		{
			_eventFunction = value;
		}
		
		public function get eventName():String
		{
			return _eventName;
		}
		
		public function set eventName(value:String):void
		{
			_eventName = value;
		}
		
		/**编码事件
		 * @param eventList-由CairngormEventClass对象组成的数据集*/
		public function encode(eventList:ArrayCollection=null):Vector.<CairngormEventClass>
		{
			var events:Vector.<CairngormEventClass> = null;
			if(eventList != null && eventList.length > 0)
			{
				events = new Vector.<CairngormEventClass>();
				for each (var item:Array in eventList) 
				{
					if(item != null && item.length == 2)
						events.push(new CairngormEventClass(item[0], item[1]));
				}
			}
			return events;
		}
	}
}