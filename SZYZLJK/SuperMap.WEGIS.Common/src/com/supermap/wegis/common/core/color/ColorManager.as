package com.supermap.wegis.common.core.color
{
	public class ColorManager
	{
		public function ColorManager()
		{
		}
		
		/**生成指定范围的随机值*/
		public static function randomRange(min:Number, max:Number):Number
		{
			var randomNum:Number = Math.floor(Math.random() * (max - min + 1)) + min;
			return randomNum;
		}
		
		/**根据颜色分解色值*/
		public static function retrieveRGB(color:uint):Array
		{
			if(color.toString() == null)
				return [];
			
			var r:Number = color >> 16;
			var g:Number = (color >> 8) & 0xff;
			var b:Number = color & 0xff;
			
			return [r, g, b];
		}
		
		/**根据色值合成颜色*/
		public static function generateColorFromRGB(rgb:Array, random:Number = 0.6):uint
		{
			if(rgb == null || rgb.length != 3 ||
			rgb[0] < 0 || rgb[0] > 255 ||
			rgb[1] < 0 || rgb[1] > 255 ||
			rgb[2] < 0 || rgb[2] > 255)
				return 0xFFFFFF;
			if(rgb[0] >=0 && rgb[0] <= 255)
			{
				rgb[0] = rgb[0] * random;
			}
			
			if(rgb[1] >=0 && rgb[1] <= 255)
			{
				rgb[1] = rgb[1] * random;
			}
			
			if(rgb[2] >=0 && rgb[2] <= 255)
			{
				rgb[2] = rgb[2] * random;
			}
			
			return rgb[0] << 16 | rgb[1] << 8 | rgb[2];
		}
	}
}