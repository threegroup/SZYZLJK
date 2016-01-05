package sm.wegis.szy.businesses
{
	import com.adobe.serialization.json.JSON;
	import com.supermap.wegis.services.data.RequestData;
	
	import mx.rpc.AbstractOperation;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.http.HTTPService;
	import mx.rpc.soap.WebService;
	
	import org.springextensions.actionscript.cairngorm.business.AbstractBusinessDelegate;
	
	import sm.wegis.szy.models.ApplicationModelLocator;
	
	public class GetDelegate extends AbstractBusinessDelegate  implements IDelegate
	{
		private var modelLocator:ApplicationModelLocator = null;
		public function GetDelegate(service:Object=null, responder:IResponder=null)
		{
			super(service, responder);
			
			//初始化模型定位器
			modelLocator = ApplicationModelLocator.getInstance();
		}
		
		/**执行HttpService请求*/
		public function executeHttpService(url:String,
										   resultFormat:String = "object"):void
		{
			if(url.indexOf("?") == -1)
			{
				service.url = url +"?t=" +new Date().time;
			}else
			{
				service.url = url +"&t=" +new Date().time;	
			}
			service.resultFormat = resultFormat;
			var token:AsyncToken = service.send();
			token.addResponder(this.responder);
		}
		
		/**改进版HttpService请求*/
		public function executeHttpServiceEx(url:String,
											 params:Object,
											 resultFormat:String= "object",
											 method:String ="GET",
											 contentType:String = HTTPService.CONTENT_TYPE_FORM):void
		{
			if(url != null)
			{
				if(service is HTTPService)
				{
					var httpService:HTTPService = service as HTTPService;
					if(url.indexOf("?") == -1)
					{
						httpService.url = url +"?t=" +new Date().time;
					}else
					{
						httpService.url = url +"&t=" +new Date().time;	
					}
					httpService.url = url;
					httpService.method = method;
					httpService.contentType = contentType;
					httpService.resultFormat = resultFormat;
					var token:AsyncToken = httpService.send(params);
					token.addResponder(this.responder);
				}
			}
		}
		
		/**执行WebService请求*/
		public function executeWebService(requestData:Object):void
		{
			if(service != null)
			{
				if (service.canLoadWSDL())        
				{
					service.loadWSDL();
					//直接调用execute方法
					var json0:String = com.adobe.serialization.json.JSON.encode(requestData).toString();
					var token0:AsyncToken = service.execute(json0);
					token0.addResponder(this.responder);
				}
			}
		}	
		
		/**改进版WebService请求*/
		public function executeWebServiceEx(wsdl:String,
											requestData:Object,
											operation:String ="execute"):void
		{
			if(service != null)
			{
				if(service is WebService)
				{
					var webService:WebService = service as WebService;
					webService.wsdl = wsdl;
					
					if (webService.canLoadWSDL())        
					{
						webService.loadWSDL();
						
						var token:AsyncToken;
						var json:String;
						if(requestData is RequestData)
						{
							json = com.adobe.serialization.json.JSON.encode(requestData).toString();
							token = (service.getOperation(operation) as AbstractOperation).send(json);
						}else if(requestData is Array){
							token = (service.getOperation(operation) as AbstractOperation).send.apply(this,requestData) ;
						}
						token.addResponder(this.responder);
					}
				}
			}
		}
		
		/**
		 * WebService请求
		 * @param operation
		 * @param requestData
		 * */
		public function executeWebServiceOperation(operation:String, requestData:Object):void
		{
			if(service != null)
			{
				if(service is WebService)
				{
					var webService:WebService = service as WebService;
					
					if (webService.canLoadWSDL())        
					{
						webService.loadWSDL();
						
						var token:AsyncToken;
						var abstractOperation:AbstractOperation = service.getOperation(operation);
						abstractOperation.arguments = requestData;
						token = abstractOperation.send();
						token.addResponder(this.responder);
					}
				}
			}
		}
	}
}