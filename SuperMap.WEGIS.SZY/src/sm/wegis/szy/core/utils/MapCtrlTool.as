package sm.wegis.szy.core.utils
{
	import com.supermap.web.actions.Pan;
	import com.supermap.web.components.Compass;
	import com.supermap.web.components.ZoomSlider;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.Layer;
	import com.supermap.wegis.common.action.MeasureAreaAction;
	import com.supermap.wegis.common.action.MeasureDistanceAction;
	import com.supermap.wegis.common.skins.compass.CompassSkin;
	import com.supermap.wegis.common.skins.zoomSlider.ZoomSliderCustomSkin;
	import com.supermap.wegis.common.utils.CursorUtil;
	
	import flash.events.MouseEvent;
	
	import sm.wegis.szy.core.baseclass.ToolBase;
	
	import spark.components.Group;
	import spark.components.VGroup;
	import spark.effects.Fade;
	
	public class MapCtrlTool extends ToolBase
	{
		public function MapCtrlTool()
		{
			super();
		}
		
		/*****结束地图测量功能***********************************/
		public function closeMeasure():void{
			var mdID:String = MeasureDistanceAction.MEASURE_DISTANCE_LAYER_NAME;
			var maID:String = MeasureAreaAction.MEASURE_AREA_LAYER_NAME;
			var mdLayer:Layer = map.getLayer(mdID);
			var maLayer:Layer = map.getLayer(maID);
			if(mdLayer != null)
				map.removeLayer(mdLayer);
			if(maLayer != null)
				map.removeLayer(maLayer);
			
			CursorUtil.detachCursor(map);
			map.action = new Pan(map);
		}
		
		//****地图罗盘***************************************/
		private var compass:Compass;
		private var zoomSlider:ZoomSlider;
		private var vGroup:VGroup;
		
		private var isMove:Boolean = false;
		private var isOut:Boolean = false;
		
		private var isAddOn:Boolean = true;
		
		/**初始化地图罗盘控件等*/
		public function initMapCompass(container:Group=null):void
		{
			if(map != null)
			{
				// TODO Auto-generated method stub
				if(isAddOn)
				{
					//初始化地图控件容器
					vGroup = new VGroup();
					vGroup.top = 10;
					vGroup.left = 0;
					vGroup.gap = 0;
					vGroup.depth = container.numElements + 100;
					vGroup.verticalAlign = "top";
					vGroup.horizontalAlign = "center";
					vGroup.addEventListener(MouseEvent.MOUSE_MOVE, moveHandler);
					modelLocator.mapCtrl.addEventListener(MouseEvent.MOUSE_MOVE, outHandler);
					
					//初始化罗盘控件
					compass = new Compass();
					compass.map = modelLocator.mapCtrl;
					compass.alpha = 1;
					compass.buttonMode = true;
					compass.setStyle("skinClass", CompassSkin);
					vGroup.addElement(compass);
					
					//初始化导航控件
					zoomSlider = new ZoomSlider();
					zoomSlider.map = modelLocator.mapCtrl;
					zoomSlider.sliderHeightParam = 10;
					zoomSlider.alpha = 1;
					zoomSlider.buttonMode = true;
					zoomSlider.setStyle("skinClass", ZoomSliderCustomSkin);
					vGroup.addElement(zoomSlider);
					
					container.addElementAt(vGroup,0);
				}
			}
		}
		
		private function moveHandler(event:MouseEvent):void
		{
			if(isMove)
			{
				isMove = false;
				isOut = true;
				var fadeIn:Fade = new Fade();
				fadeIn.duration = 1000;
				fadeIn.alphaFrom = 0.1;
				fadeIn.alphaTo = 0.8;
				fadeIn.repeatCount = 1;
				fadeIn.play([compass, zoomSlider]);
			}
		}
		
		private function outHandler(event:MouseEvent):void
		{
			if(isOut)
			{
				isOut = false;
				isMove = true;
				var fadeOut:Fade = new Fade();
				fadeOut.duration = 1500;
				fadeOut.alphaFrom = 0.8;
				fadeOut.alphaTo = 0.1;
				fadeOut.repeatCount = 1;
				fadeOut.play([compass, zoomSlider]);
			}
		}
		
		public static function getLegalViewBounds(bounds:Rectangle2D):Rectangle2D
		{
			var left:Number = bounds.left;
			if(left < -180)
			{
				left = -180;
			}
			var right:Number = bounds.right;
			if(right > 180)
			{
				right = 180;
			}
			var top:Number = bounds.top;
			if(top > 90)
			{
				top = 90;
			}
			var bottom:Number = bounds.bottom;
			if(bottom <-90)
			{
				bottom = -90;
			}
			return new Rectangle2D(left,bottom,right,top);
		}
		
		public static function boundsToRectangle2D(bounds:String):Rectangle2D
		{
			var bound:Array = bounds.split(",");
			if(bound.length == 4)
			{
				return new Rectangle2D(bound[0],bound[3],bound[2],bound[1]);
			}
			return  null;	
		}
	}
}