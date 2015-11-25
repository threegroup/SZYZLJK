package com.supermap.wegis.common.components.datefield
{
	import mx.controls.DateField;
	import mx.core.mx_internal;
	import mx.events.FlexEvent;
	
	use namespace mx_internal;
	//扩展datefield,隐藏右侧日历图标
	public class DateFieldEx extends DateField
	{
		public function DateFieldEx()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			if (downArrowButton != null)
			{
				downArrowButton.visible = false;
				downArrowButton.width = 0;
				downArrowButton.height = 0;
				downArrowButton.includeInLayout = false;
			}
		}
	}
}