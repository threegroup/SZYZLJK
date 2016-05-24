package chartitemrender 
{
	import flash.display.Graphics;
	import flash.geom.Rectangle;
	
	import mx.charts.chartClasses.LegendData;
	import mx.charts.series.LineSeries;
	import mx.charts.series.items.LineSeriesItem;
	import mx.controls.Label;
	import mx.core.IDataRenderer;
	import mx.core.UIComponent;
	import mx.graphics.SolidColorStroke;
	
	public class LineChartDataRender extends UIComponent implements IDataRenderer
	{
		private var _label:Label;
		private var _yField:String;
		private var _color:Number = 0xff0000;
		private var _isShowLabel:Boolean = false;
		
		public function get isShowLabel():Boolean
		{
			return _isShowLabel;
		}
		
		public function set isShowLabel(value:Boolean):void
		{
			_isShowLabel = value;
		}
		
		private var _chartItem:LineSeriesItem;
		
		public function LineChartDataRender():void
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
			if (value is LineSeriesItem)
			{
				_chartItem=LineSeriesItem(value);
				if(_chartItem.yValue != null  && isShowLabel)
				{
					_label.text=_chartItem.yValue.toString();
				}
				_color=SolidColorStroke(LineSeries(_chartItem.element).getStyle("lineStroke")).color;
				_label.setStyle("color", _color);
				//_label.setStyle("color", "#FF0000");
				_label.setStyle("fontSize",16);
			}
			else if (value is LegendData)
			{
				_color=SolidColorStroke(LineSeries(LegendData(value).element).getStyle("lineStroke")).color;
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
			g.drawCircle(width/2, height/2, width/2);
			g.beginFill(0xffffff);
			g.drawCircle(width/2, height/2, width/2-2);
			g.endFill();
			
			_label.setActualSize(_label.getExplicitOrMeasuredWidth(), _label.getExplicitOrMeasuredHeight());
			_label.move(unscaledWidth, unscaledHeight);
		}
	}
}
