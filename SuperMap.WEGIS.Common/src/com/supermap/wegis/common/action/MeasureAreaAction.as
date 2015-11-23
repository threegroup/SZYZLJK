package  com.supermap.wegis.common.action
{
	import com.supermap.web.actions.DrawPolygon;
	import com.supermap.web.actions.Pan;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.geometry.GeoRegion;
	import com.supermap.web.core.styles.PictureMarkerStyle;
	import com.supermap.web.core.styles.PredefinedFillStyle;
	import com.supermap.web.core.styles.Style;
	import com.supermap.web.core.styles.TextStyle;
	import com.supermap.web.events.DrawEvent;
	import com.supermap.web.iServerJava6R.measureServices.MeasureParameters;
	import com.supermap.web.iServerJava6R.measureServices.MeasureResult;
	import com.supermap.web.iServerJava6R.measureServices.MeasureService;
	import com.supermap.web.mapping.Map;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	import com.supermap.wegis.common.resources.cursor.SimpleDrawCursor;
	import com.supermap.wegis.common.utils.CursorIcon;
	import com.supermap.wegis.common.utils.CursorUtil;
	import com.supermap.wegis.common.utils.StringHandleUtils;
	
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncResponder;
	
	public class MeasureAreaAction extends DrawPolygon
	{
		public static var cursor:DisplayObject = new SimpleDrawCursor();
		//删除图片
		[Embed(source='../images/closeline.png')]
		private var closeImg:Class;
		private var areaPic:String = "com/supermap/wegis/common/images/cursors/i.png";
		private var area:Number;
		private var _location:Point2D;
		private var isMouseActive:Boolean = true;
		private var geoRegion:GeoRegion;
		private var measureLayer:FeaturesLayerEx;
		private var measureUrl:String;
		private var firstClick:Boolean = true;
		private var lineId:int = 0;
		public 	static const MEASURE_AREA_LAYER_NAME:String = "measureAreaLayerName";
		public function MeasureAreaAction(map:Map,url:String) 
		{
			super(map);
			if(this.map.getLayer(MEASURE_AREA_LAYER_NAME) == null)
			{
				this.measureLayer = new FeaturesLayerEx();
				this.measureLayer.id = MEASURE_AREA_LAYER_NAME;
				this.measureLayer.isFeatureMouseOver = false;
				this.measureLayer.style = new PredefinedFillStyle();
				map.addLayer(this.measureLayer);
			}
			measureLayer = this.map.getLayer(MEASURE_AREA_LAYER_NAME) as FeaturesLayerEx;
			this.measureUrl = url;
			this.addEventListener(DrawEvent.DRAW_END,setState);
			this.addEventListener(DrawEvent.DRAW_START,setState);
			
			var cursor:CursorIcon = new CursorIcon(areaPic);
			CursorUtil.attachCursor(map, cursor); 
		}
		private function setState(event:DrawEvent):void
		{
			if(event.type == DrawEvent.DRAW_END)
			{
				this.isMouseActive = false;	
				if(event.feature != null && event.feature.geometry !=null)
				{
					geoRegion = event.feature.geometry as GeoRegion;
					var f:Feature = event.feature;
					f.style = this.style;
					f.name = lineId.toString();
					measureLayer.addFeature(f,false );
					measureDistanceByPoints(f);
				}
			}else
			{
				this.isMouseActive = true;
			}
		}
		override public function set style(value:Style):void
		{
			super.style = value;
		}
		override protected function startDraw(startPoint:Point2D = null):void
		{
			super.startDraw();
			//清除鼠标状态
			CursorUtil.attachCursor(map, cursor);	
			map.addEventListener(MouseEvent.MOUSE_MOVE,moveViewBound);
		}
		override protected function endDraw(endPoint:Point2D = null):void
		{
			super.endDraw();
			CursorUtil.detachCursor(map);
			map.removeEventListener(MouseEvent.MOUSE_MOVE,moveViewBound);
			
		}
		
		/*** 重写双击事件,用于结束测距   **/
		protected override function onMouseDoubleClick(event:MouseEvent):void
		{
			super.onMouseDoubleClick(event);
			event.stopImmediatePropagation();
			firstClick = true;
			this._location = map.screenToMap(new Point(map.mouseX, map.mouseY));
			//初始化状态
			map.action = new Pan(map);
		}
		private function measureDistanceByPoints(feature:Feature):void
		{
			//小于三个点
			var region:GeoRegion = feature.geometry as GeoRegion;
			if (region == null || (region.parts[0] as Array).length <3 )
			{
				//显示起点
				measureLayer.removeFeature(feature);
				return;
			}
			else
			{
				//调用测距方法
				var measureParam:MeasureParameters = new MeasureParameters(region);
				var measureService:MeasureService = new MeasureService(this.measureUrl);
				measureService.processAsync(measureParam, new AsyncResponder(this.onMeasureAreaComplete, this.MeasureError, "area"));
			}
			
		}
		private function moveViewBound(event:MouseEvent):void
		{
			//左移地图 
			var p1:Point = map.localToGlobal(new Point(map.x,map.y));
			var p2:Point = map.localToGlobal(new Point(map.width,map.height));
			var spt:Number =0.1;
			if( event.stageX -  p1.x < 10)
			{
				map.pan(-spt, 0);
				
			}
			if( p2.x  - event.stageX< 5)
			{
				map.pan(spt,0);
			}
			if(event.stageY -  p1.y< 10)
			{
				map.pan(0, spt);
			}
			if( p2.y -event.stageY < 10)
			{
				map.pan(0,-spt);
			}
		}
		//量算出错
		private function MeasureError(object:Object, mark:Object = null):void
		{
			Alert.okLabel = "关闭";
			Alert.show("量算功能出错，请检查量算服务配置是否正确？","提示");
		}
		//接受并处理返回数据
		private function onMeasureAreaComplete(result:MeasureResult, mark:Object = null):void
		{
			if (result == null)
			{
				Alert.show("没有记录");
				return;
			}
			
			try
			{
				this.area=result.area ;
			}
			catch (ex:Error)
			{
				this.area=0;
			}
			
			//返回测距结果
			this.getArea(this.area, _location);
			
		}
		
		private function getArea(area:Number, location:Point2D):void{
			var value:String=area/1000000>1?Number(area/1000000).toFixed(3)+"平方公里":Math.floor(area)+"平方米";
			var ts:TextStyle = new TextStyle(value,0x000000,true,0xFF000000,true,0xffffff,0,"middle",0,20)
			var icon:Feature=new Feature(new GeoPoint(location.x,location.y));
			icon.style = ts;
			icon.name = lineId.toString();
			measureLayer.addFeature(icon);
			var length:Number = StringHandleUtils.calcuteLength(value);
			var offx:Number =  length *12/2 + 12;//FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration("global").getStyle("fontSize");
			var picStyle:PictureMarkerStyle = new PictureMarkerStyle(closeImg,20,20,offx ,20);
			//删除图标
			var closeFt:Feature = new Feature(new GeoPoint(location.x,location.y));
			closeFt.style = picStyle;
			closeFt.name = lineId.toString();
			closeFt.buttonMode = true;
			closeFt.useHandCursor = true;
			closeFt.addEventListener(MouseEvent.MOUSE_DOWN,removeCurrentLine);
			measureLayer.addFeature(closeFt);
			lineId ++;
		}
		
		//移除选择的线
		private function removeCurrentLine(event:MouseEvent):void
		{
			event.stopImmediatePropagation();
			var ft:Feature = event.currentTarget as Feature;
			var array:Array = [];
			for each(var f:Feature in measureLayer.features)
			{
				if(f.name == ft.name)
				{
					array.push(f);
				}
			}
			for(var i:int = 0 ;i<array.length ;i++)
			{
				measureLayer.removeFeature(array[i]);
			}
		}
		
		
		protected override function onMouseDown(event:MouseEvent):void
		{
			if(firstClick)
			{
				geoRegion = null;
				firstClick = false;
			}
			
		}
		override protected function switchActionHandle():void
		{
			super.switchActionHandle();
			CursorUtil.detachCursor(map);
			map.removeEventListener(MouseEvent.MOUSE_MOVE,moveViewBound);
		}
	}
}