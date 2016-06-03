package com.supermap.wegis.common.components.datefield
{
	
	import com.supermap.wegis.common.utils.DateUtilEx;
	
	import mx.controls.DateField;
	import mx.events.FlexEvent;
	
	public class DateFieldEx2 extends DateField
	{
		//月份中文
		public static const MONTH_NAMES:Array = ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"];
		//星期中文
		public static const DAY_NAMES:Array = ["七","一","二","三","四","五","六"];
		
		private var _showFirstDay:Boolean = false;
		
		private var _showPreThirtyDay:Boolean = false;
		
		private var _showYearFirstDay:Boolean = false;
		public function DateFieldEx2()
		{
			super();
			this.monthNames = MONTH_NAMES;
			this.dayNames = DAY_NAMES;
			this.formatString = "YYYY - MM - DD";
			this.yearNavigationEnabled = true;
			this.addEventListener(FlexEvent.INITIALIZE ,datefield_initializeHandler);
			this.setStyle("dateChooserStyleName", "dateFieldStyle");
			this.setStyle("textInputStyleName", "dateFieldStyle");
		}
		
		public function get showYearFirstDay():Boolean
		{
			return _showYearFirstDay;
		}

		public function set showYearFirstDay(value:Boolean):void
		{
			_showYearFirstDay = value;
		}

		public function get showPreThirtyDay():Boolean
		{
			return _showPreThirtyDay;
		}

		public function set showPreThirtyDay(value:Boolean):void
		{
			_showPreThirtyDay = value;
		}

		/**设置当月第一天*/
		public function get showFirstDay():Boolean
		{
			return _showFirstDay;
		}

		/**
		 * @private
		 */
		public function set showFirstDay(value:Boolean):void
		{
				_showFirstDay = value
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
		}

		protected function datefield_initializeHandler(event:FlexEvent):void  
		{  
			if(this.showToday) {
				this.selectedDate = new Date(); 
			} 
			if (showFirstDay == true) {
				this.selectedDate = DateUtilEx.getMonthFirstDay();
			}
			
			if (showPreThirtyDay == true) {
				this.selectedDate = DateUtilEx.getPreThirtyDayDate();
			}
			
			if (showYearFirstDay == true) {
				this.selectedDate = DateUtilEx.getYearFirstDay();
			}
		} 
	}
}