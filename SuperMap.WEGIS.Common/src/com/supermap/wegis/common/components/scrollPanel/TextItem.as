package com.supermap.wegis.common.components.scrollPanel
{
	import spark.components.Label;
	
	public class TextItem extends Label
	{
		private var _key:String;
		private var _param:Object;
		
		public function TextItem()
		{
			super();
			
			this.setStyle("textAlign", "center");
			this.setStyle("verticalAlign", "middle");
		}
		
		/**获取项目参数*/
		public function get param():Object
		{
			return _param;
		}
		
		/**设置项目参数*/
		public function set param(value:Object):void
		{
			_param = value;
		}
		
		/**获取项目Key*/
		public function get key():String
		{
			return _key;
		}
		
		/**设置项目Key*/
		public function set key(value:String):void
		{
			_key = value;
		}
		
		/**设置选中状态*/
		public function keepSelected(color:uint):void
		{
			this.setStyle("color", color);
		}
	}
}