package com.supermap.wegis.common.core.popupmanager
{
	import com.supermap.wegis.common.components.panel.contentPanel.ContentPanel;
	
	import flash.display.DisplayObject;
	import flash.events.Event;
	
	import mx.core.FlexGlobals;
	import mx.core.IFlexDisplayObject;
	import mx.core.IFlexModuleFactory;
	import mx.core.IVisualElementContainer;
	import mx.managers.PopUpManager;
	
	import spark.components.BorderContainer;
	
	public class PopUpManagerEx extends PopUpManager
	{
		private static var maskObject:BorderContainer ;
		public function PopUpManagerEx()
		{
			super();
		}
		
		public static function addPopUpEx(window:IFlexDisplayObject,
										parent:DisplayObject,
										modal:Boolean = false,
										childList:String = null,
										moduleFactory:IFlexModuleFactory = null):void
		{
			if(!(window is ContentPanel))
			{
				throw new Error("非ContentPanel，请采用静态方法addPopUp！");
				return;
			}
			if(modal == true)
			{
				//初始化遮罩
				initMask();
				addPopUp(window,parent);
				centerPopUp(window);
				window.addEventListener(ContentPanel.WIDGET_CLOSED,closeHandler);
			}
			else
			{
				addPopUp(window, parent, modal, childList, moduleFactory);
			}
		
		}
		/**初始化mask*/
		private static function initMask():void
		{
			maskObject = new BorderContainer();
			maskObject.top = 0;
			maskObject.bottom = 0;
			maskObject.left = 0;
			maskObject.right = 0;
			maskObject.alpha = 0.3;
			maskObject.setStyle("backgroundColor", "#bbbbbb");
			FlexGlobals.topLevelApplication.addElement(maskObject);
		}
		
		public static  function closeHandler(event:Event):void
		{
			var contentPanel:ContentPanel = event.currentTarget as ContentPanel;
			contentPanel.removeEventListener(ContentPanel.WIDGET_CLOSED,closeHandler);
			if(contentPanel)
			{
				PopUpManager.removePopUp(contentPanel);
			}
			try
			{
				if(maskObject)
				{
					(FlexGlobals.topLevelApplication as IVisualElementContainer) .removeElement(maskObject);	
					maskObject = null;
				}
			}
			catch(error:Error)
			{
				trace(error.getStackTrace());
			}
		}
		
	}
}