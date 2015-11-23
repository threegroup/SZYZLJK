package    com.supermap.wegis.common.action
{
	import com.supermap.web.actions.DrawLine;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.styles.GradientFillStyle;
	import com.supermap.web.core.styles.PredefinedFillStyle;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.web.events.DrawEvent;
	import com.supermap.web.mapping.Map;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	import com.supermap.wegis.common.resources.cursor.SimpleDrawCursor;
	import com.supermap.wegis.common.utils.Arrow;
	
	import flash.display.DisplayObject;
	import flash.display.GradientType;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class DrawSpuerArrowAction extends DrawLine
	{
		
		private var mouseDownPoint:Point2D=null;
		private var downPoints:Array = [];//存储单击的点
		private var superArrowLayer:FeaturesLayerEx;
		/**箭头图层名称*/
		public static const  SPUER_ARROW_LAYER_NAME:String = "superArrowLayerName";
		private var firstClick:Boolean = true;
		private var geoRegion:Arrow = null;
		private var regionFeature:Feature;
		
		public function DrawSpuerArrowAction(map:Map)
		{
			super(map);
			if(this.map.getLayer(SPUER_ARROW_LAYER_NAME) == null)
			{
				this.superArrowLayer = new FeaturesLayerEx();
				this.superArrowLayer.isPanEnableOnFeature = true;
				this.superArrowLayer.id = SPUER_ARROW_LAYER_NAME;
				this.superArrowLayer.style = new PredefinedLineStyle("solid",0xFE8035,1,1);
				map.addLayer(this.superArrowLayer);
			}
			this.style = new PredefinedLineStyle(PredefinedLineStyle.SYMBOL_NULL);
			this.superArrowLayer = this.map.getLayer(SPUER_ARROW_LAYER_NAME) as FeaturesLayerEx;
			this.addEventListener(DrawEvent.DRAW_END,setState);
			this.addEventListener(DrawEvent.DRAW_START,setState);
		}
		
		private function setState(event:DrawEvent):void
		{
			if(event.type == DrawEvent.DRAW_END)
			{
				//regionFeature = null;
			//	geoRegion = null;
				superArrowLayer.clear();
				var regionLineStyle:PredefinedLineStyle = new PredefinedLineStyle(PredefinedLineStyle.SYMBOL_NULL, 0xE56184,0.3,1);
				var fillStyle:PredefinedFillStyle = new PredefinedFillStyle(PredefinedFillStyle.SYMBOL_NULL,0xE56184, 0.3, regionLineStyle);
				regionFeature.style = fillStyle;
//				map.removeLayer(superArrowLayer);
			//	superArrowLayer = null;
			//	downPoints = null;
			//	mouseDownPoint = null;
			}else
			{
				downPoints = [];
			}
		}
		
		override protected function startDraw(startPoint:Point2D = null):void
		{
			if(firstClick)
			{
				super.startDraw();
			}
			
		}
		override protected function endDraw(endPoint:Point2D = null):void
		{
			super.endDraw();
		}
		
		/*** 重写onMouseDown事件 **/
		protected override function onMouseDown(event:MouseEvent):void
		{
			if(firstClick)
			{
				startDraw();
				firstClick = false;
			}
			//获得鼠标的位置	
			var center:Point2D=map.screenToMap(new Point(map.mouseX, map.mouseY));
			//将MouseDown发生的位置保存起来
			mouseDownPoint=center;
			downPoints.push(center);
			//如果绘制的点大于等于三个，绘制结束，值取三个点
			if(downPoints.length >= 3)
			{
				downPoints = downPoints.slice(0,2);
				drawArrow(downPoints);
				event.stopImmediatePropagation();
				var drawEvent:DrawEvent = new DrawEvent(DrawEvent.DRAW_END,regionFeature);
				dispatchEvent(drawEvent);
				this.firstClick = true;
			}
			super.onMouseClick(event);
		}
		
		private function drawArrow(pt:Array):void
		{
			//绘制箭头
			if( pt.length > 2 ) {
				if(geoRegion == null) {
					geoRegion = new Arrow();
					var alphas:Array = [0.2,1];
					var ratios:Array = [0,255];
					var regionLineStyle:PredefinedLineStyle = new PredefinedLineStyle("solid", 0xE56184,0.3,1);
//					var fillStyle:GradientFillStyle = new GradientFillStyle(GradientType.LINEAR,[0x18ab2d, 0x9f11b9], alphas,ratios, regionLineStyle);
					var fillStyle:PredefinedFillStyle = new PredefinedFillStyle(PredefinedFillStyle.SYMBOL_SOLID,0xE56184, 0.3, regionLineStyle);
					 regionFeature = new Feature(geoRegion, fillStyle);
					superArrowLayer.addFeature(regionFeature);
				} 
				geoRegion.inputPoints =pt;
			}
		}
		
		/*** 鼠标弹起 **/
		protected override function onMouseMove(event:MouseEvent):void
		{
			super.onMouseMove(event);
			var center:Point2D=map.screenToMap(new Point(map.mouseX, map.mouseY));
			drawArrow(downPoints.concat(center));
		}
	
		override protected function switchActionHandle():void
		{
			super.switchActionHandle();
		}
	}
}