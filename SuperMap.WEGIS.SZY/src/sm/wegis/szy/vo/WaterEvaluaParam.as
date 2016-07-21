package sm.wegis.szy.vo
{
	//水质评价查询参数
	public class WaterEvaluaParam
	{
		
		public var searchType:String;
		public var searchYear:String;
		public var periodId:String;
		public var riverIds:String = "";
		
		public var id:String;
		
		public var name:String;
		public var x:Number;
		public var y:Number;
		
		/**是否显示要素详情面板，默认不显示。*/
		public var isShowObjectDetail:Boolean = false;
	}
}