package    com.supermap.wegis.common.mappingEx
{ 
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	
	import flash.net.URLRequest;
	/**
	 * function 数字城市共享平台rest服务layer
	 * */
	public class TiledRestLayer extends TiledCachedLayer
	{			
		
		private var _urlChanged:Boolean;
		private var _url:String;
		
		private var _layerType:int ;
		private var _layerIndex:int;
		
		public function TiledRestLayer()
		{
			this.tileSize = 256;	
			setLoaded(true);
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

		public override function set bounds(value:Rectangle2D):void
		{
			super.bounds = value;
			if(bounds)
			{
				this.origin = new Point2D(bounds.left,bounds.top);
			}
		}
		
		public override function set url(value:String):void
		{
			if (_url != value)
			{			
				_url = value;	
				this._urlChanged = true;
				invalidateProperties();
			}
		}
		
		public override function get url():String
		{
			return _url;
		}
	
		
		override protected function commitProperties() : void
		{
			super.commitProperties();
			if ( this._urlChanged )
			{		
				this._urlChanged = false;
				invalidateLayer();
			}
		}
		
		protected override function getTileURL(row:int, col:int, level:int):URLRequest
		{
			var serverURL:String;
			var scale:Number =  scales[level];
			serverURL = encodeURI(url) + "/tileImage." + this.imageFormat+ "?scale=" + scale + "&x=" +col +"&y=" + row +"&width=" + tileSize + "&height=" + tileSize ;
			return new URLRequest(serverURL);
		}
		
	}
}
