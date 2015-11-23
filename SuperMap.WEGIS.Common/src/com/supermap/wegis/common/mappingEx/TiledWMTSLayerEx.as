package   com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.sm_internal;
	
	import flash.net.URLRequest;
	
	import mx.core.FlexGlobals;
	import mx.utils.StringUtil;
	import mx.utils.URLUtil;
	
	use namespace sm_internal;
	
	/**function 对接数字城市共享平台wmts服务*/
	public class TiledWMTSLayerEx extends TiledCachedLayer
	{			
		private var _urlChanged:Boolean;
		private var _url:String;
		private var _arcgisUrl:String;//存储arcgisurl
		private var _arcLayerHttp:String;
		/**arcgis服务ip地址*/
		private var _arcServerIp:String;
		/**是否使用arcgis服务*/
		public var isUseArc:Boolean = false;
		/**需要显示的arcgis服务ids*/
		public var arcLayerIDs:Array;
		/**arcgis显示的比例尺级别,默认到1-9级*/
		public var arcLevel:int = 8;
		
		/**图层类型,注记4，点3，线2，面1，影像0*/
		private var _layerType:int;
		
		private var _subOffLevel:int = 0;
		
		/**如果offlevel偏移值不够，通过subofflevel增加偏移*/
		public function get subOffLevel():int
		{
			return _subOffLevel;
		}
		
		/**
		 * @private
		 */
		public function set subOffLevel(value:int):void
		{
			if(_subOffLevel != value)
			{
				_subOffLevel = value;
				_urlChanged = true;
				invalidateProperties();
			}
		}
		
		/**图层类型,注记4，点3，线2，面1，影像0*/
		public function get layerType():int
		{
			return _layerType;
		}
		
		/**图层类型,注记4，点3，线2，面1，影像0*/
		public function set layerType(value:int):void
		{
			_layerType = value;
		}
		
		private var _layerIndex:int = 0;
		
		/**辅助显示图层位置*/
		public function get layerIndex():int
		{
			return _layerIndex;
		}
		
		/**
		 * @private
		 */
		public function set layerIndex(value:int):void
		{
			_layerIndex = value;
		}
		
		/**标示是否是子图层，如果是子图层，在显示列表不显示*/
		public var isAssembleLayer:Boolean = false;
		public var isFirstRequest:Boolean = true;
		public var _level:int = -1;//第一次出图，请求比例尺
		
		/**图层的id,非servicesID*/
		private var layerId:String;
		
		/**offlevel，level偏移基数,默认为0*/
		public var offLevel:int = 0;
		/**function 构造函数
		 * bounds 图层范围
		 * scales 图层比例尺数组
		 * resolutions 图层分辨率数组
		 * arcServerIp ArcGIS服务的IP地址和端口号，如果不设置，采用网页ＵＲＬ中的ＩＰ地址和端口号
		 * */
		public function TiledWMTSLayerEx ()
		{
			this.tileSize = 256;	
			setLoaded(true);
		}
		
		/**设置图层bounds,同时如果origin == null,设置origin为bounds左上角点*/
		public override function set bounds(value:Rectangle2D):void
		{
			super.bounds = value;
			if(bounds)
			{
				if(origin == null)
				{
					this.origin = new Point2D(bounds.left,bounds.top);
				}
			}
		}
		
		public function set level(value:int):void
		{
			this._level = value;
		}
		
		public function get level():int
		{
			if(this._level == -1)
			{
				if(map!= null)
					return map.level;
				else
					return -1;
			}else
			{
				return this._level;
			}
		}
		
		public override function set url(value:String):void
		{
			value = StringUtil.trim(value);
			if (this._url != value && value != null)
			{			
				this._url = value;	
				this._urlChanged = true;
				invalidateProperties();
			}
		}
		
		public override function get url():String
		{
			return _url;
		}
		
		public function get arcServerIp():String
		{
			return _arcServerIp;
		}
		
		/** ArcServerIp ArcGIS服务的IP地址和端口号，如果不设置，采用网页ＵＲＬ中的IP地址和端口号*/
		public function set arcServerIp(value:String):void
		{
			_arcServerIp = value;
			if(value == null)
			{
				_arcLayerHttp ="http://" +URLUtil.getServerNameWithPort(FlexGlobals.topLevelApplication.url)+"/Layers/";
			}else
			{
				_arcLayerHttp ="http://" + value +"/Layers/";
			}
			
		}
		
		private function get arcLayerHttp():String
		{
			if(_arcLayerHttp == null)
			{
				return "http://" +URLUtil.getServerNameWithPort(FlexGlobals.topLevelApplication.url)+"/Layers/";
			}
			return _arcLayerHttp;
		}
		
		override protected function commitProperties() : void
		{
			super.commitProperties();
			if ( this._urlChanged )
			{		
				analysisUrl();
				removeAllChildren();	
				this._urlChanged = false;
				invalidateLayer();
			}
		}
		
		private function analysisUrl():void
		{
			_arcgisUrl =url.substring(0,url.indexOf("?"));
			_arcgisUrl = _arcgisUrl.substring(_arcgisUrl.lastIndexOf("/")+1);
			layerId = _arcgisUrl;
			_arcgisUrl = _arcLayerHttp +layerId;
			
			var urlObj:Object = URLUtil.stringToObject(url,"&");
			if(this.hasOwnProperty("offLevel") && urlObj.hasOwnProperty("OFFLEVEL"))
			{
				this.offLevel = urlObj["OFFLEVEL"];
			}else{
				this.offLevel = 0 ;
			}
			this.offLevel = this.offLevel + _subOffLevel;
		}
		
		protected override function getTileURL(row:int, col:int, level:int):URLRequest
		{
			var serverURL:String;
			var factLevel:int;
			if(isFirstRequest )
			{
				factLevel = this.level;
			}else
			{
				factLevel = map.level;
			}
			factLevel = factLevel + offLevel;
			if(this.level == level && isFirstRequest )
			{
				isFirstRequest = false;
			}
			if(isUseArc)
			{
				//arcgis出图.检查是否在配置的arcgis出图数组中
				if(arcLayerIDs && arcLayerIDs.indexOf(layerId) != -1  && factLevel <= arcLevel )
				{
					serverURL = encodeURI(_arcgisUrl) + "/"+ convertString("L",factLevel,2) +"/" + convertString("R",row,8)+"/"+convertString("C",col,8)+".png";
					return new URLRequest(serverURL);
				}
			}
			serverURL = encodeURI(this.url) + "&TileMatrix=" +  factLevel+ "&TileRow=" + row + "&TileCol=" +col;
			return new URLRequest(serverURL);
		}
		
		//计算arcgis
		private function convertString(leftChar:String,convertValue:Number,converLength:Number):String
		{
			var convertNewValue:String = convertValue.toString(16);
			while(convertNewValue.length < converLength)
			{
				convertNewValue="0"+convertNewValue;
			}
			convertNewValue = leftChar + convertNewValue;
			return convertNewValue;
		}
		
	}
}
