package com.supermap.wegis.common.components.mapCtrl
{
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.events.MapEvent;
	import com.supermap.web.mapping.ImageLayer;
	import com.supermap.web.mapping.InfoWindow;
	import com.supermap.web.mapping.Layer;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.utils.ScaleUtil;
	import com.supermap.wegis.common.utils.ArrayCollectionUtils;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	
	public class MapCtrl extends Map
	{
		private var _viewBoundsEx:Rectangle2D;
		public var autoViewEntire:Boolean = true;
		public function MapCtrl()
		{
			super();
			this.addEventListener(FlexEvent.CREATION_COMPLETE,creationHandle);
			addEventListener(MapEvent.LOAD,viewEntireHandler);
		}
		
		private function creationHandle(event:FlexEvent):void
		{
			var infoWindow:InfoWindow = this.infoWindow;
			infoWindow.setStyle("dropshadowvisible",false);
			infoWindow.setStyle("backgroundAlpha",1);
			infoWindow.setStyle("backgroundColor",0xE4EEE7); 
			infoWindow.setStyle("borderVisible",false);
			infoWindow.setStyle("borderColor",0xE4EEE7);
			infoWindow.setStyle("borderThickness",1);
			infoWindow.setStyle("paddingTop",0);
			infoWindow.setStyle("paddingRight",0);
			infoWindow.setStyle("paddingLeft",0);
			infoWindow.setStyle("paddingBottom",0);
			infoWindow.closeButtonVisible =false;
			infoWindow.infoWindowLabelVisible =false;
		}
		
		private function viewEntireHandler(event:MapEvent):void
		{
			viewEntire();
		}
		
		override public function set scales(value:Array):void
		{
			var tempValue:Array = [];
			for each(var item:Number in value)
			{
				if(tempValue.indexOf(item) == -1)
				{
					tempValue.push(item);
				}
			}
			resolutions = ScaleUtil.scalesToResolutions(tempValue,96);
			super.scales =tempValue;
		}
		
		override public function viewEntire():void
		{
			if(autoViewEntire)
			{
				this.viewBounds = _viewBoundsEx;
			}else{
				super.viewEntire();
			}
		}
		
		/**设置全幅显示范围*/
		public function get viewBoundsEx():Rectangle2D
		{
			if(_viewBoundsEx == null)
			{
				_viewBoundsEx = new Rectangle2D(62.03,12.95,146.19,56.23);
			}
			return _viewBoundsEx;
		}
		
		/**设置显示范围*/
		public function set viewBoundsEx(value:Rectangle2D):void
		{
			_viewBoundsEx = value;
			viewBounds = viewBoundsEx;
		}
		
		override public function set viewBounds(value:Rectangle2D):void
		{
			if(resolutions != null)
			{
				super.viewBounds = value;
			}
		}
		
		/**对图层进行排序，只通过movelaye进行图层位置调节，避免图层刷新
		 * @param fields 排序字段，可以使多字段，第一个字段为主字段
		 * @param fields 是否降序
		 * */
		public function sortLayers(fields:Array,descendings:Array = null,isnums:Array = null):void
		{
			var layers:ArrayCollection = this.layers as ArrayCollection;
			var tempLayers:ArrayCollection = new ArrayCollection(layers.toArray());
			//针对drawaction往map中添加的临时featureslayers，此处先移到最上层，然后从排序数组中移除
			var layer:Layer;
			var sortLayers:ArrayCollection = new ArrayCollection();
			for each(layer in tempLayers)
			{
				if((!(layer  is ImageLayer)) && (!("layerType" in layer) || !("layerIndex") in layer))
				{
					moveLayer(layer.id,layers.length-1);
				}else{
					sortLayers.addItem(layer);
				}
			}
			
			ArrayCollectionUtils.FieldSort(sortLayers,fields,descendings,isnums);
			
			for (var layerIndex:int = 0 ; layerIndex < sortLayers.length ; layerIndex++)
			{
				var sortLayer:Layer = sortLayers.getItemAt(layerIndex) as Layer;
				for each (layer in layers)
				{
					if(sortLayer == layer)
					{
						moveLayer(layer.id,layerIndex);
						break;
					}
				}
			}
		}
		
	}
}