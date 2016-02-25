package com.supermap.wegis.common.components.checkComboBox
{
	import flash.events.Event;
	
	public class CheckBoxSelectEvent extends Event
	{
		public static const SELECT_CHANGED:String = "selectChanged";
		
		public var data:Object;
		public function CheckBoxSelectEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}