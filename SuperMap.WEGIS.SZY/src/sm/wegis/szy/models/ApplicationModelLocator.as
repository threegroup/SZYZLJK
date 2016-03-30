package sm.wegis.szy.models
{
	import com.adobe.cairngorm.model.ModelLocator;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	
	import sm.wegis.szy.vo.BaseMapVO;
	import sm.wegis.szy.vo.MenuVO;
	import sm.wegis.szy.vo.SpecialWidgetVO;
	import sm.wegis.szy.vo.SystemVO;
	import sm.wegis.szy.vo.ToolVO;
	import sm.wegis.szy.vo.UserVO;

	[Bindable]
	public class ApplicationModelLocator implements ModelLocator
	{
		private static var modelLocator:ApplicationModelLocator;
		
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