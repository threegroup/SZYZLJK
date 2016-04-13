package  com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.sm_internal;
	import com.supermap.web.utils.MathUtil;
	
	import flash.net.URLRequest;
	use namespace sm_internal;
	
	public class WMTSLayer extends TiledCachedLayer
	{
		public var layerType:int;
		public var layerIndex:int;
		
		public function WMTSLayer()
		{
			super();
			this.tileSize = 256;
			this.bounds = new Rectangle2D(-180,-90,180,90);
			this.origin = new Point2D(-180,90);
			setLoaded(true);
		}
		
		protected override  function getTileURL(row:int, col:int, level:int):URLRequest
		{
			var serverURL:String = this.url;
			serverURL += "/"+(map.level + 4) +"/" + row +"/" + col  +".png";
			return new URLRequest(serverURL);
		}
	}
}