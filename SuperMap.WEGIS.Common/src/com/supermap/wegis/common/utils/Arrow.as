package   com.supermap.wegis.common.utils
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.geometry.GeoRegion;
	
	public class Arrow extends GeoRegion
	{
		public function Arrow()
		{
			super();
		}
		//是否包含箭尾
		private var _tail:Boolean = false;
		//输入绘制箭头的原始点
		private var _inputPoints:Array;
		//箭标的方向
		private var _degree:Number;
		//箭标的长度
		private var _distance:Number;
		//燕尾宽度createCubicPoint
		private var _width:Number;
		
		public function get inputPoints():Array
		{
			return _inputPoints;
		}
		/**绘制箭标的原始点，更新则重绘图形*/
		public function set inputPoints(value:Array):void
		{
			if(value && _inputPoints != value){
				//将center、degree、distance置空
				center = null;
				degree = NaN;
				distance = NaN;
				_inputPoints = [];
				_inputPoints = _inputPoints.concat(value);
				drawArrowByPoints(_inputPoints);
			}
		}
		//通过中心点，方向，长度绘制箭标
		private function drawArrowByDirection():void{
			if(isNaN(degree) || isNaN(distance) || center == null){
				return;
			}
			var d:Number = Math.PI * degree/180;			
			var firstPtX:Number = center.x - distance * Math.sin(d) / 2;
			var firstPtY:Number = center.y - distance * Math.cos(d) / 2;
			var firstPt:Point2D = new Point2D(firstPtX,firstPtY);
			
			var midPt:Point2D = center;
			
			var lastPtX:Number = center.x + distance * Math.sin(d) / 2;
			var lastPtY:Number = center.y + distance * Math.cos(d) / 2;
			var lastPt:Point2D = new Point2D(lastPtX,lastPtY);
			
			this.drawArrowByPoints([firstPt,midPt,lastPt]);
		}
		//通过输入点绘制箭标
		private function drawArrowByPoints(inputPoints:Array):void{
			//清除已有绘制
			if(this.parts && this.parts.length > 0){
				this.removePart(0);
			}
			//绘制箭标
			var axisPoints:Array = this.getAxisPoints(inputPoints);
			var ring:Array = this.createArrowPoints(axisPoints);
			removeAllPart();
			if(ring){
				this.addPart(ring);
			}
		}
		//根据输入点生成箭头中轴线坐标数组
		private function getAxisPoints(inputPoints:Array):Array{
			//首先定义中轴曲线的点坐标
			var axisPoints:Array=new Array();
			//数组长度
			var array_length:Number = inputPoints.length;
			if(array_length == 2)//如果是两个点，直接是直线
			{
				axisPoints = inputPoints;
			}
			else if(array_length % 2 != 0)
			{//输入奇数个点
				axisPoints = BezierUtil.createQuadraticPoints(inputPoints);
			}else//偶数点数时,前面那些点还是用三个点来确定，后面四个点用三次贝塞尔曲线来搞定。
			{
				axisPoints = BezierUtil.createCubicPoints(inputPoints);
			}			
			return axisPoints;
		}
		
		/**移除所有节点*/
		private function removeAllPart():void
		{
			for (var i:int = 0 ; i < partCount;i++ )
			{
				removePart(i);
			}
		}
		
		//创建箭头标绘多边形的边线点
		private function createArrowPoints(axisPoints:Array):Array{
			//定义上边曲线的点坐标数组(当确定军标多边形的时候我是从这个数组开始的)
			var topcurepoints:Array=new Array();
			//定义下边曲线的点坐标数组
			var bottomcurepoints:Array=new Array();
			//定义左上的直线
			var left_top_points:Array=new Array();
			//定义左下的直线
			var left_bottom_points:Array=new Array();
			//定义右上角边的数组
			var right_top_points:Array=new Array();
			var pos_x:Number;
			var pos_y:Number;
			var pre_pos_x:Number;
			var pre_pos_y:Number;
			var cos_number:Number;
			var sin_number:Number;
			//定义中轴线离上下两边的距离
			var dis:Number = 0;
			if(width){
				dis = width;
			}else{//未设置箭标宽度则根据中轴线的最大距离进行计算
				for(var i:Number = 1;i<axisPoints.length;i++){
					var tempD:Number = Math.sqrt((Math.pow(axisPoints[i].x - axisPoints[i-1].x ,2) + Math.pow(axisPoints[i].y - axisPoints[i-1].y ,2)));
					dis = tempD > dis ? tempD:dis;
				}
			}
			//var dis:Number = this.extent.width > this.extent.height ? this.extent.width:this.extent.height;
			//大的框架肯定是从0--1
			var c_length:Number=axisPoints.length;
			for (var u:Number = 1; u < axisPoints.length; u++)
			{
				var m_point:Point2D = axisPoints[u];
				pos_x=m_point.x;
				pos_y=m_point.y;
				//先求上一点的坐标
				var pre_point:Point2D = axisPoints[u - 1];
				//进行计算取的上下边的点
				pre_pos_x=pre_point.x;
				pre_pos_y=pre_point.y;
				var slope:Number=(pos_y - pre_pos_y) / (pos_x - pre_pos_x);
				//上边点确定
				var bb:Number = dis * (1 - u / c_length * 0.9);
				cos_number=Math.cos(Math.atan(slope) - Math.PI / 2);
				sin_number=Math.sin(Math.atan(slope) - Math.PI / 2);
				var top_pos_x:Number=0.0;
				var top_pos_y:Number=0.0;
				//下面分四种情况画线。
				if (pre_pos_x <= pos_x && pre_pos_y <= pos_y)
				{
					top_pos_x=pre_pos_x - ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					top_pos_y=pre_pos_y + ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x <= pos_x && pre_pos_y > pos_y)
				{
					top_pos_x=pre_pos_x + ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					top_pos_y=pre_pos_y + ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x >= pos_x && pre_pos_y >= pos_y)
				{
					top_pos_x=pre_pos_x + ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					top_pos_y=pre_pos_y - ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x >= pos_x && pre_pos_y <= pos_y)
				{
					top_pos_x=pre_pos_x - ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					top_pos_y=pre_pos_y - ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				var top_point:Point2D=new Point2D(top_pos_x, top_pos_y);
				topcurepoints.push(top_point);
				//下面来确定下边的曲线
				var bottom_pos_x:Number;
				var bottom_pos_y:Number;
				if (pre_pos_x <= pos_x && pre_pos_y <= pos_y)
				{
					bottom_pos_x=pre_pos_x + ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					bottom_pos_y=pre_pos_y - ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x <= pos_x && pre_pos_y > pos_y)
				{
					bottom_pos_x=pre_pos_x - ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					bottom_pos_y=pre_pos_y - ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x >= pos_x && pre_pos_y >= pos_y)
				{
					bottom_pos_x=pre_pos_x - ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					bottom_pos_y=pre_pos_y + ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				else if (pre_pos_x >= pos_x && pre_pos_y <= pos_y)
				{
					bottom_pos_x=pre_pos_x + ((bb * cos_number) < 0 ? (-bb * cos_number) : (bb * cos_number));
					bottom_pos_y=pre_pos_y + ((bb * sin_number) < 0 ? (-bb * sin_number) : (bb * sin_number));
				}
				var bottom_point:Point2D=new Point2D(bottom_pos_x, bottom_pos_y);
				bottomcurepoints.push(bottom_point);
			}
			//下面是添加军标箭头的程序,因为现在已经得到上下边界的曲线了.
			var end_curvepoint:Point2D = axisPoints[axisPoints.length - 1];
			var end_top_point:Point2D = topcurepoints[topcurepoints.length - 1];
			var end_top_point2:Point2D = topcurepoints[topcurepoints.length - 2];
			//求箭头上方的点
			var x2:Number = end_curvepoint.x;
			var y2:Number = end_curvepoint.y;
			pos_x = end_top_point.x;
			pos_y = end_top_point.y;
			pre_pos_x = end_top_point2.x;
			pre_pos_y = end_top_point2.y;
			var end_slope:Number =(pre_pos_y - pos_y) / (pre_pos_x - pos_x);
			var b:Number = dis / 3;
			var end_point_x:Number;
			var end_point_y:Number;
			cos_number = Math.cos(Math.atan(end_slope)- Math.PI / 2);
			sin_number = Math.sin(Math.atan(end_slope)- Math.PI / 2);
			//下面分四种情况画线。
			if (pre_pos_x <= pos_x && pre_pos_y <= pos_y)
			{
				end_point_x=pre_pos_x - ((b * cos_number) < 0 ? (-b * cos_number) : (b * cos_number));
				end_point_y=pre_pos_y + ((b * sin_number) < 0 ? (-b * sin_number) : (b * sin_number));
			}
			else if (pre_pos_x <= pos_x && pre_pos_y > pos_y)
			{
				end_point_x=pre_pos_x + ((b * cos_number) < 0 ? (-b * cos_number) : (b * cos_number));
				end_point_y=pre_pos_y + ((b * sin_number) < 0 ? (-b * sin_number) : (b * sin_number));
			}
			else if (pre_pos_x >= pos_x && pre_pos_y >= pos_y)
			{
				end_point_x=pre_pos_x + ((b * cos_number) < 0 ? (-b * cos_number) : (b * cos_number));
				end_point_y=pre_pos_y - ((b * sin_number) < 0 ? (-b * sin_number) : (b * sin_number));
			}
			else if (pre_pos_x >= pos_x && pre_pos_y <= pos_y)
			{
				end_point_x=pre_pos_x - ((b * cos_number) < 0 ? (-b * cos_number) : (b * cos_number));
				end_point_y=pre_pos_y - ((b * sin_number) < 0 ? (-b * sin_number) : (b * sin_number));
			}
			//创建第三个点，然后创建三角形
			//得到右上方的点
			var end_right_point:Point2D=new Point2D(end_point_x, end_point_y);
			topcurepoints.push(end_right_point);
			//最右边，箭头顶点的坐标是
			topcurepoints.push(end_curvepoint);
			//下边线
			var end_bottom_point:Point2D=bottomcurepoints[bottomcurepoints.length - 1];
			var end_bottom_point2:Point2D=bottomcurepoints[bottomcurepoints.length - 2];
			//求箭头下方向的点
			var bx1:Number=end_bottom_point.x;
			var by1:Number=end_bottom_point.y;
			var bx0:Number=end_bottom_point2.x;
			var by0:Number=end_bottom_point2.y;
			var bend_slope:Number=(by1 - by0) / (bx1 - bx0);
			var bend_point_x:Number;
			var bend_point_y:Number;
			var bend_cos_number:Number=Math.cos(Math.atan(bend_slope)- Math.PI / 2);
			var bend_sin_number:Number=Math.sin(Math.atan(bend_slope)- Math.PI / 2);
			if (bx0 <= bx1 && by0 <= by1)
			{
				bend_point_x=bx0 + ((b * bend_cos_number) < 0 ? (-b * bend_cos_number) : (b * bend_cos_number));
				bend_point_y=by0 - ((b * bend_sin_number) < 0 ? (-b * bend_sin_number) : (b * bend_sin_number));
			}
			else if (bx0 <= bx1 && by0 > by1)
			{
				bend_point_x=bx0 - ((b * bend_cos_number) < 0 ? (-b * bend_cos_number) : (b * bend_cos_number));
				bend_point_y=by0 - ((b * bend_sin_number) < 0 ? (-b * bend_sin_number) : (b * bend_sin_number));
			}
			else if (bx0 >= bx1 && by0 >= by1)
			{
				bend_point_x=bx0 - ((b * bend_cos_number) < 0 ? (-b * bend_cos_number) : (b * bend_cos_number));
				bend_point_y=by0 + ((b * bend_sin_number) < 0 ? (-b * bend_sin_number) : (b * bend_sin_number));
			}
			else if (bx0 >= bx1 && by0 <= by1)
			{
				bend_point_x=bx0 + ((b * bend_cos_number) < 0 ? (-b * bend_cos_number) : (b * bend_cos_number));
				bend_point_y=by0 + ((b * bend_sin_number) < 0 ? (-b * bend_sin_number) : (b * bend_sin_number));
			}
			//得到右下方的点
			var bend_right_point:Point2D=new Point2D(bend_point_x, bend_point_y);
			topcurepoints.push(bend_right_point);
			for (var k:Number=bottomcurepoints.length - 1; k >= 0; k--)
			{
				//  这个是下半部分
				topcurepoints.push(bottomcurepoints[k]);
			}
			//添加尾部,至此完成对军标多边行的算法
			if(tail == true){
				topcurepoints.push(axisPoints[1]);
				topcurepoints.push(topcurepoints[0]);
			}
			return topcurepoints;
		}
		
		public function get tail():Boolean
		{
			return _tail;
		}
		
		public function set tail(value:Boolean):void
		{
			if( _tail != value){
				_tail = value;
				if(inputPoints == null){
					this.drawArrowByDirection();
				}else{
					this.drawArrowByPoints(inputPoints);
				}
			}
		}
		
		public function get degree():Number
		{
			return _degree;
		}
		
		public function set degree(value:Number):void
		{
			if(!isNaN(value) && _degree != value){
				_inputPoints = null;
				_degree = value;
				this.drawArrowByDirection();
			}
		}
		
		public function get distance():Number
		{
			return _distance;
		}
		
		public function set distance(value:Number):void
		{
			if(!isNaN(value) && _distance != value){
				_inputPoints = null;
				_distance = value;
				this.drawArrowByDirection();
			}
		}
		
		public override function get center():Point2D
		{
			return _center;
		}
		
		public  function set center(value:Point2D):void
		{
			if(value != null && _center != value){
				_inputPoints = null;
				_center = value;
				this.drawArrowByDirection();
			}
		}		
		
		public function get width():Number
		{
			return _width;
		}
		
		public function set width(value:Number):void
		{
			if(!isNaN(value) && _width != value){
				_width = value;
				if(inputPoints == null){
					this.drawArrowByDirection();
				}else{
					this.drawArrowByPoints(inputPoints);
				}
			}
		}

		
	}
}