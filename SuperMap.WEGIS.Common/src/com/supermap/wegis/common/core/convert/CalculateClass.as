package com.supermap.wegis.common.core.convert
{
	import com.supermap.web.core.Point2D;

	public class CalculateClass
	{
		/**WGS84比例因子*/
		private const ChangeFactor:Number = 2.5;
		
		/**计算比例因子*/
		public function GetFactor(ulpoint:Point2D, brpoint:Point2D, mapscale:Number):Number
		{
			var dy:Number = Math.abs(ulpoint.y - brpoint.y);
			var factor:Number = mapscale / dy;
			return factor;
		}
		
		/**将Map坐标范围通过计算获取高度，如果为点对象，返回2000，(可能会有问题)*/
		public function GetHeight(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
			var Difference:Number = Math.abs(y2 - y1);
			var yDistance:Number = (Difference * 111 * 1000) / 2;
			var radians:Number = 53 * (Math.PI / 180);
			var H:Number = yDistance / Math.tan(radians);
			if (H == 0)
			{
				return 2000;
			}
			return H * ChangeFactor;
		}
		
		/**计算地图比例尺（大地坐标系）*/
		public function GetScale(h:Number, factor:Number):Number
		{
			var mapscale:Number = factor * 2 * (h * Math.tan(53 * (Math.PI / 180))) / 111 / 1000;
			return mapscale / ChangeFactor;
		}
		
		/**计算地图比例尺（地方坐标系）*/
		public function GetScaleEx(originalh:Number, currenth:Number, mapscale:Number):Number
		{
			var map_scale:Number = originalh / currenth * mapscale;
			return map_scale;
		}
	}
}