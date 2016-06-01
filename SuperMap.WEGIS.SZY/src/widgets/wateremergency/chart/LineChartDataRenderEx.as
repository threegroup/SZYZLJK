package widgets.wateremergency.chart
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
	
	import spark.primitives.Graphic;
	
	public class LineChartDataRenderEx extends UIComponent implements IDataRenderer
	{
		private var _label:Label;
		private var _yField:String;
		private var _color:Number = 0xff0000;
		
		private var _chartItem:LineSeriesItem;
		
		private var _isShowLabel:Boolean = false;
		
		public function get isShowLabel():Boolean
		{
			return _isShowLabel;
		}
		
		public function set isShowLabel(value:Boolean):void
		{
			_isShowLabel = value;
		}
		
		
		public function LineChartDataRenderEx():void
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
				if(_chartItem.yValue != null && isShowLabel)
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
			
			//正方形框
			g.drawRect(0,0,width, height);
			g.beginFill(0xffffff);
			g.drawRect(1,1,width-2, height-2);
			g.endFill();
			
			//椭圆形框
			/*g.drawEllipse(-2,0,width*1.5, height);
			g.beginFill(0xffffff);
			g.drawEllipse(-1,1,width*1.5-2, height-2);
			g.endFill();*/
			
			//圆形框
			/*g.drawCircle(width/2, height/2, width/2);
			g.beginFill(0xffffff);
			g.drawCircle(width/2, height/2, width/2-2);
			g.endFill();*/
			
			//三角形框
			//三角形外框
			/*var outers: Vector.<Number> = new Vector.<Number>();
			outers.push(width/2, 0);
			outers.push(width, height);
			outers.push(0, height);
			g.drawTriangles(outers);
			g.beginFill(0xffffff);
			//三角形内框
			var inners: Vector.<Number> = new Vector.<Number>();
			inners.push(width/2, 2);
			inners.push(width-2, height-2);
			inners.push(2, height-2);
			g.drawTriangles(inners);
			g.endFill();*/
			
			//--------------------以下代码为菱形创建--------------------------------------------------------------------------
			//菱形框(标准菱形，有点小,采用比例放大处理)
			/*var scaleFactor:Number = 1.3;
			var w:Number = width*scaleFactor;
			var h:Number = height*scaleFactor;
			//两个三角形顶点分布情况
			var indices:Vector.<int> = new Vector.<int>();
			indices.push(0, 1, 2);
			indices.push(2, 1, 3);
			//三角形外框
			var outers: Vector.<Number> = new Vector.<Number>();
			outers.push(w/2, 0);
			outers.push(w-1, h/2);
			outers.push(1, h/2);
			outers.push(w/2, h);
			g.drawTriangles(outers,indices);
			//三角形内框
			g.beginFill(0xffffff);
			g.lineStyle(1,0xffffff);//完全填充为白色
			var inners: Vector.<Number> = new Vector.<Number>();
			inners.push(w/2, 2);
			inners.push(w-3, h/2);
			inners.push(3, h/2);
			inners.push(w/2, h-2);
			g.drawTriangles(inners,indices);
			g.endFill();*/
			
			_label.setActualSize(_label.getExplicitOrMeasuredWidth(), _label.getExplicitOrMeasuredHeight());
			_label.move(unscaledWidth, unscaledHeight);
		}
	}
}
