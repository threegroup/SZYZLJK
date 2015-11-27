package   com.supermap.wegis.common.utils
{
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.utils.Dictionary;
	
	import mx.resources.ResourceManager;
	import mx.utils.StringUtil;
	
	[Event(name="loadCompleteEvent", type="flash.events.Event")]
	public class Property extends EventDispatcher
	{
		public static const LoadCompleteEvent:String = "loadCompleteEvent";
		private static var  properties:Dictionary;
		private static var bundleNames:Array;
		private static var property:Property;
		private static var defaultBundleName:String;
		
		public static function getInstance():Property
		{
			if(property == null)
			{
				property = new Property();
			}
			return property;
		}
		
		//单例模式
		public function Property()
		{
			if(property != null)
			{
				throw new Error("不能通过该方式创建类型的实例，请采用静态方法getInstance()初始化对象！");
			}
		}		
		/**初始化Properties文件,默认bundles[0]为默认获取key的文件
		 * @ bundleNames Array properties文件相对路径
		 * */
		public static function initPropertyFiles(bundles:Array):void
		{
			bundleNames = bundles;
			if (defaultBundleName == null && bundles.length > 0)
			{
				defaultBundleName = bundles[0];
			}
			loadProperty();
		}
		private static function loadProperty():void
		{
			if (bundleNames != null && bundleNames.length >0)
			{
				var bundleName:String = bundleNames.shift();
				//如果存在，加载下一个
				if (properties != null && bundleName in properties)
				{
					loadProperty();
					return;
				}
				var urlReq:URLRequest = new URLRequest(bundleName + "?t=" + new Date().time); 
				var urlLdr:URLLoader = new URLLoader(); 
				urlLdr.addEventListener(Event.COMPLETE, doEvent); 
				urlLdr.addEventListener(Event.OPEN, doEvent); 
				urlLdr.addEventListener(HTTPStatusEvent.HTTP_STATUS, doEvent); 
				urlLdr.addEventListener(IOErrorEvent.IO_ERROR, doEvent); 
				urlLdr.addEventListener(ProgressEvent.PROGRESS, doEvent); 
				urlLdr.addEventListener(SecurityErrorEvent.SECURITY_ERROR, doEvent); 
				urlLdr.load(urlReq); 
			}else{
				property.dispatchEvent(new Event(LoadCompleteEvent));
			}
			
			function doEvent(event:Event):void 
			{
				switch(event.type)
				{
					case Event.COMPLETE:
						var ldr:URLLoader = event.currentTarget as URLLoader; 
						var paramStr:String = StringUtil.trim(ldr.data.toString());
						paramStr = paramStr.replace(/\r\n/ig,"^^^");
						paramStr = paramStr.replace(/&{2,}/ig,"^^^");
						var paramAll:Array = paramStr.split("^^^");
						var paramsNoNote:Array = [];
						for each (var item:String in paramAll) {
						item = StringUtil.trim(item);
						if (item.charAt(0) != "#") {
							paramsNoNote.push( item);
						}
					}
						var vars:URLVariables = new URLVariables();
						for each(var keyStr:String in paramsNoNote) {
						var pos:int = keyStr.search("=");
						vars[StringUtil.trim(keyStr.substring(0, pos))] = StringUtil.trim(keyStr.substr(pos+1));
					}
						if (properties == null) {
							properties = new Dictionary();
						}
						properties[bundleName] = vars;
						loadProperty();
						break;
					case IOErrorEvent.IO_ERROR:
					case SecurityErrorEvent.SECURITY_ERROR:
						loadProperty();
						throw new Error("未找到配置文件"+bundleName );
						break;
				}
			}
		}
		
		public static function getProperty(bundleName:String, resourceName:String):*
		{
			if (properties != null && properties[bundleName] != null && properties[bundleName][resourceName] != null)
			{
				return properties[bundleName][resourceName];
			}
			return null;
		}
		
		public static function getDefaultProperty(resourceName:String):*
		{
			if (properties != null && properties[defaultBundleName] != null && properties[defaultBundleName][resourceName] != null)
			{
				return properties[defaultBundleName][resourceName];
			}
			return null;
			throw new Error("未找到配置参数"+resourceName );
		}
	}
}