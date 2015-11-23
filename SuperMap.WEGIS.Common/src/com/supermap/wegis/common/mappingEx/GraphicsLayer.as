package  com.supermap.wegis.common.mappingEx
{
	import __AS3__.vec.*;
	
	import com.supermap.web.core.*;
	import com.supermap.web.core.geometry.*;
	import com.supermap.web.core.styles.graphicStyles.*;
	import com.supermap.web.events.*;
	import com.supermap.web.mapping.Layer;
	import com.supermap.web.mapping.supportClasses.*;
	import com.supermap.web.sm_internal;
	
	import flash.display.*;
	import flash.events.*;
	import flash.geom.*;
	import flash.utils.*;
	
	import mx.core.*;
	import mx.events.*;
	
	use namespace sm_internal;
	
	public class GraphicsLayer extends Layer
	{
		public var _graphics:Vector.<Graphic>;
		private var _preLayer:UIComponent;
		private var _behindPanLayer:UIComponent;
		private var _behindLayer:UIComponent;
		private var _bmd:BitmapData;
		private var _bmdChanged:Boolean = true;
		private var _fDictionary:Dictionary;
		private var _graphicClickHandler:Function;
		private var _graphicItemClickHandler:Function;
		private var _needPick:Boolean = true;
		private var _index:int = 0;
		private var _isPaning:Boolean = false;
		private var _gfAddedDispatched:Boolean = true;
		
		public function GraphicsLayer()
		{
			this._fDictionary = new Dictionary();
			this._graphics = new Vector.<Graphic>;
			this._preLayer = new UIComponent();
			this._behindPanLayer = new UIComponent();
			this._behindLayer = new UIComponent();
			this._behindPanLayer.alpha = 0.001;
			addEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
			this.addEventListener(MouseEvent.CLICK, this.behindLayerClickHandler);
			return;
		}// end function
		
		private var _layerType:int = 6;
		private var _layerIndex:int = 0;
		
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
		
		public function getGraphicById(id:String):Graphic
		{
			for each(var graphic:Graphic in this._graphics)
			{
				if(id == graphic.attributes.toString())
				{
					return graphic;
				}
			}
			return null;
		}
		
		/**
		 * @param attributeField 标识graphic.attribute 对应的字段
		 * @param id 要查找的ID
		 * */
		public function getGraphicByIdEx(attributeField:String,id:String):Graphic
		{
			for each(var graphic:Graphic in this._graphics)
			{
				if(id == graphic.attributes[attributeField])
				{
					return graphic;
				}
			}
			return null;
		}
		
		public function addGraphic(graphic:Graphic):void
		{
			add([graphic]);
		}
		
		public function removeGraphicById(id:String):void
		{
			for (var index:int = 0 ; index < this._graphics.length ;index ++)
			{
				var graphic:Graphic = this._graphics[index];
				if(id == graphic.attributes.toString())
				{
					this._graphics.splice(index,1);
					break;
				}
			}
		}
		
		public function removeGraphicByIdEx(attributeField:String,id:String):void
		{
			for (var index:int = 0 ; index < this._graphics.length ;index ++)
			{
				var graphic:Graphic = this._graphics[index];
				if(id == graphic.attributes[attributeField])
				{
					this._graphics.splice(index,1);
					break;
				}
			}
		}
		
		public function get graphicItems() : Vector.<Graphic>
		{
			return this._graphics;
		}// end function
		
		private	function get graphicItemClickHandler() : Function
		{
			return this._graphicItemClickHandler;
		}// end function
		
		private function set graphicItemClickHandler(value:Function) : void
		{
			if (value != null)
			{
				this._needPick = true;
				this._graphicItemClickHandler = value;
			}
			else
			{
				this._needPick = false;
			}
			return;
		}// end function
		
		public function get graphicClickHandler() : Function
		{
			return this._graphicClickHandler;
		}// end function
		
		public function set graphicClickHandler(value:Function) : void
		{
			if (value != null)
			{
				this._needPick = true;
				this._graphicClickHandler = value;
			}
			else
			{
				this._needPick = false;
			}
			return;
		}// end function
		
		override protected function viewBoundsChangedHandler(event:ViewBoundsEvent) : void
		{
			super.viewBoundsChangedHandler(event);
			this._bmdChanged = true;
			return;
		}// end function
		
		private function behindLayerClickHandler(event:MouseEvent) : void
		{
			var _loc_2:LayerContainer = null;
			var _loc_3:GraphicsLayer = null;
			var _loc_4:Point = null;
			var _loc_5:uint = 0;
			var _loc_6:uint = 0;
			var _loc_7:uint = 0;
			var _loc_8:String = null;
			var _loc_9:int = 0;
			var _loc_10:Graphic = null;
			var _loc_11:Point2D = null;
			var _loc_12:Rectangle2D = null;
			var _loc_13:GraphicMarkerStyle = null;
			var _loc_14:GeoPoint = null;
			var _loc_15:GeoRegion = null;
			var _loc_16:Point = null;
			if (this.graphicItemClickHandler != null)
			{
				_loc_2 = LayerContainer(this.parent);
				_loc_3 = event.currentTarget as GraphicsLayer;
				_loc_4 = new Point(_loc_3.mouseX - _loc_2.scrollRect.x, _loc_3.mouseY - _loc_2.scrollRect.y);
				if (this._bmdChanged)
				{
					this._bmd = new BitmapData(_loc_2.width, _loc_2.height);
					this._behindPanLayer.x = _loc_2.scrollRect.x;
					this._behindPanLayer.y = _loc_2.scrollRect.y;
					this._behindLayer.width = _loc_2.width;
					this._behindLayer.height = _loc_2.height;
					this._behindLayer.x = -_loc_2.scrollRect.x;
					this._behindLayer.y = -_loc_2.scrollRect.y;
					this._behindPanLayer.cacheAsBitmap = true;
					this._bmd.draw(this._behindPanLayer);
					this._bmdChanged = false;
				}
				_loc_5 = this._bmd.getPixel32(_loc_4.x, _loc_4.y);
				_loc_6 = _loc_5 >> 24 & 255;
				if (_loc_6 != 255)
				{
					return;
				}
				_loc_7 = this._bmd.getPixel(_loc_4.x, _loc_4.y);
				_loc_8 = _loc_7.toString(16);
				_loc_9 = parseInt(_loc_8, 16);
				_loc_10 = this._fDictionary[_loc_9] as Graphic;
				if (_loc_10)
				{
					_loc_11 = this.map.screenToMap(new Point(_loc_4.x, _loc_4.y));
					if (_loc_10.geometry is GeoPoint)
					{
						_loc_13 = _loc_10.style as GraphicMarkerStyle;
						_loc_14 = _loc_10.geometry as GeoPoint;
						if (_loc_13.symbol == "icon")
						{
							_loc_15 = this.getIconBounds(_loc_14.tempIconRec);
							if (!_loc_15.contains(new GeoPoint(_loc_11.x, _loc_11.y)))
							{
								return;
							}
						}
						else
						{
							_loc_16 = this.map.mapToScreen(new Point2D(_loc_14.x, _loc_14.y));
							_loc_12 = this.getPointBounds(_loc_16, _loc_13.xOffset, _loc_13.yOffset, _loc_13.size / 2);
						}
					}
					else
					{
						_loc_12 = _loc_10.geometry.bounds;
					}
					if (_loc_12 && !_loc_12.containsPoint(_loc_11))
					{
						return;
					}
					if (this.graphicItemClickHandler != null)
					{
						this.graphicItemClickHandler(_loc_10);
					}
				}
			}
			return;
		}// end function
		
		
		
		public function getGraphicByPointHandler(point:Point=null) : Graphic
		{
			var _loc_2:LayerContainer = null;
			var _loc_3:GraphicsLayer = null;
			var _loc_4:Point = null;
			var _loc_5:uint = 0;
			var _loc_6:uint = 0;
			var _loc_7:uint = 0;
			var _loc_8:String = null;
			var _loc_9:int = 0;
			var _loc_10:Graphic = null;
			var _loc_11:Point2D = null;
			var _loc_12:Rectangle2D = null;
			var _loc_13:GraphicMarkerStyle = null;
			var _loc_14:GeoPoint = null;
			var _loc_15:GeoRegion = null;
			var _loc_16:Point = null;
			_loc_2 = LayerContainer(this.parent);
			_loc_3 = this;
			_loc_4 = new Point(_loc_3.mouseX - _loc_2.scrollRect.x, _loc_3.mouseY - _loc_2.scrollRect.y);
			if(point != null)
			{
				_loc_4 = point;
			}
		
			if (this._bmdChanged)
			{
				this._bmd = new BitmapData(_loc_2.width, _loc_2.height);
				this._behindPanLayer.x = _loc_2.scrollRect.x;
				this._behindPanLayer.y = _loc_2.scrollRect.y;
				this._behindLayer.width = _loc_2.width;
				this._behindLayer.height = _loc_2.height;
				this._behindLayer.x = -_loc_2.scrollRect.x;
				this._behindLayer.y = -_loc_2.scrollRect.y;
				this._behindPanLayer.cacheAsBitmap = true;
				this._bmd.draw(this._behindPanLayer);
				this._bmdChanged = false;
			}
			_loc_5 = this._bmd.getPixel32(_loc_4.x, _loc_4.y);
			_loc_6 = (_loc_5 >> 24) & 0xFF;
			if (_loc_6 != 255)
			{
				return null;
			}
			_loc_7 = this._bmd.getPixel(_loc_4.x, _loc_4.y);
			_loc_8 = _loc_7.toString(16);
			_loc_9 = parseInt(_loc_8, 16);
			_loc_10 = this._fDictionary[_loc_9] as Graphic;
			if (_loc_10)
			{
				return _loc_10;
			}else{
				return null;
			}
			
		}// end function
		
		private function getIconBounds(points:Array) : GeoRegion
		{
			var _loc_5:Point = null;
			var _loc_6:Point2D = null;
			var _loc_2:* = new GeoRegion();
			var _loc_3:* = new Array();
			var _loc_4:int = 0;
			while (_loc_4 < points.length)
			{
				
				_loc_5 = points[_loc_4] as Point;
				_loc_6 = new Point2D();
				_loc_6.x = this.map.containerToMapX(_loc_5.x);
				_loc_6.y = this.map.containerToMapY(_loc_5.y);
				_loc_3.push(_loc_6);
				_loc_4 = _loc_4 + 1;
			}
			_loc_2.addPart(_loc_3);
			return _loc_2;
		}// end function
		
		private function getPointBounds(point:Point, xOffset:Number, yOffset:Number, half:Number) : Rectangle2D
		{
			var _loc_5:* = point.x - half + xOffset;
			var _loc_6:* = point.x + half + xOffset;
			var _loc_7:* = point.y - half + yOffset;
			var _loc_8:* = point.y + half + yOffset;
			var _loc_9:* = this.map.screenToMap(new Point(_loc_5, _loc_8));
			var _loc_10:* = this.map.screenToMap(new Point(_loc_6, _loc_7));
			var _loc_11:* = new Rectangle2D(_loc_9.x, _loc_9.y, _loc_10.x, _loc_10.y);
			return _loc_11;
		}// end function
		
		private function creationCompleteHandler(event:FlexEvent) : void
		{
			removeEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
			setLoaded(true);
			this.drawGraphics();
			return;
		}// end function
		
		override protected function addMapListeners() : void
		{
			super.addMapListeners();
			if (this.map)
			{
				this.map.addEventListener(PanEvent.PAN_START, this.panStartHandler);
				this.map.addEventListener(PanEvent.PAN_END, this.panEndHandler);
			}
			return;
		}// end function
		
		override protected function removeMapListeners() : void
		{
			super.removeMapListeners();
			if (this.map)
			{
				this.map.removeEventListener(PanEvent.PAN_START, this.panStartHandler);
				this.map.removeEventListener(PanEvent.PAN_END, this.panEndHandler);
			}
			return;
		}// end function
		
		private function panStartHandler(event:PanEvent) : void
		{
			super.zoomStartHandler(new ZoomEvent(ZoomEvent.ZOOM_END));
			this._preLayer.visible = false;
			this._behindLayer.graphics.clear();
			this._behindLayer.visible = false;
			this._isPaning = true;
			return;
		}// end function
		
		private function panEndHandler(event:PanEvent) : void
		{
			this._preLayer.visible = true;
			this._behindLayer.visible = true;
			this.clearBitMapData();
			this.graphics.clear();
			this._isPaning = false;
			return;
		}// end function
		
		override protected function draw() : void
		{
			if (!this._isPaning)
			{
				this._behindLayer.graphics.clear();
				this.drawGraphics();
			}
			else
			{
				this._isPaning = false;
			}
			return;
		}// end function
		
		private function drawGraphics() : void
		{
			var errorGraphics:Array
			var messagge:String;
			var clipRect:Rectangle2D;
			var clippedGraphics:Vector.<Graphic>;
			var g:Graphic;
			var graphic1:Graphic;
			var point:GeoPoint;
			var region:GeoRegion;
			var line:GeoLine;
			var graphic:Graphic;
			var graphicStyle:GraphicFillStyle;
			var style:GraphicLineStyle;
			var markerStyle:GraphicMarkerStyle;
			errorGraphics = [];
			if (map)
			{
				clipRect = map.viewBounds;
				clippedGraphics = new Vector.<Graphic>();
				var _loc_3:Vector.<Graphic> = this._graphics;
				for each (g in  _loc_3)
				{
					if (g.geometry is GeoPoint)
					{
						point = g.geometry as GeoPoint;
						if (clipRect.contains(point.x, point.y))
						{
							clippedGraphics.push(g);
						}
						continue;
					}
					if (g.geometry is GeoRegion)
					{
						region = g.geometry as GeoRegion;
						if (clipRect.intersects(region.bounds))
						{
							clippedGraphics.push(g);
						}
						continue;
					}
					if (g.geometry is GeoLine)
					{
						line = g.geometry as GeoLine;
						if (clipRect.intersects(line.bounds))
						{
							clippedGraphics.push(g);
						}
					}
				}
				this._preLayer.graphics.clear();
				_loc_3 = clippedGraphics;
				for each(graphic1 in _loc_3)
				{
					try
					{
						graphic1.style.draw(this._preLayer, graphic1.geometry, null, map);
					}
					catch (e:Error)
					{
						errorGraphics.push(graphic1);
						messagge = e.message;
					}
				}
				this._preLayer.cacheAsBitmap = true;
				if (this._needPick)
				{
					for each(graphic in _loc_3)
					{
						if (graphic.geometry is GeoRegion)
						{
							try
							{
								graphicStyle = graphic.style as GraphicFillStyle;
								graphicStyle._pickColor = graphic.pickColor;
								graphicStyle.draw(this._behindLayer, graphic.geometry, null, map);
								graphicStyle._pickColor = -1;
							}
							catch (e:Error)
							{
							}
						}
						if (graphic.geometry is GeoLine)
						{
							try
							{
								style = graphic.style as GraphicLineStyle;
								style._pickColor = graphic.pickColor;
								style.draw(this._behindLayer, graphic.geometry, null, map);
								style._pickColor = -1;
							}
							catch (e:Error)
							{
							}
						}
						if (graphic.geometry is GeoPoint)
						{
							try
							{
								markerStyle = graphic.style as GraphicMarkerStyle;
								markerStyle.pickColor = graphic.pickColor;
								markerStyle.draw(this._behindLayer, graphic.geometry, null, map);
								markerStyle.pickColor = -1;
							}
							catch (e:Error)
							{
							}
						}
					}
					this._behindLayer.cacheAsBitmap = true;
				}
				if (!this._gfAddedDispatched && this.hasEventListener(GraphicsLayerEvent.GRAPHICS_ADD))
				{
					this.dispatchEvent(new GraphicsLayerEvent(GraphicsLayerEvent.GRAPHICS_ADD, errorGraphics, messagge));
					this._gfAddedDispatched = true;
				}
				this._bmdChanged = true;
			}
			return;
		}// end function
		
		override protected function createChildren() : void
		{
			super.createChildren();
			this.addChild(this._behindPanLayer);
			this._behindPanLayer.addChild(this._behindLayer);
			this.addChild(this._preLayer);
			return;
		}// end function
		
		public function add(value:Array) : void
		{
			var _loc_2:Graphic = null;
			if (value && value.length > 0)
			{
				for each (_loc_2 in value)
				{
					this._graphics.push(_loc_2);
					_loc_2.pickColor = this._index;
					this._fDictionary[this._index] = _loc_2;
					var _loc_5:GraphicsLayer = this;
					var _loc_6:* = this._index + 1;
					_loc_5._index = _loc_6;
				}
				this._gfAddedDispatched = false;
			}
			this.refresh();
			return;
		}// end function
		
		public function remove(value:Array) : void
		{
			var message:String;
			var g:Graphic;
			var value:* = value;
			var indexes:int;
			if (value && value.length > 0)
			{
				try
				{
					var _loc_4:Array = value;
					for (var  _loc_3:int = 0 ; _loc_3 < _loc_4.length ;_loc_3++)
					{
						
						g = _loc_4[_loc_3];
						indexes = this._graphics.indexOf(g);
						if (indexes != -1)
						{
							this._graphics.splice(indexes, 1);
						}
					}
				}
				catch (e:Error)
				{
					message = e.message;
				}
				if (this.hasEventListener(GraphicsLayerEvent.GRAPHICS_REMOVE))
				{
					this.dispatchEvent(new GraphicsLayerEvent(GraphicsLayerEvent.GRAPHICS_REMOVE, null, message));
				}
			}
			this.refresh();
			return;
		}// end function
		
		public function removeAll() : void
		{
			var message:String;
			try
			{
				this._graphics.splice(0, this._graphics.length);
			}
			catch (e:Error)
			{
				message = e.message;
			}
			if (this.hasEventListener(GraphicsLayerEvent.GRAPHICS_REMOVE_ALL))
			{
				this.dispatchEvent(new GraphicsLayerEvent(GraphicsLayerEvent.GRAPHICS_REMOVE_ALL, null, message));
			}
			this.refresh();
			return;
		}// end function
		
		override protected function zoomStartHandler(event:ZoomEvent) : void
		{
			super.zoomStartHandler(event);
			this._preLayer.visible = false;
			this._behindLayer.visible = false;
			return;
		}// end function
		
		override protected function zoomEndHandler(event:ZoomEvent) : void
		{
			super.zoomEndHandler(event);
			this._preLayer.visible = true;
			this._behindLayer.visible = true;
			this.graphics.clear();
			return;
		}// end function
		
	}
}
