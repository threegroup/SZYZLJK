package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.MapLayerEvent;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.MapQueryVO;
	import sm.wegis.szy.vo.WSMethod;
	
	public class QueryTypesAndDetailListCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var mapQueryVO:MapQueryVO = event.data as MapQueryVO;
			var params:Array = [];
			params.push(modelLocator.userVo.userId);
			params.push(modelLocator.systemInfo.subSystemID);
			params.push(mapQueryVO.mainType);
			params.push(mapQueryVO.typeIds);
			params.push(mapQueryVO.keyword);
			
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetTypes, params);
		}
		
		override public function result(data:Object):void
		{
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_TYPES_AND_DETAIL_LIST_RESPONSE);
			queryEvent.data = value;
			queryEvent.dispatch();
		}
		
		override public function fault(info:Object):void
		{
			Alert.show("获取分类及要素列表失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.QUERY_TYPES_AND_DETAIL_LIST_RESPONSE);
			queryEvent.dispatch();
		}
	}
}