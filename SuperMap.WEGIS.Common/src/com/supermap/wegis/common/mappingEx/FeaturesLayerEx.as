package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.mapping.FeaturesLayer;
	
	public class FeaturesLayerEx extends FeaturesLayer
	{
		private var _layerType:int = 6;
		private var _layerIndex:int = 0;
		
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

		public function FeaturesLayerEx()
		{
			super();
		}
	}
}