package sm.wegis.szy.utils
{
	public class ColorUtils
	{
		public function ColorUtils()
		{
			
		}
		/**   
		 * 输入一个颜色,将它拆成三个部分:   
		 * 红色,绿色和蓝色   
		 */    
		public static function CombinationToRGB( color:uint ):Array     
		{     
			var r:Number = color >> 16;     
			var g:Number = (color >> 8) & 0xff;     
			var b:Number = color & 0xff;     
			
			return [r, g, b];     
		}     
		/**   
		 * 红色,绿色和蓝色三色组合   
		 */    
		public static function RGBToCombination( rgb:Array ):int    
		{     
			if( rgb == null || rgb.length != 3 ||      
				rgb[0] < 0 || rgb[0] > 255 ||     
				rgb[1] < 0 || rgb[1] > 255 ||     
				rgb[2] < 0 || rgb[2] > 255 )     
				return 0xFFFFFF;     
			return rgb[0] << 16 | rgb[1] << 8 | rgb[2];     
		}  
	}  
}