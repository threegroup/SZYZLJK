package  com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.utils.MathUtil;
	
	import flash.net.URLRequest;
	
	public class WMTSLayer extends TiledCachedLayer
	{
		public function WMTSLayer()
		{
			super();
			this.tileSize = 256;
			this.bounds = new Rectangle2D(107.973889965235,28.8206295368348,116.52089792271,33.4850595343644);
			this.origin = new Point2D(-180,90);
			setLoaded(true);
		}
		
		protected override  function getTileURL(row:int, col:int, level:int):URLRequest
		{
			var serverURL:String = this.url;
//			serverURL = serverURL.replace("{TileCol}", col.toString());
//			serverURL = serverURL.replace("{TileRow}", row.toString());
//			serverURL = serverURL.replace("{TileMatrix}", (level).toString());
			serverURL += "/"+level +"/" + row +"/" + col ;
			
			//serverURL = serverURL+"&t=" + Math.random()+ "&transparent=" + this.transparent; 
			return new URLRequest(serverURL);
		}
	}
}