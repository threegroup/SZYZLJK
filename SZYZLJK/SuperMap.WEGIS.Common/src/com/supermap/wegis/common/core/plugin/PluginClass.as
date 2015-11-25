package com.supermap.wegis.common.core.plugin
{
	import mx.collections.ArrayCollection;

	/**系统插件类*/
	public class PluginClass
	{
		private var _pluginUrl:String;
		private var _nameSpace:String;
		private var _key:String;
		private var _type:String;
		private var _name:String;
		private var _icon:String;
		private var _data:Object;
		public function PluginClass(key:String="",
									type:String="",
									name:String="", 
									data:Object=null)
		{
			this._key = key;
			this._type = type;
			this._name = name;
			this._data = data;
		}

		public function get data():Object
		{
			return _data;
		}

		public function set data(value:Object):void
		{
			_data = value;
		}

		/**获取项目图标*/
		public function get icon():String
		{
			return _icon;
		}

		/**设置项目图标*/
		public function set icon(value:String):void
		{
			_icon = value;
		}

		/**设置项目名称*/
		public function get name():String
		{
			return _name;
		}

		/**获取项目名称*/
		public function set name(value:String):void
		{
			_name = value;
		}

		/**获取插件项目的功能类型*/
		public function get type():String
		{
			return _type;
		}

		/**设置插件项目的功能类型*/
		public function set type(value:String):void
		{
			_type = value;
		}

		/**获取插件的key，用于查找插件*/
		public function get key():String
		{
			return _key;
		}

		/**设置插件的Key值，用于索引*/
		public function set key(value:String):void
		{
			_key = value;
		}

		/**获取外部编译的swf文件中的命名空间*/
		public function get nameSpace():String
		{
			return _nameSpace;
		}

		/**设置外部编译的swf文件中的命名空间*/
		public function set nameSpace(value:String):void
		{
			_nameSpace = value;
		}

		/**获取外部编译的swf文件路径*/
		public function get pluginUrl():String
		{
			return _pluginUrl;
		}

		/**设置外部编译的swf文件路径*/
		public function set pluginUrl(value:String):void
		{
			_pluginUrl = value;
		}

	}
}