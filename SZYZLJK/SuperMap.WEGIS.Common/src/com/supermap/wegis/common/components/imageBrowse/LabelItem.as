package com.supermap.wegis.common.components.imageBrowse
{
	import spark.components.Label;
	
	public class LabelItem extends Label
	{
		public function LabelItem()
		{
			super();
		}
		
		private var _imageInfo:Object;
		
		public function get imageInfo():Object
		{
			return _imageInfo;
		}
		
		public function set imageInfo(value:Object):void
		{
			_imageInfo = value;
		}
	}
}