package sm.wegis.szy.core.baseclass
{
	import mx.core.IVisualElement;
	
	import sm.wegis.szy.models.ApplicationModelLocator;
	
	import spark.components.BorderContainer;
	import spark.components.Group;
	
	[Bindable]
	public class ViewBase extends Group
	{
		private var _modelLocator:ApplicationModelLocator;

		/**系统模型定位器*/
		public function get modelLocator():ApplicationModelLocator
		{
			return _modelLocator;
		}
		
		public function set modelLocator(value:ApplicationModelLocator):void
		{
			_modelLocator = value;
		}
		
		public function ViewBase()
		{
			super();
		}
		
		/**添加组件*/
		public function addComponent(container:BorderContainer, component:IVisualElement):void
		{
			component.percentWidth = 100;
			component.percentHeight = 100;
			component.top = 0;
			component.bottom = 0;
			component.right = 0;
			component.left = 0;
			container.addElement(component);
		}
	}
}