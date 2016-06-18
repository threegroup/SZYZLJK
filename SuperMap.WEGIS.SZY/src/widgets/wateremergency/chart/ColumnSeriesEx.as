package   widgets.wateremergency.chart
{
	import mx.charts.series.ColumnSeries;
	import mx.collections.IList;
	
	public class ColumnSeriesEx extends ColumnSeries
	{
		public function ColumnSeriesEx()
		{
			super();
		}
		/**存储原始数据,放大前的数据*/
		public var originalDataProvider:IList;
	}
}