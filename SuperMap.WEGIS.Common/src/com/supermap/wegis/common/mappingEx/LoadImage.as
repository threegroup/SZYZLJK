package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.CoordinateReferenceSystem;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.core.Unit;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.mapping.TiledCachedLayer;
	import com.supermap.web.serialization.json.JSONDecoder;
	import com.supermap.web.utils.ScaleUtil;
	
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class LoadImage extends TiledCachedLayer
	{
		private var myScale:Array=[]
		
		public function LoadImage()
		{
			super();
		}
		
		private var _mapName:String;
		public var map:Map;
		public var removeTopLevel:Boolean = false;
		private var _mapNameChange:Boolean;
		[Bindable(event="mapNameChange")]
		public function get mapName():String
		{
			return _mapName;
		}
		
		public function set mapName(value:String):void
		{
			if( _mapName != value)
			{
				_mapName = encodeURI(value);
				dispatchEvent(new Event("mapNameChange"));
				_mapNameChange=true;
				invalidateProperties();
			}
		}
		
		private var _urlChange:Boolean;
		private var _url:String;
		
		[Bindable(event="urlChange")]
		override public function get url():String
		{
			return _url;
		}
		
		override public function set url(value:String):void
		{
			if( _url !== value)
			{
				_url = value;
				dispatchEvent(new Event("urlChange"));
				_urlChange=true;
				invalidateProperties();
			}
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			if(this._mapNameChange||this._urlChange)
			{
				removeAllChildren();
				this._mapNameChange=false;
				this._urlChange=false;
				buildTileinfo();				
				invalidateLayer();
			}
		}
		
		private function buildTileinfo():void
		{
			// TODO Auto Generated method stub
			
			var httpService:HTTPService=new HTTPService();
			httpService.useProxy=false;
			httpService.resultFormat="text";
			httpService.url=_url+"?request=getTileInfo&name="+_mapName;
			httpService.addEventListener(ResultEvent.RESULT,resultHandler);
			httpService.send();		
		}
		
		protected function resultHandler(event:ResultEvent):void
		{
			// TODO Auto-generated method stub
			
			var jsonDec:JSONDecoder=new JSONDecoder(event.result.toString(),true);
			var jsonObj:Object=jsonDec.getValue();
			var boundsObj:Object=jsonObj.bounds;
			var scaleArray:Array=jsonObj.scales as Array;
			
			this.CRS=new CoordinateReferenceSystem();
			this.tileSize=256;
			this.bounds=new Rectangle2D(boundsObj.left,boundsObj.bottom,boundsObj.right,boundsObj.top);
			this.origin=new Point2D(boundsObj.left,boundsObj.top);
			var myResolutions:Array=[];
			var index:int = 0;
			if(removeTopLevel)
				index = 1;
			for(;index <scaleArray.length; index++)
			{
				var s:Object = scaleArray[index];
				myResolutions.push(ScaleUtil.scaleToResolution(Number(s.value),96,Unit.METER));
				myScale.push(s.capital);
			}
			this.resolutions=myResolutions;
			setLoaded(true);
			if(map)
				map.zoomToLevel(0);
		}
		
		override protected function getTileURL(row:int, col:int, level:int):URLRequest
		{
			return new URLRequest(_url+"?request=getTile&name="+_mapName+"&scale="+myScale[level]+"&row="+row+"&col="+col);
		}
	}
}