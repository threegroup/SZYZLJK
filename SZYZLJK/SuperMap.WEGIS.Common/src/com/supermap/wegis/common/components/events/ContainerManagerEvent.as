package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class ContainerManagerEvent extends Event
	{
		/**图例当前选择项发生变化*/
		public static const CONTAINER_CHANGE:String = "containerChange";
		private var _newSelectKey:String;
		private var _visable:Boolean;
		public function ContainerManagerEvent(type:String,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		public function get visable():Boolean
		{
			return _visable;
		}

		public function set visable(value:Boolean):void
		{
			_visable = value;
		}

		public function get newSelectKey():String
		{
			return _newSelectKey;
		}

		public function set newSelectKey(value:String):void
		{
			_newSelectKey = value;
		}

	}
}