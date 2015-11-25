package com.supermap.wegis.common.core.widget
{
	import com.supermap.wegis.common.components.events.BaseWidgetEvent;
	
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;
	import mx.core.IFlexModuleFactory;
	import mx.core.IVisualElementContainer;
	import mx.events.FlexEvent;
	import mx.styles.CSSStyleDeclaration;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	import spark.modules.Module;
	/**每次切换，都会派发*/
	[Event(name='WidgetRemove',type='com.supermap.wegis.common.components.events.BaseWidgetEvent')]
	/**每次切换，都会派发*/
	[Event(name='WidgetAddComplete',type='com.supermap.wegis.common.components.events.BaseWidgetEvent')]
	[Bindable]
	public class WidgetBase extends Module 
	{
		private var _widgetTitle:String;
		
		private var _widgetId:String;
		
		private var _config:Object;
		
		private var _widgetContainer:IVisualElementContainer;
		
		private var _isVisable:Boolean;
		
		public function WidgetBase()
		{
			super();
//			this.addEventListener(FlexEvent.PREINITIALIZE, preInitWidget);
		}

		/**设置子对象是否可见*/
		public function get isVisable():Boolean
		{
			return _isVisable;
		}

		/**
		 * @private
		 */
		public function set isVisable(value:Boolean):void
		{
			_isVisable = value;
		}

		/**模块样式*/
		private function preInitWidget(event:FlexEvent):void
		{
			var styleObjects:Array = FlexGlobals.topLevelApplication.styleManager.selectors;
			for each(var styleObj:String in styleObjects)
			{
				//"charts","Axis","GridLines"
				var style:CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration(styleObj);
				styleManager.setStyleDeclaration(styleObj, style, false);
			}
		}
		
		/**模块容器*/
		public function get widgetContainer():IVisualElementContainer
		{
			return _widgetContainer;
		}

		/**模块容器*/
		public function set widgetContainer(value:IVisualElementContainer):void
		{
			_widgetContainer = value;
		}
		
		/**模块ID*/
		public function get widgetId():String
		{
			return _widgetId;
		}

		/**模块ID*/
		public function set widgetId(value:String):void
		{
			_widgetId = value;
		}

		/**模块标题*/
		public function get widgetTitle():String
		{
			return _widgetTitle;
		}

		/**模块标题*/
		public function set widgetTitle(value:String):void
		{
			_widgetTitle = value;
		}
		
		public function setRelativePosition(left:String, right:String, top:String, bottom:String):void
		{
			if (left)
			{
				this.left = Number(left);
			}
			if (right)
			{
				this.right = Number(right);
			}
			if (top)
			{
				 this.top  = Number(top);
			}
			if (bottom)
			{
				this.bottom = Number(bottom);
			}
		}
		
		public function setWidthHeight(width:Number,height:Number):void
		{
			if(width)
			{
				this.width = width;
			}
			if(height)
			{
				this.height = height;
			}
		}
		
		public function setXYPosition(x:Number, y:Number):void
		{
			this.setLayoutBoundsPosition(x, y);
		}

		
		/**排序,默认升序*/
		public function FieldSort(arrcol:ArrayCollection=null, 
								  field:String=null,
								  isnum:Boolean = false,
								  descending:Boolean= false):ArrayCollection
		{ 
			if(arrcol == null)
				return null;
			if(field == null)
				return null;
			var sort:Sort = new Sort(); 
			sort.fields = [new SortField(field, descending, isnum)]; 
			arrcol.sort = sort; 
			arrcol.refresh(); 
			return arrcol;
		}

		/**模块配置文件数据*/
		public function get config():Object
		{
			return _config;
		}

		/**
		 * @private
		 */
		public function set config(value:Object):void
		{
			_config = value;
		}
		
		override public function get moduleFactory():IFlexModuleFactory
		{
			return FlexGlobals.topLevelApplication.moduleFactory;
			
		}

	}
}