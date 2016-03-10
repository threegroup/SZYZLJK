package sm.wegis.szy.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.core.Feature;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.styles.PictureMarkerStyle;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.components.panel.contentPanel.ContentPanel;
	import com.supermap.wegis.common.core.resourceManager.ResourceInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.mappingEx.FeaturesLayerEx;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;
	import mx.core.UIComponent;
	import mx.managers.PopUpManager;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.vo.ConstVO;
	
	import widgets.mapquery.ObjectInfoPanel;

	//显示要素详情
	public class ShowObjectDetailCommand extends CommandBase
	{
		private static var  selectedFeature:Feature = null;
		private static var  contentPanel:ContentPanel;
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			var element:Object = event.data;
			var parentAttribute:Object = element["attribute"];
			var detailAttribute:Object = element["resultData"];
			//如果没有坐标信息，记录上一次窗口显示位置
			var topX:int;
			var topY:int;
			if(contentPanel != null)
			{
				topX = contentPanel.x;
				topY = contentPanel.y;
				//关闭窗口
				contentPanel.dispatchEvent(new Event(ContentPanel.CLOSE_WINDOW));
			}
			contentPanel = new ContentPanel();
			//详情标题
			if(parentAttribute.hasOwnProperty("OBJ_NAME"))
			{
				contentPanel.widgetTitle = parentAttribute["OBJ_NAME"];
			}
			else if(parentAttribute.hasOwnProperty("KEYWORDS"))
			{
				contentPanel.widgetTitle = parentAttribute["KEYWORDS"];
			}
			else
			{
				contentPanel.widgetTitle = "对象信息";
			}
			var baseInfoPanel:ObjectInfoPanel = new ObjectInfoPanel();
			baseInfoPanel.detailAttribute = new ArrayCollection(detailAttribute["surveyData"] as Array);
			baseInfoPanel.parentAttribute = parentAttribute;
			baseInfoPanel.layerName = element["layerName"];
			baseInfoPanel.percentHeight = 100;
			baseInfoPanel.percentWidth = 100;
			contentPanel.addElement(baseInfoPanel);
			contentPanel.enableMinimizeButton = false;
			contentPanel.enableResizeButton =false;
			contentPanel.enableIcon = false;
			contentPanel.unLoad = true;
			contentPanel.widgetState = ContentPanel.WIDGET_OPENED;
			if(parentAttribute["CENTER_X"] && parentAttribute["CENTER_Y"])
			{
				var temp:Array = parentAttribute["CENTER_X"].toString().split(":");
				var tempX:Number =parseFloat((temp.length == 2 ? temp[1] : temp[0]).toString());
				var tempY:Number = parentAttribute["CENTER_Y"];
				var showPoint:Point2D =  new Point2D(tempX,tempY);
				var map:MapCtrl = modelLocator.mapCtrl;
				contentPanel.enableDraging = false;
				contentPanel.closeFunction = elementHideInfoWidow;
				contentPanel.width = 300;
				contentPanel.height = 300;
				map.infoWindow.content = contentPanel;
				map.infoWindow.show(showPoint);
				var feature:Feature = getFeatureById(parentAttribute["refFeatureId"],baseInfoPanel.layerName);
				highLightSelectedFeature(feature);
			}else{
				contentPanel.alpha = 1;
				contentPanel.enableDraging = true;
				contentPanel.closeFunction = null;
				contentPanel.width =  FlexGlobals.topLevelApplication.stage.stageWidth * 0.4;
				contentPanel.height =  FlexGlobals.topLevelApplication.stage.stageHeight * 0.3;
				PopUpManager.addPopUp(contentPanel,FlexGlobals.topLevelApplication as UIComponent,false);
				if (topX != 0 && topY != 0)
				{
					contentPanel.x = topX;
					contentPanel.y = topY;
				}else {
					PopUpManager.centerPopUp(contentPanel);
				}
			}
			
			//加载要素对应的服务
			/*var loadEvent:MapCtrlEvent = new MapCtrlEvent(MapCtrlEvent.LOCATE_TO_LOAD_LAYER);
			loadEvent.data = parentAttribute["MIDDLE_TYPE"];
			loadEvent.dispatch();*/
		}
		
		/**获取选中对象，并高亮显示*/
		private function highLightSelectedFeature(feature:Feature=null):void
		{
			if(feature != null)
			{
				var iconKey:String = "";
				var iconStyle:PictureMarkerStyle = null;
				var resInfo:ResourceInfo = null;
				
				if(selectedFeature == null)
				{
					selectedFeature = feature;
				}
				else
				{
					//取消高亮
					var selectedData:Object = selectedFeature.attributes;
					if(selectedData != null && selectedData["RESULT_INDEX"] != null)
					{
						iconKey = "QueryIcon" + selectedData["RESULT_INDEX"];
						resInfo = ResourceManagerEx.FindResource(iconKey);
						if(resInfo != null)
						{
							iconStyle = new PictureMarkerStyle(resInfo.cls);
							iconStyle.yOffset = ConstVO.PICTURE_FEATURE_YOFFSET;
							selectedFeature.style = iconStyle;
						}
					}
				}
				
				//高亮显示选中要素，并显示详情
				var featureData:Object = feature.attributes;
				if(featureData != null && featureData["RESULT_INDEX"] != null)
				{
					iconKey = "HighQueryIcon" + featureData["RESULT_INDEX"];
					resInfo = ResourceManagerEx.FindResource(iconKey);
					if(resInfo != null)
					{
						iconStyle = new PictureMarkerStyle(resInfo.cls);
						iconStyle.yOffset = ConstVO.PICTURE_FEATURE_YOFFSET;
						feature.style = iconStyle;
						feature.featuresLayer.moveToTop(feature);
					}
				}
				selectedFeature = feature;
				//清除关联对象
				clearBaseDataLinkObject();
			}
		}
		
		//获取当前选中要素
		private function getFeatureById(featureId:String,layerName:String):Feature
		{
			var feature:Feature;
			var map:MapCtrl = modelLocator.mapCtrl;
			var featureLayer:FeaturesLayerEx = map.getLayer(layerName) as FeaturesLayerEx; 
			if(featureLayer)
			{
				feature = featureLayer.getFeatureByID(featureId);
			}
			return feature;
		}
		
		//清除关联对象
		private function clearBaseDataLinkObject():void
		{
			/*var baseDataEvent0:BaseDataEvent = new BaseDataEvent(BaseDataEvent.BASEDATA_LINK_OBJECT_CONTROL);
			var baseDataLinkObjectData:BaseDataLinkObjectVO = new BaseDataLinkObjectVO();
			baseDataLinkObjectData.layerName = ConstVO.BASEDATA_DETAIL_FEATURE_LAYER;
			baseDataEvent0.data = baseDataLinkObjectData;
			baseDataEvent0.dispatch();*/
		}
		
		//有空间坐标信息关闭回调函数
		private function elementHideInfoWidow():void
		{
			var map:MapCtrl = modelLocator.mapCtrl;
			map.infoWindow.hide();
		}
	}
}