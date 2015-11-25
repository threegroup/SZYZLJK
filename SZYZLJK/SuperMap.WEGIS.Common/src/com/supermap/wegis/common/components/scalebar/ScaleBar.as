package   com.supermap.wegis.common.components.scalebar
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Unit;
	import com.supermap.web.events.MapEvent;
	import com.supermap.web.events.ViewBoundsEvent;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.sm_internal;
	import com.supermap.web.utils.ScaleUtil;
	
	use namespace sm_internal;

	
	import mx.events.ResizeEvent;
	
	import spark.components.supportClasses.SkinnableComponent;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.geometry.Geometry;
	import com.supermap.wegis.common.skins.scalebar.ScaleBarSkin;
	
	/**
	 * ${components_ScaleBar_Title}.
	 * <p>${components_ScaleBar_Description}</p> 
	 * 
	 * 
	 */	
	public class ScaleBar extends SkinnableComponent
	{
		
        private var _map:Map = null;
		private var _dirty:Boolean = false;
		private var _lengthKilo:Number;
		private var _lengthMile:Number;
		private var _lengthNMile:Number;
		private var _textKilo:String;
		private var _textMile:String;
		private var _textNMile:String;
		private var _widthRelativeToMapWidth:Number = 0.2;
		private var _language:String = "en";
		private var _maxLength:Number = 0;
		//常量，屏幕上每米代表的像素数
		private static const PIXELS_PER_METER:Number = 3779.53;
		private static const RADIUS:Number = 6.37814e+006;
		private const EarthCircumferenceInMeters:Number = 40075016.685578488;
		private const HalfEarthCircumferenceInMeters:Number = EarthCircumferenceInMeters / 2;
		private const EarthRadiusInMeters:Number = 6378137.0;
		private const MercatorLatitudeLimit:Number = 85.051128;
		/**线和字体颜色*/
		private var _solidColor:uint=0x000000;
		/**
		 * ${components_ScaleBar_constructor_None_D} 
		 * 
		 */		
		public function ScaleBar()
		{
			mouseEnabled = false;
			mouseChildren = false;
			//this.addEventListener(FlexEvent.PREINITIALIZE, onPreinitialize);
			setStyle("skinClass",ScaleBarSkin);
		}
		
		/**线和字体颜色*/
		[Bindable]
		public function get solidColor():uint
		{
			return _solidColor;
		}
		/**线和字体颜色*/
		public function set solidColor(value:uint):void
		{
			_solidColor = value;
		}

		/**
		 * ${components_ScaleBar_attribute_textNMile_D} 
		 * @return 
		 * 
		 */		
		public function get textNMile():String
		{
			return _textNMile;
		}

		/**
		 * ${components_ScaleBar_attribute_lengthNMile_D} 
		 * @return 
		 * 
		 */		
		public function get lengthNMile():Number
		{
			return _lengthNMile;
		}

		/**
		 * ${components_ScaleBar_attribute_map_D} 
		 * @return
		 * @see Map Class 
		 * 
		 */		
		public function get map():Map
		{
			return this._map;
		} 
		
		public function set map(value:Map):void
		{
			if(value)
			{ 
				if(this._map != value)
				{
					this._map = value;
					this._map.addEventListener(ResizeEvent.RESIZE, resizeHandler);
					this._map.addEventListener(ViewBoundsEvent.VIEW_BOUNDS_CHANGE , viewBoundsChangeHandler);
					this._map.addEventListener(MapEvent.LOAD, mapLoadHandler);
				}
			}
		}
		
		/**
		 * ${components_ScaleBar_attribute_language_D} 
		 * @return
		 * @see Map Class 
		 * 
		 */		
		public function get language():String
		{
			return this._language;
		} 
		
		public function set language(value:String):void
		{
			if(value&&value=="zh")
			{
				this._language = "zh";
			}
			else{
				this._language = "en";
			}
		}
		
		/**
		 * ${components_ScaleBar_attribute_maxLength_D} 
		 * @return
		 * @see Map Class 
		 * 
		 */		
		public function get maxLength():Number
		{
			return this._maxLength;
		} 
		
		public function set maxLength(value:Number):void
		{
			if(value>0)
			{
				this._maxLength = value;
			}
		}

		/**
		 * ${components_ScaleBar_attribute_lengthKilo_D} 
		 * @return 
		 * 
		 */		
		public function get lengthKilo():Number
		{
			return this._lengthKilo;
		}
		
		/**
		 * ${components_ScaleBar_attribute_lengthMile_D} 
		 * @return 
		 * 
		 */		
		public function get lengthMile():Number
		{
			return this._lengthMile;
		}
		
		/**
		 * ${components_ScaleBar_attribute_textKilo_D} 
		 * @return
		 * @see #lengthKilo 
		 * 
		 */		
		public function get textKilo() : String
		{
			return this._textKilo;
		}
		
		/**
		 * ${components_ScaleBar_attribute_textMile_D} 
		 * @return 
		 * @see #lengthMile
		 * 
		 */		
		public function get textMile() : String
		{
			return this._textMile;
		}
		
		/**
		 * @private 
		 * 
		 */		
		override protected function attachSkin():void
		{
			super.attachSkin();
			if (skin)
			{
				if (this._map)
				{
					if (this._map.loaded === false)
					{
						skin.includeInLayout = false;
						skin.visible = false;
					}
				}
			}
		}

//		private var curRadius:Number;
		private var curViewBoundsWidth:Number;
		/**
		 * @private 
		 * 
		 */	
		override protected function commitProperties():void
		{
			var curScale:Number = NaN;
			super.commitProperties();
			
			if (this._dirty)
			{
				this._dirty = false;
				if (this._map.loaded)
				{
					var metersPerPixel:Number = NaN;
					if (this._map.resolution)
					{
						metersPerPixel = this.calcRealReferenceScale();
							
						this._lengthKilo = this.getKiloLength(metersPerPixel);
						this._lengthMile = this.getMileLength(metersPerPixel);
						this._lengthNMile = this.getNMileLength(metersPerPixel);
						if (skin)
						{
							skin.invalidateSize();
						}
					}
					else
					{
						this._lengthKilo = 0;
						this._lengthMile = 0;
					}
				}
			}
		}
		// todo 需要支持工具类
		private function calcRealReferenceScale():Number
		{
			var center:Point2D = this._map.viewBounds.center;
			var metersPerPixel:Number = NaN;
			var curRadius:Number;
			var radian:Number;
			//经纬度地理单位
			if(this._map.CRS.unit.toUpperCase() == Unit.DEGREE.toUpperCase() || Unit.getUnitFronMillimetre(this._map.CRS.unit).toUpperCase() == Unit.DEGREE.toUpperCase())//Unit.DECIMAL_DEGREE
			{
				radian = Math.min(89.999, Math.abs(center.y)) * Math.PI / 180;
				curRadius = Math.cos(radian) * EarthRadiusInMeters;
				metersPerPixel = (this._map.viewBounds.width/360)*(Math.PI * 2*curRadius)/this._map.width;
			}
		    //非经纬度单位，默认为米
			else if(this._map.CRS.unit.toUpperCase() == Unit.METER.toUpperCase() || Unit.getUnitFronMillimetre(this._map.CRS.unit).toUpperCase() == Unit.METER.toUpperCase())
			{
				//web mercator 投影
				if(this._map.CRS.wkid == 900913)
				{
					var lon:Number = center.x / HalfEarthCircumferenceInMeters * 180.0;
					var lat:Number = center.y / HalfEarthCircumferenceInMeters * 180.0;
					lat = 180 / Math.PI * (2 * Math.atan(Math.exp(lat * Math.PI / 180.0)) - Math.PI / 2);
					
					radian = Math.min(MercatorLatitudeLimit, Math.abs(lat)) * Math.PI / 180;
					curRadius = Math.cos(radian) * EarthRadiusInMeters;
					metersPerPixel = (curRadius * Math.PI * 2)*(this._map.viewBounds.width/(Math.PI * 2 * EarthRadiusInMeters))/this._map.width;
				}
				//其它投影
				else
				{
					metersPerPixel = this._map.resolution;
				}
			}
			return metersPerPixel;
			
		}
		private function mapLoadHandler(event:MapEvent):void
		{
			this._map.removeEventListener(MapEvent.LOAD, this.mapLoadHandler);
			if (skin)
			{
				skin.includeInLayout = true;
				skin.visible = true;
			}
			
			this._dirty = true;
			invalidateProperties();
		}
		
		private function resizeHandler(event:ResizeEvent):void
		{
			this._dirty = true;
			invalidateProperties();
		}
		
		private function viewBoundsChangeHandler(event:ViewBoundsEvent) : void
		{
			this._dirty = true;
			invalidateProperties();
		}
		
		private function getKiloLength(metersPerPixel:Number):Number
		{
			var sacleWidth:Number = NaN;
			var scaleValue:Number = NaN;
			var kiloLength:Number = 0;
			
			var unit1:String = " m";
			var unit2:String = " km";
			if(this._language=="zh"){
				unit1 = " 米";
				unit2 = " 千米";
			}
			
			if(this.maxLength>0){
				sacleWidth = this.maxLength;
			}
			else{
				sacleWidth = this.map.width * this._widthRelativeToMapWidth;
			}
			
			if (metersPerPixel * sacleWidth < 800)
			{
				scaleValue = calcScale(metersPerPixel, sacleWidth);
				kiloLength = Math.round(scaleValue / metersPerPixel);
				this._textKilo = Math.floor(scaleValue).toString() +  ":" +unit1;
			}
			else
			{
				scaleValue = calcScale(metersPerPixel / 1000, sacleWidth);
				kiloLength = Math.round(scaleValue * 1000 / metersPerPixel);
				this._textKilo = Math.max(Math.floor(scaleValue), 0.5).toString() +  ":" +unit2;
			}
			return kiloLength;
		}
			
		private function getNMileLength(metersPerPixel:Number):Number
		{
			var scaleValue:Number = NaN;
			var nmileLength:Number = 0;
			var sacleWidth:Number = NaN;
			
			//sacleWidth = this.map.width * this._widthRelativeToMapWidth;
			var unit1:String = " nmi";
			if(this._language=="zh"){
				unit1 = " 海里";
			}
			
			if(this.maxLength>0){
				sacleWidth = this.maxLength;
			}
			else{
				sacleWidth = this.map.width * this._widthRelativeToMapWidth;
			}
			
			scaleValue = calcScale(metersPerPixel / 1852, sacleWidth);
			nmileLength = Math.round(scaleValue * 1852 / metersPerPixel);
			this._textNMile = Math.max(Math.floor(scaleValue), 0.5).toString() +  ":" +unit1;
			return nmileLength;
		}
		
		private function getMileLength(metersPerPixel:Number):Number
		{
			var scaleValue:Number = NaN;
			var mileLength:Number = 0;
			var sacleWidth:Number = NaN;
			
			var unit1:String = " ft";
			var unit2:String = " mi";
			if(this._language == "zh"){
				unit1 = " 英尺";
				unit2 = " 英里";
			}
			
			
			//sacleWidth = this.map.width * this._widthRelativeToMapWidth;
			
			if(this.maxLength>0){
				sacleWidth = this.maxLength;
			}
			else{
				sacleWidth = this.map.width * this._widthRelativeToMapWidth;
			}
			
			if (metersPerPixel * sacleWidth < 800)
			{
				metersPerPixel = metersPerPixel * 39.37 / 12;
				scaleValue = calcScale(metersPerPixel, sacleWidth);
				mileLength = Math.round(scaleValue / metersPerPixel);
				this._textMile = Math.floor(scaleValue).toString() + ":" + unit1;
			}
			else
			{
				metersPerPixel = metersPerPixel * 39.37 / (12 * 5280);
				scaleValue = calcScale(metersPerPixel, sacleWidth);
				mileLength = Math.round(scaleValue / metersPerPixel);
				this._textMile = Math.max(Math.floor(scaleValue), 0.5).toString() + ":" + unit2;
			}
			return mileLength;
		}
		
		private function calcScale(metersPerPixel:Number, totalPixel:Number):Number
		{
			var mapLength:Number = metersPerPixel * totalPixel;
			var commonLog:Number = Math.log(mapLength) / Math.log(10); // 换底公式，把自然对数转换为mapTotalLength的以10为底的常用对数
			var commonFloorLog:int = Math.floor(commonLog);  //常用对数的下限整数值
			var newMapLength:Number = Math.pow(10, commonFloorLog); 
			var lenCoefficient:Number = mapLength / newMapLength;
			var newLenCoefficient:Number = 0.1;
			if (lenCoefficient < 0.2)
			{
				newLenCoefficient = 0.1;
			}
			else if (lenCoefficient < 0.3)
			{
				newLenCoefficient = 0.2;
			}
			else if (lenCoefficient < 0.4)
			{
				newLenCoefficient = 0.3;
			}
			else if (lenCoefficient < 0.5)
			{
				newLenCoefficient = 0.4;
			}
			else if (lenCoefficient < 1)
			{
				newLenCoefficient = 0.5;
			}
			else if (lenCoefficient < 2)
			{
				newLenCoefficient = 1;
			}
			else if (lenCoefficient < 3)
			{
				newLenCoefficient = 2;
			}
			else if (lenCoefficient < 4)
			{
				newLenCoefficient = 3;
			}
			else if (lenCoefficient < 5)
			{
				newLenCoefficient = 4;
			}
			else if (lenCoefficient < 10)
			{
				newLenCoefficient = 5;
			}
			else
			{
				newLenCoefficient = 10;
			}
			var scaleValue:Number = newMapLength * newLenCoefficient;
			return scaleValue;
		}
		
	}
}