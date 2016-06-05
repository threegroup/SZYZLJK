package widgets.wateremergency.chart
{
	import mx.charts.series.LineSeries;
	import mx.collections.IList;
	
	public class LineSeriesEx extends LineSeries
	{
		public function LineSeriesEx()
		{
			super();
		}
		/**存储原始数据,放大前的数据*/
		public var originalDataProvider:IList;
	}
}