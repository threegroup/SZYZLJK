package com.supermap.wegis.common.utils
{
	/**
	 * Description Number处理工具
	 * */
	public class NumberUnit
	{
		/**判断字符是否是Number,包括，负数，小数点*/
		public static function isNumber(str:String):Boolean
		{
			var Letters:String = "1234567890-.";
			var i:int;
			var c:String;
			if(str.charAt(0) == ".")
			{
				return false;
			}
			if(str.charAt(0) == "-" && str.charAt(1) == ".")
			{
				return false;
			}
			if(str.charAt(str.length -1 ) == "-")
				return false;
			for(i=0;i<str.length;i++)
			{
				c = str.charAt(i);
				if(Letters.indexOf(c)<0)
				{
					return false;
				}
			}
			return true;
		}
	}
}