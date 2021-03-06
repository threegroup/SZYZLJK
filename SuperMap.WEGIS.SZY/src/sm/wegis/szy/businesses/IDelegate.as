package sm.wegis.szy.businesses
{
	import mx.rpc.http.HTTPService;
	
	import org.springextensions.actionscript.cairngorm.business.IBusinessDelegate;
	
	public interface IDelegate extends IBusinessDelegate
	{
		function executeWebService(requestData:Object):void;
		function executeWebServiceEx(operation:String, requestData:Object):void;
		function executeHttpService(url:String,resultFormat:String= "object"):void
		function executeHttpServiceEx(url:String, params:Object,resultFormat:String= "object",method:String ="GET",contentType:String = HTTPService.CONTENT_TYPE_FORM):void
	}
}