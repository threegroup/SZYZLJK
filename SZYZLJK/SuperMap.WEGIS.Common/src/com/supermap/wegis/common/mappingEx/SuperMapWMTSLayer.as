package   com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.utils.MathUtil;
	
	import flash.net.URLRequest;
	
	/**
	 * function 湖北地图院rest地图服务layer
	 * */
	public class SuperMapWMTSLayer extends TiledCachedLayer
	{
		private var _url:String;
		private var _urlChanged:Boolean;
		public function SuperMapWMTSLayer()
		{
			super();
			this.tileSize = 256;
			this.bounds = new Rectangle2D(-180,-90,180,90);
			this.origin= new Point2D(-180,90);
//			this.resolutions = [0.01098632812500001860777113270858666,0.005493164062500009303885566354293329,0.002746582031250001658728184138270372,0.001373291015625000829364092069135186,0.0006866455078124989180747465151294470,0.0003433227539062494590373732575647235,0.0001716613769531250288401465326699910,0.00008583068847656251442007326633499548,0.00004291534423828140687076658511131235,0.00002145767211914064357109131177813033];
//			this.resolutions =[0.010986328125,	0.0054931640625,0.00274658203125,0.001373291015625,6.866455078125E-4,3.4332275390625E-4,1.71661376953125E-4,8.58306884765625E-5,4.291534423828125E-5,2.1457672119140625E-5,1.0728836059570312E-5,5.364418029785156E-6];
			setLoaded(true);
		}
		
		protected override  function getTileURL(row:int, col:int, level:int):URLRequest
		{
			var serverURL:String = this._url;
			serverURL = serverURL.replace("{TileCol}", col.toString());
			serverURL = serverURL.replace("{TileRow}", row.toString());
			serverURL = serverURL.replace("{TileMatrix}", (level).toString());
			serverURL = serverURL+"&t=" + Math.random();
			return new URLRequest(serverURL);
		}
		public override function get url():String
		{	
			return this._url;
		}
		public override function set url(value:String):void
		{
			if (this._url != value)
			{			
				if (value && value != "")
				{
					this._url = value;	
					this._urlChanged = true;
					invalidateProperties();
				}				
			}
		}	
	}
}