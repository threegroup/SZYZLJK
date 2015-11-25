package com.supermap.wegis.common.core.convert
{
	import com.supermap.web.core.geometry.GeoPoint;
	
	import flash.geom.Point;

	public class ProjCalculus
	{
		public function ProjCalculus()
		{
		}
		
		/**
		 * VincentyConstants
		 * Constants for Vincenty functions.
		 */
		public static var vincentyConstantA:Number = 6378137;
		public static var vincentyConstantB:Number = 6356752.3142;
		public static var vincentyConstantF:Number = 1/298.257223563;
		
		/**
		 * 输入距离值获取对应的经纬度距离，默认初始点为(0, 0)		 
		 * @param dist 米制长度
		 * @return 对应的度为单位的长度
		 */
		public static function meterToDegree(dist:Number):Number{
			var geoPoint:GeoPoint = new GeoPoint(0, 0);
			return meterToDegreeByPoint(geoPoint, dist)
		}
		
		/**
		 * 输入初始点位置和距离值获取对应的经纬度距离
		 * @param point 初始点
		 * @param dist 米制长度
		 * @return 对应的度为单位的长度
		 */
		public static function meterToDegreeByPoint(point:GeoPoint, dist:Number):Number{
			var geoPoint:GeoPoint = ProjCalculus.destinationVincenty(point, 0, dist);
			//改进后
			return Math.abs(geoPoint.y - point.y);
		}
		
		/**
		 * 根据初始点和距离，计算出该距初始点一定距离的目标点坐标，
		 * 可以为任意球体，如WGS84
		 * @param lonlat 初始点坐标
		 * @param brng 目标点相对于初始点的方位，如0°
		 * @param dist 目标点相对于初始点的距离
		 * @return 目标点坐标
		 * 
		 */
		public static function destinationVincenty(lonlat:GeoPoint, brng:Number, dist:Number):GeoPoint
		{
			var a:Number = 6378137;
			var b:Number = 6356752.3142;
			var f:Number = 1/298.257223563;
			
			var lon1:Number = lonlat.x;
			var lat1:Number = lonlat.y;
			
			var s:Number = dist;
			var alpha1:Number = rad(brng);
			var sinAlpha1:Number = Math.sin(alpha1);
			var cosAlpha1:Number = Math.cos(alpha1);
			
			var tanU1:Number = (1-f) * Math.tan(rad(lat1));
			var cosU1:Number = 1 / Math.sqrt((1 + tanU1*tanU1))
			var sinU1:Number = tanU1*cosU1;
			var sigma1:Number = Math.atan2(tanU1, cosAlpha1);
			var sinAlpha:Number = cosU1 * sinAlpha1;
			var cosSqAlpha:Number = 1 - sinAlpha*sinAlpha;
			var uSq:Number = cosSqAlpha * (a*a - b*b) / (b*b);
			var A:Number = 1 + uSq/16384*(4096+uSq*(-768+uSq*(320-175*uSq)));
			var B:Number = uSq/1024 * (256+uSq*(-128+uSq*(74-47*uSq)));
			
			var sigma:Number = s / (b*A)
			var sigmaP:Number = 2*Math.PI;
			while (Math.abs(sigma-sigmaP) > 1e-12) {
				var cos2SigmaM:Number = Math.cos(2*sigma1 + sigma);
				var sinSigma:Number = Math.sin(sigma);
				var cosSigma:Number = Math.cos(sigma);
				var deltaSigma:Number = B*sinSigma*(cos2SigmaM+B/4*(cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)-
					B/6*cos2SigmaM*(-3+4*sinSigma*sinSigma)*(-3+4*cos2SigmaM*cos2SigmaM)));
				sigmaP = sigma;
				sigma = s / (b*A) + deltaSigma;
			}
			
			var tmp:Number = sinU1*sinSigma - cosU1*cosSigma*cosAlpha1;
			var lat2:Number = Math.atan2(sinU1*cosSigma + cosU1*sinSigma*cosAlpha1,
				(1-f)*Math.sqrt(sinAlpha*sinAlpha + tmp*tmp));
			var lambda:Number = Math.atan2(sinSigma*sinAlpha1, cosU1*cosSigma - sinU1*sinSigma*cosAlpha1);
			var C:Number = f/16*cosSqAlpha*(4+f*(4-3*cosSqAlpha));
			var L:Number = lambda - (1-C) * f * sinAlpha *
				(sigma + C*sinSigma*(cos2SigmaM+C*cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)));
			
			var revAz:Number = Math.atan2(sinAlpha, -tmp);  // final bearing
			
			return new GeoPoint(lon1+deg(L), deg(lat2));
		}
		
		/**
		 * 度转为弧度
		 * @param x 度
		 * @return 弧度
		 * 
		 */ 
		private static function rad(x:Number):Number
		{
			return x*Math.PI/180;
		}
		
		/**
		 * 弧度转为度
		 * @param x 弧度
		 * @return 度
		 * 
		 */ 
		private static function deg(x:Number):Number
		{
			return x*180/Math.PI;
		}
		
		/**
		 * Given two objects representing points with geographic coordinates, this
		 *     calculates the distance between those points on the surface of an
		 *     ellipsoid.
		 *
		 * Returns:
		 * The distance (in km) between the two input points as measured on an
		 *     ellipsoid.  Note that the input point objects must be in geographic
		 *     coordinates (decimal degrees) and the return distance is in kilometers.
		 */
		public static function distVincenty(p1:Point, p2:Point):Number
		{
			var a:Number = vincentyConstantA;
			var b:Number = vincentyConstantB; 
			var f:Number = vincentyConstantF;
			
			var L:Number = degtoRad(p2.x - p1.x);
			var U1:Number = Math.atan((1-f) * Math.tan(degtoRad(p1.y)));
			var U2:Number = Math.atan((1-f) * Math.tan(degtoRad(p2.y)));
			var sinU1:Number = Math.sin(U1);
			var cosU1:Number = Math.cos(U1);
			var sinU2:Number = Math.sin(U2);
			var cosU2:Number = Math.cos(U2);
			var lambda:Number = L;
			var lambdaP:Number = 2*Math.PI;
			var iterLimit:Number = 20;
			while (Math.abs(lambda-lambdaP) > 1e-12 && --iterLimit>0) {
				var sinLambda:Number = Math.sin(lambda)
				var cosLambda:Number = Math.cos(lambda);
				var sinSigma:Number = Math.sqrt((cosU2*sinLambda) * (cosU2*sinLambda) +
					(cosU1*sinU2-sinU1*cosU2*cosLambda) * (cosU1*sinU2-sinU1*cosU2*cosLambda));
				if (sinSigma==0) {
					return 0;  // co-incident points
				}
				var cosSigma:Number = sinU1*sinU2 + cosU1*cosU2*cosLambda;
				var sigma:Number = Math.atan2(sinSigma, cosSigma);
				var alpha:Number = Math.asin(cosU1 * cosU2 * sinLambda / sinSigma);
				var cosSqAlpha:Number = Math.cos(alpha) * Math.cos(alpha);
				var cos2SigmaM:Number = cosSigma - 2*sinU1*sinU2/cosSqAlpha;
				var C:Number = f/16*cosSqAlpha*(4+f*(4-3*cosSqAlpha));
				lambdaP = lambda;
				lambda = L + (1-C) * f * Math.sin(alpha) *
					(sigma + C*sinSigma*(cos2SigmaM+C*cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)));
			}
			if (iterLimit==0) {
				return NaN;  // formula failed to converge
			}
			var uSq:Number = cosSqAlpha * (a*a - b*b) / (b*b);
			var A:Number = 1 + uSq/16384*(4096+uSq*(-768+uSq*(320-175*uSq)));
			var B:Number = uSq/1024 * (256+uSq*(-128+uSq*(74-47*uSq)));
			var deltaSigma:Number = B*sinSigma*(cos2SigmaM+B/4*(cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)-
				B/6*cos2SigmaM*(-3+4*sinSigma*sinSigma)*(-3+4*cos2SigmaM*cos2SigmaM)));
			var s:Number = b*A*(sigma-deltaSigma);
			var d:Number = Number(s.toFixed(3))/1000; // round to 1mm precision
			return d;
		}
		
		/**
		 * Convert degrees to radian
		 *
		 * @param val Value to convert 
		 */
		public static function degtoRad(val:Number):Number{
			return val*Math.PI/180;
		}
	}
}