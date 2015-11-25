package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.mapping.DynamicWMSLayer;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.sm_internal;
	
	import flash.display.Loader;
	import flash.net.URLRequest;
	
	import mx.utils.StringUtil;
	import mx.utils.URLUtil;
	
	
	use namespace sm_internal;
	public class DynamicWMSLayerEx extends  DynamicWMSLayer
	{
		
		private var _url:String;
		private var _urlChanged:Boolean;
		
		/**图层的id,非servicesID*/
		private var layerId:String;
		
		/**图层类型,注记4，点3，线2，面1，影像0*/
		private var _layerType:int;
		
		/**辅助显示图层位置*/
		private var _layerIndex:int = 0;
		
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
		
		
		public override function set url(value:String):void
		{
			value = StringUtil.trim(value);
			if (this._url != value && value != null)
			{			
				this._url = value ;	
				this._urlChanged = true;
				invalidateProperties();
			}
		}
		
		public override  function get url():String
		{
			return _url;
		}
		
		
		public function DynamicWMSLayerEx()
		{
			super();
			this.setLoaded(true);
			this.url = url;
			this.layers = layers;
		}
		
		override protected function commitProperties() : void
		{
			super.commitProperties();
			if ( this._urlChanged )
			{
				removeAllChildren();	
				this._urlChanged = false;
				invalidateLayer();
			}
		}
		
		
		override protected function loadMapImage(loader:Loader):void
		{
			
			var _url:String = url;
			_url += "&LAYERS="+layers;
			_url += "&WIDTH="+this.map.width;
			_url += "&HEIGHT="+this.map.height;
			_url += "&BBOX="+this.map.viewBounds.bbox;
			
			var wmsReq:URLRequest = new URLRequest(_url);
			loader.load(wmsReq);
		}
		
	}
}