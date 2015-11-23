package com.supermap.wegis.common.utils
{
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	import mx.utils.URLUtil;
	
	public class URLUtilEx 
	{
		public function URLUtilEx()
		{
			super();
		}
		
		/**获取ＵＲＬ中的协议，域名，端口，工程名 eg:http://IP:prot/map*/
		public static function getProtocolHostProtProjectName(url:String):String {
			var tempUrl:String;
			if (url != null)
			{
				var temArr:Array = url.split("/");
				if(temArr != null && temArr.length >=3) {
					tempUrl = temArr[0] +"//" +temArr[2] +"/"+temArr[3]+"/";
				}
			}
			return tempUrl;
		}
		
		/**重定向到指定url*/
		public static function naviagorToUrl(url:String,window:String= "_blank"):void {
			navigateToURL(new URLRequest(url),window);
		}
	}
}