package sm.wegis.szy.vo
{
	/**监测指标属性列数据模型*/
	public class GridColumnInfo
	{
		public function GridColumnInfo()
		{
		}
		public var dataField:String;
		public var count:int = 0;
		//名称字段必须选择的
		public var mustColumn:Boolean = false;
		public var selected:Boolean = false;
	}
}