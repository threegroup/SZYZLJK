package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.ogc.wfs.GetWFSFeature;

	
	public class GetWFSFeatureEx extends GetWFSFeature
	{
		private var _layerType:int = 0;
		private var _layerIndex:int = 0;
		private var _request:String = "GetFeature";
		private var _version:String = "1.0.0";
		private var _typeName:String;
		private var _filters:Array;
		
			
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
		
		
		public function get request():String
		{
			return _request;
		}
		
		public function set request(value:String):void
		{
			_request = value;
		} 
		
		override public function get version():String
		{
			return _version;
		}
		
		override public function set version(value:String):void
		{
			_version = value;
		} 
		
		public function get typeName():String
		{
			return _typeName;
		}
		
		public function set typeName(value:String):void
		{
			_typeName = value;
		}
		
		/*override public function get filters() :Array
		{
			return _filters;
		}
		
		override public function get filters(value:Array) :Array
		{
			_filters = Array;
		}*/
		
		
		override protected function getFinalUrl():String
		{
			this.url = this.url + "?SERVICE=WFS&VERSION="+this.version+"&REQUEST="+this.request;
			if(this.typeName != null)
				this.url = this.url +"&TYPENAME="+this.typeName;
			if(this.filters != null)
			{
				if(this.filters.length>0)
				{
					this.url = this.url +"&Filter=(";
						for each(var filter:Object in this.filters)
						{
							this.url = this.url + "<ogc:Filter>";
								this.url = this.url + "<ogc:"+ filter.type + ">";
									this.url = this.url +"<ogc:PropertyName>"+filter.propertyNames[0]+"</ogc:PropertyName>";
									this.url = this.url + "<ogc:Literal>"+filter.value+"</ogc:Literal>";
								this.url = this.url +"</ogc:"+ filter.type +">";
							this.url = this.url + "</ogc:Filter>";
						}
					this.url = this.url +")";
				}
			}
				
			return this.url;
		}
		
		public function GetWFSFeatureEx(url:String = null)
		{
			super(url);
		}
	}
}