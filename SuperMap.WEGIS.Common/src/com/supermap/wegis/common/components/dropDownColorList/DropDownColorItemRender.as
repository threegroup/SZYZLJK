package com.supermap.wegis.common.components.dropDownColorList
{
	import com.supermap.wegis.common.utils.ColorGradient;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	
	import spark.components.supportClasses.ItemRenderer;
	
	public class DropDownColorItemRender extends ItemRenderer
	{
		private var colors:ArrayCollection;
		private var steps:int = 20;
		public function DropDownColorItemRender()
		{
			super();
			autoDrawBackground = false;
			addEventListener(FlexEvent.DATA_CHANGE,itemrenderer_dataChangeHandler);
		}
		protected function itemrenderer_dataChangeHandler(event:FlexEvent):void
		{
			colors = ColorGradient.generateTransitionalColor(data[0],data[1],steps);
		}
		override protected function measure():void{
			super.measure();
			measuredHeight = 20;
		}
		override  protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			graphics.clear();
			var len:int =(unscaledWidth +4) /steps;
			for(var i:int = 0;i < colors.length;i++)
			{
				graphics.beginFill(colors[i]);
				graphics.drawRect(i*len,0,len,unscaledHeight);
			}
			graphics.endFill();
		}
	}
}