package sm.wegis.szy.vo
{
	import mx.collections.ArrayCollection;
	
	import sm.wegis.szy.core.baseclass.ValueObjectBase;

	[Bindable]
	public class TopVO extends ValueObjectBase
	{
		public function TopVO()
		{
			super();
		}
		
		private var _systemMenuList:ArrayCollection = null;
		private var _systemMenuLabel:String;
		private var _systemMenuWidth:Number = 0;
		private var _systemSubMenuList:ArrayCollection = null;
		private var _systemSubMenuLabel:String;
		private var _systemSubMenuWidth:Number = 0;

		/**系统菜单宽度*/
		public function get systemMenuWidth():Number
		{
			return _systemMenuWidth;
		}

		public function set systemMenuWidth(value:Number):void
		{
			_systemMenuWidth = value;
		}

		/**系统子菜单宽度*/
		public function get systemSubMenuWidth():Number
		{
			return _systemSubMenuWidth;
		}

		public function set systemSubMenuWidth(value:Number):void
		{
			_systemSubMenuWidth = value;
		}


		/**系统菜单项目数据源*/
		public function get systemMenuList():ArrayCollection
		{
			return _systemMenuList;
		}

		public function set systemMenuList(value:ArrayCollection):void
		{
			_systemMenuList = value;
		}

		/**系统菜单项目显示字段*/
		public function get systemMenuLabel():String
		{
			return _systemMenuLabel;
		}

		public function set systemMenuLabel(value:String):void
		{
			_systemMenuLabel = value;
		}

		/**系统二级子菜单项目数据源*/
		public function get systemSubMenuList():ArrayCollection
		{
			return _systemSubMenuList;
		}

		public function set systemSubMenuList(value:ArrayCollection):void
		{
			_systemSubMenuList = value;
		}

		/**系统二级子菜单项目显示字段*/
		public function get systemSubMenuLabel():String
		{
			return _systemSubMenuLabel;
		}

		public function set systemSubMenuLabel(value:String):void
		{
			_systemSubMenuLabel = value;
		}

	}
}