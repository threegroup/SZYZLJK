package   com.supermap.wegis.common.utils
{ 
	import com.supermap.web.core.Point2D;
	
	public class BezierUtil
	{
		/**
		 * 创建二次贝塞尔曲线点
		 * @inputPoints
		 * @knum k值的数目 k > 1
		 * */
		public static function createQuadraticPoints(inputPoints:Array,knum:Number = 10):Array
		{
			var points:Array = [];
			var deltaK:Number = 1 / knum;
			var inputPoints_length:Number = inputPoints.length;
			var k:Number = 0;
			//二次样条由三点确认，所以步长为二
			for (var i:Number = 0; i < inputPoints_length - 4; i = i + 2)
			{
				for (k = deltaK; k <= 1; k = k + deltaK)
				{				
					var m_point:Point2D= createQuadraticPoint(inputPoints[i],inputPoints[i + 1],inputPoints[i + 2],k);
					points.push(m_point);
				}
			}
			//保证最后三个点用二次贝塞尔曲线来确定
			var p1:Point2D = inputPoints[inputPoints_length - 3];
			var p2:Point2D = inputPoints[inputPoints_length - 2];
			var p3:Point2D = inputPoints[inputPoints_length - 1];
			for (k = deltaK; k < 1; k = k + deltaK)
			{
				m_point = createQuadraticPoint(p1,p2,p3,k);
				//中心轴的添加
				points.push(m_point);
			}
			return points;
		}
		
		/**创建三次贝塞尔曲线点*/
		public static function createCubicPoints(inputPoints:Array,knum:Number = 10):Array
		{
			var points:Array = [];
			var deltaK:Number = 1 / knum;
			var inputPoints_length:Number = inputPoints.length;
			var k:Number = 0;
			for (var i:Number = 0; i < inputPoints_length - 6; i = i + 3)
			{
				for ( k = deltaK;k <= 1; k = k + deltaK)
				{
					var m_point:Point2D = createCubicPoint(inputPoints[i],inputPoints[i + 1],inputPoints[i + 2],inputPoints[i+3],k);
					//中轴线的点数
					points.push(m_point);
				}
			}
			//保证最后四个点用三次贝塞尔曲线来确定
			var p1:Point2D = inputPoints[inputPoints_length - 4];
			var p2:Point2D = inputPoints[inputPoints_length - 3];
			var p3:Point2D = inputPoints[inputPoints_length - 2];
			var p4:Point2D = inputPoints[inputPoints_length - 1];
			for (k = deltaK; k < 1; k = k + deltaK)
			{
				m_point = createCubicPoint(p1,p2,p3,p4,k);
				//中心轴的添加
				points.push(m_point);
			}
			return points;
		}
		/**
		 * 二次贝塞尔曲线点(三点计算)
		 * @p1
		 * @p2
		 * @p3
		 * @k 曲率（0~1）
		 * */
		public static function createQuadraticPoint(p1:Point2D,p2:Point2D,p3:Point2D,k:Number):Point2D
		{
			var x:Number = Math.pow((1 - k), 2) * p1.x + 2 * k * (1 - k) * p2.x + Math.pow(k, 2) * p3.x;
			var y:Number = Math.pow((1 - k), 2) * p1.y + 2 * k * (1 - k) * p2.y + Math.pow(k, 2) * p3.y;
			return new Point2D(x,y);
		}
		/**
		 * 三次贝塞尔曲线点(四点计算)
		 * @p1
		 * @p2
		 * @p3
		 * @p4
		 * @k 曲率（0~1）
		 * */
		public static function createCubicPoint(p1:Point2D,p2:Point2D,p3:Point2D,p4:Point2D,k:Number):Point2D
		{
			var x:Number = p1.x * Math.pow((1 - k), 3) + 3 * p2.x * k * Math.pow((1 - k), 2) + 3 * p3.x * Math.pow(k, 2) * (1 - k) + p4.x * Math.pow(k, 3);
			var y:Number = p1.y * Math.pow((1 - k), 3) + 3 * p2.y * k * Math.pow((1 - k), 2) + 3 * p3.y * Math.pow(k, 2) * (1 - k) + p4.y * Math.pow(k, 3);
			return new Point2D(x,y);
		}
	}
}