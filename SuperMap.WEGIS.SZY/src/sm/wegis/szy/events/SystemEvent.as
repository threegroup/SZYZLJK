package sm.wegis.szy.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;
	
	public class SystemEvent extends CairngormEvent
	{
		/**点击清除按钮*/
		public static const CLEAR_SYSTEM:String = "ClearSystem";
		/**系统view，主体创建完成*/
		public static const SYSTEM_CREATION_COMPLETE:String = "SystemCreationComplete";
		
		/**系统权限认证*/
		public static const SYSTEM_SECURITY:String = "SystemSecurity";
		
		/**系统初始化时派发此事*/
		public static const SYSTEM_INIT:String = "SystemInit";
		
		/**系统获取功能参数时派发此事件*/
		public static const GET_FUNCTION:String = "GetFunction";
		
		/**数据绑定完成时派发此事件*/
		public static const DATA_BIND_CREATED:String = "DataBindCreated";
		
		/**初始化系统预加载模块*/
		public static const INITIAL_WIDGET:String ="InitialWidget";
		
		/**系统用户，或者子系统重新选择，派发reload事件，针对需要刷新数据模块*/
		public static const SYSTEM_RELOAD:String = "SystemReload";
		
		/**加载图层配置文件*/
		public static const GetLayerJson:String ="GetLayerJson";
		public static const GetLayerJsonResponse:String ="GetLayerJsonResponse";
		
		
		/**
		 *系统登录事件 
		 */
		public static const LoginIn:String = "LoginIn";
		public static const LoginInResponse:String = "LoginInResponse";
		
		public function SystemEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new SystemEvent(type, bubbles, cancelable);
		}
	}
}