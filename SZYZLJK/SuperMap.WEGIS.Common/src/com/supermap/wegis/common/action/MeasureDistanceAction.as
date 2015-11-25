package  com.supermap.wegis.common.action
{
	import com.supermap.web.actions.DrawLine;
	import com.supermap.web.actions.Pan;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.geometry.GeoLine;
	import com.supermap.web.core.geometry.GeoPoint;
	import com.supermap.web.core.styles.PictureMarkerStyle;
	import com.supermap.web.core.styles.PredefinedLineStyle;
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
	
	public class MeasureDistanceAction extends DrawLine
	{
		
		[Embed(source='../images/measure.png')]
		static private var measureImg:Class;
		[Embed(source='../images/circle.png')]
		static private var circleImg:Class;
		[Embed(source='../images/closeline.png')]
		private var closeImg:Class;
		public static var cursor:DisplayObject=new SimpleDrawCursor();
		private var areaPic:String = "com/supermap/wegis/common/images/cursors/i.png";
		//距离测量的时候，产生的结果图标的id
		private var numEnd:Number=0;
		private var mouseDownPoint:Point2D=null;
		private var _location:Point2D;
		private var _distance:Number;
		private var measureServiceURL:String;
		private var isMouseActive:Boolean = true;
		private var points:Array =[];
		private var measureLayer:FeaturesLayerEx;
		/**测距图层名称*/
		public static const  MEASURE_DISTANCE_LAYER_NAME:String = "measureDistanceLayerName";
		private var lineID:int = 0;//用于标记每条线，为了清除每条线
		private var firstClick:Boolean = true;
		//表示是否是测量的最后一个点
		private var _isEnd:Boolean=false;
		public function MeasureDistanceAction(map:Map,url:String)
		{
			super(map);
			this.isMouseActive = true;
			if(this.map.getLayer(MEASURE_DISTANCE_LAYER_NAME) == null)
			{
				this.measureLayer = new FeaturesLayerEx();
				this.measureLayer.id = MEASURE_DISTANCE_LAYER_NAME;
				this.measureLayer.style = new PredefinedLineStyle("solid",0xFE8035,1,1);
				map.addLayer(this.measureLayer);
			}
			this.style = new PredefinedLineStyle("solid",0xFE8035);
			this.measureLayer = this.map.getLayer(MEASURE_DISTANCE_LAYER_NAME) as FeaturesLayerEx;
			this.measureServiceURL = url;
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
				var geoLine:GeoLine = new GeoLine();
				if(points !=null && points.length >=2)
				{
					geoLine.addPart(points);
					var ft:Feature = new Feature(geoLine);
					ft.name = lineID.toString();
					measureLayer.addFeature(ft,false);
				}
			}else
			{
				this.isMouseActive = true;
				points = [];
			}
		}
		
		override protected function startDraw(startPoint:Point2D = null):void
		{
			if(firstClick)
			{
				super.startDraw();
				CursorUtil.attachCursor(map, cursor);	
				map.addEventListener(MouseEvent.MOUSE_MOVE,moveViewBound);
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
			this._isEnd=true;
			this.firstClick = true;
			measureDistanceByPoints(points);
			//初始化状态
			map.action = new Pan(map);
			
		}
		/*** 重写onMouseDown事件，以实现测距的时候，单击的时候出现一个实心圆的效果，并实现每次单击都有距离显示   **/
		protected override function onMouseDown(event:MouseEvent):void
		{
			if(firstClick)
			{
				startDraw();
				firstClick = false;
			}
			super.onMouseClick(event);
			//获得鼠标的位置	
			var center:Point2D=map.screenToMap(new Point(map.mouseX, map.mouseY));
			//将MouseDown发生的位置保存起来
			mouseDownPoint=center;
			//构造一个marker（红色的实心圆），实现onMouseDown出现，onMouseUp消失的效果
			var circle:PictureMarkerStyle=new PictureMarkerStyle(circleImg ,10,10);
			var ft:Feature = new Feature(new GeoPoint(center.x,center.y) ,circle);
			ft.style = circle;
			ft.id = "MeasureDistanceAction_Circle";
			this.measureLayer.addFeature(ft);
			//测距方法    		   
			points.push(center);
			measureDistanceByPoints(points);
		}
		/*** 鼠标弹起 **/
		protected override function onMouseUp(event:MouseEvent):void
		{
			var f:Feature = measureLayer.getFeatureByID("MeasureDistanceAction_Circle");
			if(f != null )
			{
				this.measureLayer.removeFeature(f);
			}
		}
		private function measureDistanceByPoints(points:Array):void
		{
			if(points == null)
			{
				return;
			}
			if (points.length == 1)
			{
				//显示起点
				showStart(points[0]);
				return;
			}
			else if (points.length == 0)
			{
				//这个属于出错的情况
				this._isEnd=false;
				return;
			}
			else
			{
				this._location=points[points.length - 1];
				var geoLine:GeoLine = new GeoLine();
				geoLine.addPart(points);
				//调用测距方法
				var measureParam:MeasureParameters = new MeasureParameters(geoLine);
				var measureService:MeasureService = new MeasureService(this.measureServiceURL);
				measureService.processAsync(measureParam, new AsyncResponder(this.onMeasureDistanceComplete, this.MeasureError, "distance"));
			}
			
		}
		//量算出错
		private function MeasureError(object:Object, mark:Object = null):void
		{
			Alert.okLabel = "关闭";
			Alert.show("量算功能出错，请检查量算服务地址配置是否正确？","提示");
		}
		
		//起点的时候调用 
		private function showStart(location:Point2D):void
		{
			//获得所有的lineMarker的数量，确定此lineMaker的id
			var number:Number=0;
			number=measureLayer.numFeatures;
			var ts:TextStyle = new TextStyle("起点",0x000000,true,0x888888,true,0xffffff,0,"middle",0,10);
			var icon:Feature=new Feature(new GeoPoint(mouseDownPoint.x,mouseDownPoint.y));
			icon.style = ts;
			icon.id = "_iconMarker_s" +number; 
			icon.name = lineID.toString();
			measureLayer.addFeature(icon);
		}
		
		//接受并处理返回数据
		private function onMeasureDistanceComplete(result:MeasureResult, mark:Object = null):void
		{
			if (result == null)
			{
				Alert.show("没有记录");
				return;
			}
			try
			{
				this._distance=result.distance ;
			}
			catch (ex:Error)
			{
				this._distance=0;
			}
			//返回测距结果
			this.getDistance(this._distance, _location);
		}
		
		//测距结果展示
		private function getDistance(dist:Number, location:Point2D):void
		{
			var textLocation:String="";
			var value:String=dist / 1000 > 1 ? Number(dist / 1000).toFixed(3) + "公里" : Math.floor(dist) + "米";
			//当为结束点的时候			
			if (_isEnd)
			{
				value="终点：总距离为" + value;
				textLocation="bottom";
				this._isEnd=false;
			}
			numEnd++;
			var ts:TextStyle = new TextStyle(value,0x000000,true,0xff0000,true,0xffffff,0,"middle",0,10);
			var icon:Feature=new Feature(new GeoPoint(mouseDownPoint.x,mouseDownPoint.y));
			icon.style = ts;
			icon.id = "_iconMarker_d" + numEnd; 
			icon.name = lineID.toString();
			icon.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDoubleClick);
			measureLayer.addFeature(icon);
			//判断isMouseActive的状态，如果为true表明不是终点
			if (this.isMouseActive == true)
			{
				return;
			}
			else
			{
				this._isEnd=false;
				var ft:Feature = measureLayer.getFeatureByID("_iconMarker_d" + (numEnd - 1));
				if(ft!=null)
				{
					measureLayer.removeFeature(ft);
				}
				var length:Number = StringHandleUtils.calcuteLength(value);
				var offx:Number =  length *12/2 + 14;
				var picStyle:PictureMarkerStyle = new PictureMarkerStyle(closeImg,19,19,offx,10 );
				var closeFt:Feature = new Feature(new GeoPoint(mouseDownPoint.x,mouseDownPoint.y));
				closeFt.style = picStyle;
				closeFt.name = lineID.toString();
				closeFt.buttonMode = true;
				closeFt.useHandCursor = true;
				closeFt.addEventListener(MouseEvent.MOUSE_DOWN,removeCurrentLine);
				measureLayer.addFeature(closeFt);
				lineID ++;
			}
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
		
		//--- getter/setter
		public function get distance():Number
		{
			return this._distance;
		}
		
		public function set distance(distance:Number):void
		{
			this._distance=distance;
		}
		override protected function switchActionHandle():void
		{
			super.switchActionHandle();
			points=null;
			CursorUtil.detachCursor(map);
			map.removeEventListener(MouseEvent.MOUSE_MOVE,moveViewBound);
		}
	}
}