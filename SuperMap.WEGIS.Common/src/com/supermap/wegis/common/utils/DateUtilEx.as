package   com.supermap.wegis.common.utils
{
	import flash.globalization.DateTimeFormatter;
	
	import mx.formatters.DateFormatter;
	
	public class DateUtilEx
	{
		public static const millisecondsPerHour:int = 1000 * 60 * 60; 
		/**
		 * 将date 转换成 “yyyy-MM-dd HH:mm:ss的字符串
		 * 如果date为空，返回当前时间的字符串
		 */
		public static function getDateToStr(date:Date = null):String{
			if(date == null){
				date = new Date();
			}
			var dtf:DateTimeFormatter=new DateTimeFormatter("zh-CN");
			dtf.setDateTimePattern("yyyy-MM-dd HH:mm:ss");
			return dtf.format(date);
		}
		
		/**根据时间，计算指点时间差对应的时间*/
		public static function calcTime(time:Date, gap:Number):String
		{
			var dateFormatter:DateFormatter = new DateFormatter();
			dateFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";
			time.setTime(time.getTime() - gap);
			return dateFormatter.format(time);
		}
		
		/**
		 * 获取当前时时间，eg:2015-01-02 09:00:00
		 */
		public static function getHour(date:Date = null):String{
			if (date == null) {
				date = new Date();
			}
			var str:String = date.fullYear+"-"+fillZero(date.month+1)+"-"
				+fillZero(date.date)+" "+fillZero(date.hours)+":00:00";
			return str;
		}
		
		/**
		 * 格式化的 date字符串转化Date对象，注意，除了使用date parse 可识别的标准时间字符串外，还可以
		 * 使用yyyy-MM-dd HH:mm:ss格式，代码中将“-”替换成“/”后，parse方法可以正确识别。
		 */
		public static function getDateByStr(date:String):Date{
			var res:Date=null;
			if(date){
				var mil:Number=Date.parse(date.replace(/\-/g,"/"));
				res=new Date(mil);  
			}
			return res;
		}
		
		/**
		 * 补齐 数位
		 */
		public static function fillZero(num:Number,totalLength:Number=2):String{
			var resultStr:String=num+"";
			if(resultStr.length==totalLength){
				
			}else if(resultStr.length<totalLength){
				for(var i:int=0;i<(totalLength-resultStr.length);i++){
					resultStr="0"+resultStr;
				}
			}else{
				resultStr=null;
			}
			return resultStr;
		}
	}
}