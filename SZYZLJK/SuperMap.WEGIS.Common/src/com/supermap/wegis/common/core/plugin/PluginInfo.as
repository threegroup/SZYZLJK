package com.supermap.wegis.common.core.plugin
{
	/**具体插件项目*/
	public class PluginInfo
	{
		private var _key:String;
		private var _command:Plugin;
		public function PluginInfo()
		{
		}

		public function get plugin():Plugin
		{
			return _command;
		}

		public function set plugin(value:Plugin):void
		{
			_command = value;
		}

		public function get key():String
		{
			return _key;
		}

		public function set key(value:String):void
		{
			_key = value;
		}
	}
}