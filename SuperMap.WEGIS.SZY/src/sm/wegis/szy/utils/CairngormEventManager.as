package  sm.wegis.szy.utils
{
	
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.collections.ArrayCollection;

	public class CairngormEventManager
	{
		private static var singleObject:CairngormEventManager = null;
		
		public function CairngormEventManager()
		{
			if(singleObject != null)
			{
				throw new Error("该对象不能通过构造函数实例化，可以通过getInstance函数获取对象实例！");
			}
		}
		
		/**获取对象实例*/
		public static function getInstance():CairngormEventManager
		{
			if(singleObject == null)
				singleObject = new CairngormEventManager();
			return singleObject;
		}
		
		/**绑定事件*/
		public function attachEvent(events:Vector.<CairngormEventClass> = null):void
		{
			if(events != null && events.length > 0)
			{
				for each (var eventObj:CairngormEventClass in events) 
				{
					CairngormEventDispatcher.getInstance().addEventListener(eventObj.eventName, eventObj.eventFunction);
				}
			}
		}
		
		/**解除事件绑定*/
		public function detachEvent(events:Vector.<CairngormEventClass> = null):void
		{
			if(events != null && events.length > 0)
			{
				for each (var eventObj:CairngormEventClass in events) 
				{
					CairngormEventDispatcher.getInstance().removeEventListener(eventObj.eventName, eventObj.eventFunction);
				}
			}
		}
		
		/**绑定单个事件*/
		public function attachSingleEvent(eventObj:CairngormEventClass = null):void
		{
			if(eventObj != null)
			{
				CairngormEventDispatcher.getInstance().addEventListener(eventObj.eventName, eventObj.eventFunction);
			}
		}
		
		/**解除单个事件绑定*/
		public function detachSingleEvent(eventObj:CairngormEventClass = null):void
		{
			if(eventObj != null)
			{
				CairngormEventDispatcher.getInstance().removeEventListener(eventObj.eventName, eventObj.eventFunction);
			}
		}
		
		/**判断矢量集中事件是否已经被绑定，只要有事件检测为已绑定，则默认所有事件已经绑定，反之亦然。*/
		public function isBind(events:Vector.<CairngormEventClass> = null):Boolean
		{
			var isBindEvent:Boolean = false;
			if(events != null && events.length > 0)
			{
				for each (var eventObj:CairngormEventClass in events) 
				{
					var b:Boolean = CairngormEventDispatcher.getInstance().hasEventListener(eventObj.eventName);
					if(b)
					{
						isBindEvent = b;
						break;
					}
				}
			}
			return isBindEvent;
		}
	}
}