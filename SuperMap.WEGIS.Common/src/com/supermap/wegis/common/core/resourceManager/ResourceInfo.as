package com.supermap.wegis.common.core.resourceManager
{
	[Bindable]
	public class ResourceInfo
	{
		private var _name:String;
		private var _key:String;
		private var _cls:Class;
		public function ResourceInfo()
		{
		}

		/**获取资源类型*/
		public function get cls():Class
		{
			return _cls;
		}

		/**设置资源类型*/
		public function set cls(value:Class):void
		{
			_cls = value;
		}

		/**获取资源Key值*/
		public function get key():String
		{
			return _key;
		}

		/**设置资源Key值*/
		public function set key(value:String):void
		{
			_key = value;
		}

		/**获取资源名称*/
		public function get name():String
		{
			return _name;
		}

		/**设置资源名称*/
		public function set name(value:String):void
		{
			_name = value;
		}
	}
}