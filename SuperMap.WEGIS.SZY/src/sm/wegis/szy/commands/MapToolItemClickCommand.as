package sm.wegis.szy.commands
{	
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.supermap.web.actions.Pan;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.core.styles.PredefinedFillStyle;
	import com.supermap.web.core.styles.PredefinedLineStyle;
	import com.supermap.wegis.common.action.MeasureAreaAction;
	import com.supermap.wegis.common.action.MeasureDistanceAction;
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import com.supermap.wegis.common.components.panel.contentPanel.ContentPanel;
	import com.supermap.wegis.common.components.toolBar.ToolItem;
	import com.supermap.wegis.common.core.convert.CalculateClass;
	import com.supermap.wegis.common.core.popupmanager.PopUpManagerEx;
	import com.supermap.wegis.common.utils.CursorUtil;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	import flash.net.FileReference;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.graphics.ImageSnapshot;
	import mx.graphics.codec.IImageEncoder;
	import mx.graphics.codec.JPEGEncoder;
	import mx.graphics.codec.PNGEncoder;
	import mx.printing.FlexPrintJob;
	import mx.printing.FlexPrintJobScaleType;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.events.SystemEvent;
	
	import spark.components.Button;
	import spark.components.HGroup;
	import spark.components.Image;
	import spark.components.VGroup;

	public class MapToolItemClickCommand extends CommandBase
	{
		
		public function MapToolItemClickCommand()
		{
			super();
		}
		
		override public function execute(event:CairngormEvent):void
		{
			super.execute(event);
			if(event.data != null)
			{
				var map:MapCtrl = null;
				if(modelLocator.mapCtrl != null)
					map = modelLocator.mapCtrl;
				CursorUtil.detachCursor(map);
				map.action = new Pan(map);
				
				var toolItem:ToolItem = event.data as ToolItem;
				if(toolItem != null)
				{
					switch(toolItem.key)
					{
						case "Pan":
						{
							map.action = new Pan(map);
							break;
						}
						case "FullExtent":
						{
							map.viewEntire();
							break;
						}
						case "Distance":
						{
//							var measureDistanceAction:MeasureDistanceAction = new MeasureDistanceAction(map,modelLocator.mapInfo.measureUrl);
//							map.action = measureDistanceAction;
							break;
						}
						case "Area":
						{
//							var measureAreaAction:MeasureAreaAction = new MeasureAreaAction(map,modelLocator.mapInfo.measureUrl);
//							measureAreaAction.style = new PredefinedFillStyle(PredefinedFillStyle.SYMBOL_SLASH,0xABBEF2,1,new PredefinedLineStyle("soild",0xFE8035,0.9,0.8));
//							map.action = measureAreaAction;
							break;
						}
						case "Clear":
						{
							var clearEvent:SystemEvent = new SystemEvent(SystemEvent.CLEAR_SYSTEM);
							clearEvent.dispatch();
							break;
						}
						case "Full":
						{
//							var label:String = toolItem.label;
//							
//							if(label == "全屏")
//							{
//								//派发全屏事件
//								var fullScreenEvent:SystemEvent = new SystemEvent(SystemEvent.SYSTEM_FULLSCREEN);
//								fullScreenEvent.dispatch();
//								
//								modelLocator.systemInfo.isFullScreen = true;
//							}
//							else
//							{
//								//派发退出全屏事�
//								var exitFullScreenEvent:SystemEvent = new SystemEvent(SystemEvent.EXIT_SYSTEM_FULLSCREEN);
//								exitFullScreenEvent.dispatch();
//								
//								modelLocator.systemInfo.isFullScreen = false;
//							}
//							
//							//同步全屏按钮状�
//							var updateFullScreenEvent:SystemEvent = new SystemEvent(SystemEvent.UPDATE_FULLSCREEN_STATUS);
//							updateFullScreenEvent.dispatch();
							break;
						}
						default:
						{
							break;
						}
					}
				}
			}
		}
	}
}