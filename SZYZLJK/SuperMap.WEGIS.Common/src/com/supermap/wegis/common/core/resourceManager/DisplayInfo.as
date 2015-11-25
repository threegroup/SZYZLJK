package com.supermap.wegis.common.core.resourceManager
{
	/**显示列表中对象信息*/
	public class DisplayInfo
	{
		private var _key:String;
		private var _display:Object=null;
		private var _param:Object=null;
		public function DisplayInfo()
		{
		}

		/**
		 * 当现实对象本身没有data属性时，采用该值
		 */
		public function get param():Object
		{
			return _param;
		}

		public function set param(value:Object):void
		{
			_param = value;
		}

		/**获取显示对象*/
		public function get display():Object
		{
			return _display;
		}

		/**设置显示对象*/
		public function set display(value:Object):void
		{
			_display = value;
		}

		/**获取显示对象的key*/
		public function get key():String
		{
			return _key;
		}

		/**设置显示对象的key*/
		public function set key(value:String):void
		{
			_key = value;
		}

	}
}