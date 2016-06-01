package widgets.wateremergency.chart
{
	import mx.charts.LineChart;
	import mx.charts.chartClasses.ChartBase;
	import mx.charts.chartClasses.IAxis;
	import mx.charts.events.ChartEvent;
	import mx.charts.events.ChartItemEvent;
	import mx.charts.series.LineSeries;
	import mx.charts.series.items.LineSeriesItem;
	import mx.collections.ArrayCollection;
	import mx.formatters.DateFormatter;
	
	/**统计图绘制工具集*/
	public class ChartUtils
	{
		private var _canReset:Boolean = false;
		
		/**
		 *当前统计图是否需要重置。 
		 * @return 
		 * 
		 */
		public function get canReset():Boolean
		{
			return _canReset;
		}
		
		public function set canReset(value:Boolean):void
		{
			_canReset = value;
		}
		
		
		public function ChartUtils()
		{
		}
		
		//将X轴显示转化为具体的日期格式 ，如YYYY-MM-DD
		private function dateParseFunction(s:String):Date { 
			var a:Array = s.split("-");
			var newDate:Date = new Date(a[0],a[1]-1,a[2]);
			return newDate;
		}
		
		//X轴时间显示格式
		private function dateFormatFunction(labelValue:Date, previousValue:Object, axis:IAxis):String
		{ 
			var dateFormatter:DateFormatter = new DateFormatter();   
			dateFormatter.formatString = "YYYY-MM-DD";   
			var dateValue:String= dateFormatter.format(labelValue);    
			return dateValue;
		}
		
		//将X轴显示转化为具体的日期格式，如YYYY-MM-DD JJ:NN
		private function dateParseFunctionEx(s:String):Date { 
			var a:Array = s.split("-");
			var b:Array = a[2].split(" ");
			var c:Array = b[1].split(":");
			var newDate:Date = new Date(a[0],a[1]-1,b[0], c[0], c[1]);
			return newDate;
		}
		
		//X轴时间显示格式
		private function dateFormatFunctionEx(labelValue:Date, previousValue:Object, axis:IAxis):String
		{ 
			var dateFormatter:DateFormatter = new DateFormatter();   
			dateFormatter.formatString = "YYYY-MM-DD JJ:NN";   
			var dateValue:String= dateFormatter.format(labelValue);    
			return dateValue;
		}
	}
}