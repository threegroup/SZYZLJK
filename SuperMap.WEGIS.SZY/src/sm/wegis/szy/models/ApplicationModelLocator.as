package sm.wegis.szy.models
{
	import com.adobe.cairngorm.model.ModelLocator;
	import com.supermap.web.components.ZoomSlider;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	
	import sm.wegis.szy.vo.BaseMapVO;
	import sm.wegis.szy.vo.MenuVO;
	import sm.wegis.szy.vo.SpecialWidgetVO;
	import sm.wegis.szy.vo.SystemVO;
	import sm.wegis.szy.vo.ToolVO;
	import sm.wegis.szy.vo.UserVO;
	import sm.wegis.szy.vo.WaterCapacityParam;
	import sm.wegis.szy.vo.WaterEvaluaParam;
	import sm.wegis.szy.vo.WaterEvaluationVO;

	[Bindable]
	public class ApplicationModelLocator implements ModelLocator
	{
		private static var modelLocator:ApplicationModelLocator;
		
		public var zoomSlider:ZoomSlider;
		
		/**二维地图控件*/
		public var mapCtrl:MapCtrl;
		
		/**系统信息*/
		public var systemInfo:SystemVO;
		
		/**系统工具条视图信息*/
		public var toolInfo:ToolVO =new ToolVO();
		
		/**系统菜单视图信息*/
		public var menuInfo:MenuVO = new MenuVO();
		
		private var _baseMapInfo:BaseMapVO;
		
		/**用户信息*/
		public var userVo:UserVO = new UserVO();
		
		/**需要特殊处理的参数*/
		public var specialWidgetInfo:SpecialWidgetVO = new SpecialWidgetVO();
		
		//水质评价，专题地图状态参数
		private var _waterEvaluationVO:WaterEvaluationVO;
		
		//水质评价，专题地图查询参数
		private var _waterEvaluaParam:WaterEvaluaParam;
		
		//水资源承载力，专题地图查询参数
		private var _waterCapacityParam:WaterCapacityParam;
		
		public function get waterCapacityParam():WaterCapacityParam
		{
			return _waterCapacityParam;
		}

		public function set waterCapacityParam(value:WaterCapacityParam):void
		{
			_waterCapacityParam = value;
		}

		public function get waterEvaluaParam():WaterEvaluaParam
		{
			if (_waterEvaluaParam == null) {
				_waterEvaluaParam = new WaterEvaluaParam();
			}
			return _waterEvaluaParam;
		}

		public function set waterEvaluaParam(value:WaterEvaluaParam):void
		{
			_waterEvaluaParam = value;
		}

		/**水质评价，专题地图状态参数*/
		public function get waterEvaluationVO():WaterEvaluationVO
		{
			if (_waterEvaluationVO == null) {
				_waterEvaluationVO = new WaterEvaluationVO()
			}
			return _waterEvaluationVO;
		}

		/**
		 * @private
		 */
		public function set waterEvaluationVO(value:WaterEvaluationVO):void
		{
			_waterEvaluationVO = value;
		}

		/**系统底图信息*/
		public function get baseMapInfo():BaseMapVO
		{
			if (_baseMapInfo == null) {
				_baseMapInfo = new BaseMapVO();
			}
			return _baseMapInfo;
		}

		public static function getInstance():ApplicationModelLocator
		{
			if(modelLocator == null)
			{
				modelLocator = new ApplicationModelLocator();
			}
			return modelLocator;
		}
		
		//单例模式
		public function ApplicationModelLocator()
		{
			if(modelLocator != null)
			{
				throw new Error("不能通过该方式创建类型的实例，请采用静态方法getInstance()初始化对象！");
			}
		}	
	}
}