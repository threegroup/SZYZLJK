package com.supermap.wegis.common.components.windowShade
{
	import mx.core.IVisualElement;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.VGroup;
	import spark.layouts.HorizontalLayout;
	import spark.layouts.VerticalLayout;
	
	public class WindowShadeManager extends Group
	{
		private var _isVertical:Boolean = true;
		
		/**是否垂直排列面板，true：垂直，false：水平。*/
		[Inspectable(category="样式", defaultValue="false", arrayType="Boolean")]
		public function get isVertical():Boolean
		{
			return _isVertical;
		}
		
		public function set isVertical(value:Boolean):void
		{
			_isVertical = value;
			if(value)
			{
				var verticalLayout:VerticalLayout = new VerticalLayout();
				verticalLayout.gap = 0;
				verticalLayout.horizontalAlign = "center";
				verticalLayout.verticalAlign = "top";
				this.layout = verticalLayout;
			}else
			{
				var horizontalLayout:HorizontalLayout = new HorizontalLayout();
				horizontalLayout.gap = 0;
				horizontalLayout.horizontalAlign = "left";
				horizontalLayout.verticalAlign = "middle";
				this.layout = horizontalLayout;
			}
			
		}
		
		public function WindowShadeManager()
		{
			super();
		}
		
		/**增加WindowShade项目*/
		public function addWindowShade(windowShade:WindowShade=null):void
		{
			if(windowShade == null)
				return;
			this.addElement(windowShade);
		}
		override public function addElement(element:IVisualElement):IVisualElement
		{
			if(element == null && !(element is WindowShade))
				return null;
			return super.addElement(element);
		}
		/**缺少其他几个方法重写*/
		 
	}
}