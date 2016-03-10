package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.serialization.json.JSONDecoder;
	import com.supermap.web.core.Feature;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	
	import sm.wegis.szy.businesses.IDelegate;
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.QueryEvent;
	import sm.wegis.szy.vo.WSMethod;
	
	public class QueryObjectDetailCommand extends CommandBase
	{
		private var f:Feature = null;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			f = event.data as Feature;
			var objId:String = f.id;
			var params:Array = [];
			params.push(modelLocator.userVo.userId);
			params.push(objId);
			IDelegate(this.businessDelegate).executeWebServiceEx(WSMethod.GetObjDetailInfo, params);
			CursorManager.setBusyCursor();
		}
		
		override public function result(data:Object):void
		{
			CursorManager.removeBusyCursor();
			//绑定数据源
			var jsDec:JSONDecoder  = new JSONDecoder(data.result.toString());
			var value:Object = jsDec.getValue() as Object;
			value = {
				"message": "信息查询成功。",
				"responseSts": 0,
				"surveyData": [{
					"resultInfoHeaderList": [{
						"showValue": "名称",
						"decimalDigits": 0,
						"code": "name",
						"colWidth": 0
					},
						{
							"showValue": "内容",
							"decimalDigits": 0,
							"code": "value",
							"colWidth": 0
						}],
					"detailType": "detailInfo",
					"label": "详细信息",
					"resultInfoDetailList": [{
						"name": "水库名称",
						"value": "怀柔水库"
					},
						{
							"name": "航运",
							"value": "aaa"
						},
						{
							"name": "养殖",
							"value": "bb"
						}]
				},
					{
						"resultInfoHeaderList": [{
							"showValue": "名称",
							"decimalDigits": 0,
							"code": "name",
							"colWidth": 0
						},
							{
								"showValue": "内容",
								"decimalDigits": 0,
								"code": "value",
								"colWidth": 0
							}],
						"detailType": "linkDoc",
						"label": "关联资料",
						"resultInfoDetailList": [{
							"name":"图片名称",
							"value":"八宝海河2",
							"FILE_NAME": "01B06FD78FF146358DC934232307ADD3八宝海河2.jpg",
							"PREVIEW_URL": "assets/image/test/1.jpg",
							"FILE_FORMAT": "jpg",
							"FILE_DESC": "",
							"FILE_TYPE": 1,
							"THEME": "",
							"THUMBNAILS_URL": "assets/image/test/1.jpg"
						},
							{
								"name":"图片名称",
								"value":"八宝海河",
								"FILE_NAME": "01B06FD78FF146358DC934232307ADD3八宝海河.jpg",
								"PREVIEW_URL": "assets/image/test/2.jpg",
								"FILE_FORMAT": "jpg",
								"FILE_DESC": "",
								"FILE_TYPE": 1,
								"THEME": "",
								"THUMBNAILS_URL": "assets/image/test/2.jpg"
							},
							{
								"name":"视频名称",
								"value":"测试视频2",
								"FILE_NAME": "01B06FD78FF146358DC934232307ADD3测试视频2.mp4",
								"PREVIEW_URL": "http://192.169.11.84:8080/waterEnv/resources/01B06FD78FF146358DC934232307ADD3测试视频2.mp4",
								"FILE_FORMAT": "mp4",
								"FILE_DESC": "",
								"FILE_TYPE": 2,
								"THEME": "",
								"THUMBNAILS_URL": "http://192.169.11.84:8080/waterEnv/resources/01B06FD78FF146358DC934232307ADD3测试视频2.mp4"
							},
							{
								"name":"视频名称",
								"value":"测试视频",
								"FILE_NAME": "01B06FD78FF146358DC934232307ADD3测试视频.mp4",
								"PREVIEW_URL": "http://192.169.11.84:8080/waterEnv/resources/01B06FD78FF146358DC934232307ADD3测试视频.mp4",
								"FILE_FORMAT": "mp4",
								"FILE_DESC": "",
								"FILE_TYPE": 2,
								"THEME": "",
								"THUMBNAILS_URL": "http://192.169.11.84:8080/waterEnv/resources/01B06FD78FF146358DC934232307ADD3测试视频.mp4"
							}]
					}]
			};
			var resultData:Object = {};
			resultData["resultData"] = value;
			resultData["attribute"] = {};
			if(f != null)
			{
				resultData["attribute"]["CENTER_X"] = f.geometry.center.x;
				resultData["attribute"]["CENTER_Y"] = f.geometry.center.y;
			}
			if(value.hasOwnProperty("surveyData") && value["surveyData"] != null)
			{
				var queryEvent:QueryEvent = new QueryEvent(QueryEvent.SHOW_OBJECT_DETAIL);
				queryEvent.data = resultData;
				queryEvent.dispatch();
			}
		}
		
		override public function fault(info:Object):void
		{
			CursorManager.removeBusyCursor();
			Alert.show("获取对象详情失败！", "提示", Alert.OK, null, null, 
				ResourceManagerEx.FindResource("TIP").cls);
		}
	}
}