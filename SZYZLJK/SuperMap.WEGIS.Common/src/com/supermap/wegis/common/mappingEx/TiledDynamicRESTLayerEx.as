package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.mapping.TiledDynamicRESTLayer;
	
	public class TiledDynamicRESTLayerEx extends TiledDynamicRESTLayer
	{
		private var _layerType:int ;
		private var _layerIndex:int;

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

		public function TiledDynamicRESTLayerEx()
		{
			super();
		}
	}
}