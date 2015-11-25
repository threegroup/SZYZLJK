package com.supermap.wegis.common.action
{
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.events.EditEvent;
	
	public class EditEventEx extends EditEvent
	{
		public static const DEL_FEATURE:String = "delFeature";
		public function EditEventEx(type:String, feature:Feature=null, node:Point2D=null)
		{
			super(type, feature, node);
		}
	}
}