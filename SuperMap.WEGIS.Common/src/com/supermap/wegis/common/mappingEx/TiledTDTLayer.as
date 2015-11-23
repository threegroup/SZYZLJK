package   com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.sm_internal;
	
	import flash.net.URLRequest;
	
	use namespace sm_internal;
	public class TiledTDTLayer extends TiledCachedLayer
	{
		//影像类型，包括：矢量、影像两种
		private var _isLabel:Boolean=false;
		private var _isLabelChange:Boolean=false;
		private var _projection:String="4326";
		private var _proj:String;
		private var _layerType:String="vec";
		private var _layerTypeChange:Boolean=false;
		private var _levelOffset:Number=1;
		/**开始比例尺级别*/
		private var _startLevel:int =0;
		/**结束比例尺级别*/
		private var _endLevel:int = -1;
		private var _levelChange:Boolean =false;
		
		private const URL:String = "http://t{subdomain}.tianditu.com/DataServer?T={layerType}_{proj}&x={tileX}&y={tileY}&l={level}";
		//private const CVA_URL:String = "http://t{subdomain}.tianditu.com/DataServer?T=cva_{proj}&x={tileX}&y={tileY}&l={level}";
		public function TiledTDTLayer()
		{
			super();
			//this.mapType = TiledTDTLayer.MAP_TYPE_VECTOR;
			this.tileSize = 256;
			//this._isLabel = false;
			//this.loadLayerInfo();
			setLoaded(true);
		}
		
		private function loadLayerInfo():void
		{
			var lt:String = this._layerType;
			var tempResolutions:Array = [];
			var resStart:int = 0;
			var resLength:int = 17;
			if(lt=="vec"){
				resStart = 0;
				resLength = 17;
				this._levelOffset = _startLevel+ 1;
			}
			else if(lt=="img"){
				resStart = 1;
				resLength = 17;
				this._levelOffset =_startLevel+ 2;
			}
			else if(lt=="ter"){
				resStart = 0;
				resLength = 13;
				this._levelOffset = _startLevel+  1;
			}
			if(this._projection == "4326"){
				this.bounds = new Rectangle2D(-180, -90, 180, 90);
				this.origin = new Point2D(-180,90);
				this.resolutions = [];
				for(var i:int=resStart;i<=resLength;i++){
					tempResolutions.push(1.40625/2/Math.pow(2,i));
					//					this.resolutions.push(1.407828831679488/2/Math.pow(2,i));
					
				}
				this._proj = "c";
			}
			else{
				this.bounds = new Rectangle2D(-20037508.3392, -20037508.3392, 20037508.3392, 20037508.3392);
				this.origin = new Point2D(-20037508.3392,20037508.3392);
				this.resolutions = [];
				for(var j:int=resStart;j<=resLength;j++){
					tempResolutions.push(156543.0339/2/Math.pow(2,j));
				}
				this._proj = "w";
			}
			
			if(_levelChange == true)
			{
				if(_startLevel > 0 && _startLevel < tempResolutions.length && _endLevel > 0 
					&& _endLevel <tempResolutions.length - 1) {
					this.resolutions = tempResolutions.slice(_startLevel,_endLevel);
				}
				if(_endLevel != -1 && _endLevel < tempResolutions.length) {
					this.resolutions = tempResolutions.slice(0,_endLevel);
				}
				if(_startLevel != -1 && _startLevel < tempResolutions.length )
				{
					this.resolutions =this.resolutions.slice(_startLevel);
				}
				_levelChange = false;				
			}else{
				this.resolutions = tempResolutions;
			}
			
			//setLoaded(true);
		}
		
		[Inspectable(category = "iClient", enumeration = "true,false")] 
		public function get isLabel():Boolean
		{
			return _isLabel;
		}
		/**设置天地图图可见比例尺*/
		public function set isLabel(value:Boolean):void
		{
			if(this._isLabel != value)
			{
				_isLabel = value;
				this._isLabelChange = true;
				invalidateProperties();
			}
		}
		
		public function get projection():String
		{
			return _projection;
		}
		
		public function set projection(value:String):void
		{
			_projection = value;
		}
		
		[Inspectable(category = "iClient", enumeration = "vec,img,ter")] 
		public function get layerType():String
		{
			return _layerType;
		}
		
		public function set layerType(value:String):void
		{
			if(this._layerType != value)
			{
				_layerType = value;
				this._layerTypeChange = true;
				invalidateProperties();
			}
		}
		
		override protected function commitProperties() : void
		{
			super.commitProperties();
			
			if (this._isLabelChange||this._layerTypeChange)
			{
				removeAllChildren();
				this._layerTypeChange = false;
				this._isLabelChange = false;
				invalidateLayer();
			}
		}
		
		override protected function getTileURL(row:int, col:int, level:int):URLRequest
		{
			level += this._levelOffset;
			var serverURL:String = URL;
			var lt:String = this._layerType;
			if(this.isLabel){
				if(lt=="vec")lt = "cva";
				if(lt=="img")lt = "cia";
				if(lt=="ter")lt = "cta";
			}
			serverURL = serverURL.replace("{subdomain}", Math.round(Math.random() * 7).toString()); 
			serverURL = serverURL.replace("{tileX}", col.toString());
			serverURL = serverURL.replace("{tileY}", row.toString());
			serverURL = serverURL.replace("{level}", level.toString());
			serverURL = serverURL.replace("{proj}", this._proj);
			serverURL = serverURL.replace("{layerType}", lt);
			return new URLRequest(serverURL);
		}
		
		override sm_internal function setMap(map:Map) : void
		{
			
			this.loadLayerInfo();
			super.setMap(map);
		}
		
		/**开始比例尺级别*/
		public function  setLevel(startLevel:int = -1,endLevel:int = -1):void
		{
			if( startLevel > endLevel)
			{
				return;
			}
			_startLevel = startLevel;
			_endLevel = endLevel;
			_levelChange = true;
		}
	}
}