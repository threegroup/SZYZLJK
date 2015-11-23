package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Graphic;
	import com.supermap.web.core.geometry.Geometry;
	import com.supermap.web.core.styles.Style;
	
	public class GraphicEx extends Graphic
	{
		private var _id:String;
		private var _name:String;
		
		public function get id():String
		{
			return _id;
		}
		
		public function set id(value:String):void
		{
			_id = value;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		public function GraphicEx(geometry:Geometry=null, style:Style=null, attributes:Object=null)
		{
			super(geometry, style, attributes);
		}
	}
}