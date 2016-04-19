package sm.wegis.szy.vo
{
	import com.supermap.web.core.Rectangle2D;

	public class SaveThemeMapVO
	{
		public function SaveThemeMapVO()
		{
		}
		
		//查询结果数据和专题图类型
		public var waterEvaluation:WaterEvaluationVO;
		//地图显示范围
		public var mapViewBounds:String;
		
		//查询参数，主要包括searchType 和perioId
		public var waterEvaluaParam:WaterEvaluaParam;
	}
}