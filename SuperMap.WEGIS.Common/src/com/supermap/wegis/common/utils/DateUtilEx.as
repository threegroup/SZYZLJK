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
		
		
		/**
		 * 将date 转换成 “yyyy-MM-dd HH:mm:ss的字符串
		 * 如果date为空，返回当前时间的字符串
		 */
		public static function getDateYMD(date:Date = null):String{
			if(date == null){
				date = new Date();
			}
			var dtf:DateTimeFormatter=new DateTimeFormatter("zh-CN");
			dtf.setDateTimePattern("yyyy-MM-dd");
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
		 * 获取当天23：59：59 eg:2016-04-10 23:59:59
		 * */
		public static function getDayEndTime(date:Date = null):String{
			if(date == null){
				date = new Date();
			} else {
				date = new Date(date.fullYear, date.month, date.date, 23,59,59);
			}
			var dtf:DateTimeFormatter=new DateTimeFormatter("zh-CN");
			dtf.setDateTimePattern("yyyy-MM-dd HH:mm:ss");
			return dtf.format(date);
		}
		
		/**
		 * 获取当前月第一天，eg:2015-01-01
		 */
		public static function getMonthFirstDay(date:Date = null):Date{
			if (date == null) {
				date = new Date();
			}
			var firstDay:Date = new Date(date.fullYear, date.month, 1);
			return firstDay;
		}
		
		/**
		 * 获取当前年第一天,eg:2015-01-01
		 */
		public static function getYearFirstDay(date:Date = null):Date{
			if (date == null) {
				date = new Date();
			}
			var firstDay:Date = new Date(date.fullYear, 0, 1);
			return firstDay;
		}
		
		/**
		 * 获取当前时间的30天前时间，eg:2015-01-01
		 */
		public static function getPreThirtyDayDate(date:Date = null):Date{
			if (date == null) {
				date = new Date();
				date = new Date(date.fullYear, date.month, date.date, 23,59,59);
			}
			var gap:Number = 3600*24*30*1000;
			date.setTime(date.getTime() - gap);
			return date;
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