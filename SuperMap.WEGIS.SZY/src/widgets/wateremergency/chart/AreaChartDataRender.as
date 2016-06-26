package widgets.wateremergency.chart
{
	import flash.display.Graphics;
	import flash.geom.Rectangle;
	
	import mx.charts.chartClasses.LegendData;
	import mx.charts.series.AreaSeries;
	import mx.charts.series.items.AreaSeriesItem;
	import mx.controls.Label;
	import mx.core.IDataRenderer;
	import mx.core.UIComponent;
	import mx.graphics.SolidColorStroke;
	
	public class AreaChartDataRender extends UIComponent implements IDataRenderer
	{
		private var _label:Label;
		private var _yField:String;
		private var _color:Number = 0xff0000;
		
		private var _chartItem:AreaSeriesItem;
		
		public function AreaChartDataRender():void
		{
			super();
			_label=new Label();
			addChild(_label);
		}
		
		public function get data():Object
		{
			return _chartItem;
		}
		
		public function set data(value:Object):void
		{
			if (_chartItem == value)
				return;
			if (value is AreaSeriesItem)
			{
				_chartItem=AreaSeriesItem(value);
				if(_chartItem.yValue != null)
				{
					_label.text=_chartItem.yValue.toString();
				}
				_color=SolidColorStroke(AreaSeries(_chartItem.element).getStyle("areaStroke")).color;
				_label.setStyle("color", _color);
				//_label.setStyle("color", "#FF0000");
				_label.setStyle("fontSize",16);
			}
			else if (value is LegendData)
			{
				_color=SolidColorStroke(AreaSeries(LegendData(value).element).getStyle("areaStroke")).color;
			}
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var rc:Rectangle=new Rectangle(0, 0, width, height);
			
			var g:Graphics=graphics;
			g.clear();
			g.moveTo(rc.left, rc.top);
			g.beginFill(_color);
			g.drawCircle(5, 5, 5);
			g.beginFill(0xffffff);
			g.drawCircle(5, 5, 3);
			g.endFill();
			
			_label.setActualSize(_label.getExplicitOrMeasuredWidth(), _label.getExplicitOrMeasuredHeight());
			_label.move(unscaledWidth, unscaledHeight);
		}
	}
}
