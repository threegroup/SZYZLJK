package    com.supermap.wegis.common.mappingEx
{ 
	import com.supermap.web.core.CoordinateReferenceSystem;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	
	import flash.net.URLRequest;
	/**
	 * 天地图内网图层
	 * */
	public class TiledTDTLayerEx extends TiledCachedLayer
	{			
		
		private var _urlChanged:Boolean;
		private var _url:String;
		
		private var _layerType:int ;
		private var _layerIndex:int;
		/**图片名称前缀*/
		private var _imagePre:String;
		
		/**offlevel，level偏移基数,默认为0*/
		public var offLevel:int = 0;
		
		public function TiledTDTLayerEx()
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
				var tempArray:Array = value.split("/");
				_imagePre = tempArray[tempArray.length -1];
				tempArray.pop();
				_url = tempArray.join("/");	
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
			var factLevel:int = level + offLevel+1;//由于天地图从1开始，所以加1
			serverURL = encodeURI(url) + "/"  + factLevel + "/"   + _imagePre +"_" +col +"_" + row+".PNG" ;
			return new URLRequest(serverURL);
		}
		
	}
}
