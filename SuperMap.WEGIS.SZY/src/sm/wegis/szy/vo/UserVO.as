package sm.wegis.szy.vo
{
	import mx.collections.ArrayCollection;
	
	import sm.wegis.szy.core.baseclass.ValueObjectBase;
	
	[Bindable]
	public class UserVO extends ValueObjectBase
	{
		public function UserVO()
		{
			super();
		}
		
		private var _userName:String="";
		private var _password:String="";
		private var _userId:String="";
		private var _name:String="";
		private var _isLogin:Boolean = false;

		/**
		 *登录状态，false表示未登录 
		 */
		public function get isLogin():Boolean
		{
			return _isLogin;
		}
		
		public function set isLogin(value:Boolean):void
		{
			_isLogin = value;
		}
		
		/**登录成功之后返回的用户名称*/
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		
		/**用户ID*/
		public function get userId():String
		{
			return _userId;
		}
		
		public function set userId(value:String):void
		{
			_userId = value;
		}
		
		/**登录用户密码*/
		public function get password():String
		{
			return _password;
		}
		
		public function set password(value:String):void
		{
			_password = value;
		}
		
		/**登录用户名称*/
		public function get userName():String
		{
			return _userName;
		}
		
		public function set userName(value:String):void
		{
			_userName = value;
		}
		
	}
}