/*
 *功能：根据视图对象列表初始化系统
*/
package sm.wegis.szy.utils
{
	import sm.wegis.szy.events.SystemEvent;
	
	import mx.core.FlexGlobals;
	import mx.core.IVisualElement;
	import mx.events.FlexEvent;

	public class ApplicationViewAssembler
	{
		//视图对象列表
		public var elements:Array;
		private var creationCompleteElements:int = 0;
		
		public function init():void
		{
			if(elements != null)
			{
				var len:int = elements.length;
				var element:IVisualElement;
				for (var i:int = 0; i < len; i++) 
				{
					element = elements[i] as IVisualElement;
					element.addEventListener(FlexEvent.CREATION_COMPLETE,creationComplete);
					FlexGlobals.topLevelApplication.addElement(element);
				}
			}
		}
		
		private function creationComplete(event:FlexEvent):void
		{
			var element:IVisualElement = event.currentTarget as IVisualElement;
			element.removeEventListener(FlexEvent.CREATION_COMPLETE,creationComplete);
			creationCompleteElements++;
			if(creationCompleteElements == elements.length)
			{
				var systemEvent:SystemEvent = new SystemEvent(SystemEvent.SYSTEM_CREATION_COMPLETE);
				systemEvent.dispatch();
				creationCompleteElements = 0;
			}
		}
	}
}