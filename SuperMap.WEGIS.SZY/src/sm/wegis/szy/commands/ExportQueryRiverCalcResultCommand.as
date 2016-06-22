package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.net.FileReference;
	import flash.net.URLRequest;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.events.CloseEvent;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.events.SystemEvent;
	import sm.wegis.szy.vo.WSMethod;
	import sm.wegis.szy.vo.WaterModelParam;
	
	public class ExportQueryRiverCalcResultCommand extends CommandBase
	{
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var requestParam:WaterModelParam = event.data as WaterModelParam;
			var params:Array = [];
			params.push(requestParam.planId);
			params.push(requestParam.jisuanid);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetHDExportUrlList, params);
			CursorManager.setBusyCursor();
		}
		private var f:FileReference;
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var resultValue:Object = jsDec.getValue() as Object;
			if (resultValue.success == true) {
				var attr:Object = resultValue.attributes;
				Alert.show("是否下载","提示",Alert.YES|Alert.NO,FlexGlobals.topLevelApplication as Sprite,
					closeHandler);
				function closeHandler(event:CloseEvent):void{
					if(event.detail == Alert.YES) {
						var req2:URLRequest = new URLRequest(attr.url.fileUrl);
						f = new FileReference();
						configureListeners(f);
						f.download(req2, attr.url.fileNm);
					}
				}
			}
		}
		
		private function configureListeners(dispatcher:IEventDispatcher):void {
			dispatcher.addEventListener(Event.COMPLETE, completeHandler);
		}
		
		private function completeHandler(event:Event):void {
			var systemEvent:SystemEvent = new SystemEvent(SystemEvent.SYSTEM_TOOL_TIP);
			systemEvent.data = "下载完成";
			systemEvent.dispatch();
		}
		
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("导出河道计算数据失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
			var queryEvent:QueryEvent = new QueryEvent(QueryEvent.EXPORT_QUERY_RIVER_CALC_RESULT_RESPONSE);
			queryEvent.dispatch();
		}
	}
}