package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.mapping.HighlightLayer;

	public class HighlightLayerEx extends HighlightLayer
	{
		private var _layerType:int = 5;
		private var _layerIndex:int = 10000;
		
		public function get layerIndex():int
		{
			return _layerIndex;
		}
		
		public function set layerIndex(value:int):void
		{
			_layerIndex = value;
		}
		
		
		public function get layerType():int
		{
			return _layerType;
		}
		
		public function set layerType(value:int):void
		{
			_layerType = value;
		}
		
		
		public function HighlightLayerEx(url:String)
		{
			super(url);
		}
	}
}