package sm.wegis.szy.vo
{
	import sm.wegis.szy.core.baseclass.ValueObjectBase;
	
	public class UserVO extends ValueObjectBase
	{
		public function UserVO()
		{
			super();
		}
		
		private var _userName:String;
		private var _password:String;
		private var _userId:String;

		public function get userId():String
		{
			return _userId;
		}

		public function set userId(value:String):void
		{
			_userId = value;
		}

		/**用户密码*/
		public function get password():String
		{
			return _password;
		}

		public function set password(value:String):void
		{
			_password = value;
		}

		/**用户名称*/
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