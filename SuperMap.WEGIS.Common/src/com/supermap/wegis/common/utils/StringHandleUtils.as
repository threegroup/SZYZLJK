package com.supermap.wegis.common.utils
{
	import flash.utils.ByteArray;

	public class StringHandleUtils
	{
		public static  function getStringNum(value:String):Number
		{
			var array:Array = value.split("");
			var length:Number = 0;
			for each(var s:String in array)
			{
				if(Number(s))
				{
					length = length +1;
				}else
				{
					length = length +0.5
				}
			}
			return length;
//				return value.replace(/[^\x00-\xff]/g,"xx").length; 
			
//			return / .*[\u4e00 -\u 9fa5] + .*$ / .test(str);
		}
		public static function calcuteLength(str:String):int{  
			var len:Number = 0;  
			for(var i:int=0;i<str.length;i++){  
				var char:String = str.substr(i,1);  
				if(/[^\x00-\xff]/g.test(char)){  
					len += 1;  
				}else{  
					len += 0.5;  
				}  
			}  
			return len;  
		} 
		
		/**将传入(GB2312)的中文字符串转换为UTF-8*/ 
		public static  function EncodeUtf8(str : String):String        
		{  
			var oriByteArr : ByteArray = new ByteArray();  
			oriByteArr.writeUTFBytes(str);  
			var tempByteArr : ByteArray = new ByteArray();  
			for (var i:int = 0; i<oriByteArr.length; i++)    
			{  
				if (oriByteArr[i] == 194) {  
					tempByteArr.writeByte(oriByteArr[i+1]);  
					i++;  
				} else if (oriByteArr[i] == 195) {  
					tempByteArr.writeByte(oriByteArr[i+1] + 64);  
					i++;  
				} else {  
					tempByteArr.writeByte(oriByteArr[i]);  
				}  
			}  
			tempByteArr.position = 0;  
			return tempByteArr.readMultiByte(tempByteArr.bytesAvailable,"gb2313");  
		}
		
		public static function reverString(str:String):String
		{
			var reverStr:Array = [];
			for (var index:int = str.length -1 ;index >= 0 ; index --)
			{
				var chart:String = str.charAt(index);
				if(chart == "(" || chart == "（")
				{
					chart = ")";
				}else if(chart == ")" || chart == "）")
				{
					chart = "(";
				}
				reverStr.push(chart);
			}
			return reverStr.join("");
		}
	}
}