package sm.wegis.szy.vo
{
	import com.supermap.web.utils.Hashtable;

	/**水质评价*/
	public class WaterEvaluationVO
	{
		/**水质评价，前台渲染专题地图类型*/
		public var themeMapType:String;
		
		/**用于记录水质评价，上次选择的地图类型,在切换水资源承载力的时候记录*/
		public var EvalutionThemeMapType:String;
		
		/**水质评价成果数据*/
		public var waterEvaluationResult:Object;
		
		/**水功能区，目标水质查询结果数据*/
		public var waterFunctionDestinationResult:Hashtable = new Hashtable();
	}
}