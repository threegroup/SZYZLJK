package com.supermap.wegis.common.core.plugin
{
	import spark.components.Button;
	
	public class PluginItem extends Button
	{
		private var _item:PluginClass;
		public function PluginItem(itemcls:PluginClass=null)
		{
			super();
			this._item = itemcls;
			this.label = itemcls.name;
		}

		/**获取导航栏项目*/
		public function get item():PluginClass
		{
			return _item;
		}

		/**设置导航栏项目*/
		public function set item(value:PluginClass):void
		{
			_item = value;
		}
	}
}