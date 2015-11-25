package  com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.mapping.GraphicsLayer;

	public class GraphicsLayerEx extends GraphicsLayer
	{
		public var _graphics:Vector.<GraphicEx>;
		private var _layerType:int = 5;
		private var _layerIndex:int = 0;
		public function GraphicsLayerEx()
		{
			super();
		}
		
		
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
		
		public function addGraphicEx(graphic:GraphicEx):void
		{
			add([graphic]);
		}
		
		
		public function getGraphicExById(id:String):GraphicEx
		{
			for each(var graphic:GraphicEx in this._graphics)
			{
				if(id == graphic.id)
				{
					return graphic;
				}
			}
			return null;
		}
		
		public function removeGraphicExById(id:String):void
		{
			for (var index:int = 0 ; index < this._graphics.length ;index ++)
			{
				var graphic:GraphicEx = this._graphics[index];
				if(id == graphic.id)
				{
					this._graphics.splice(index,1);
					break;
				}
			}
		}
	}
}
