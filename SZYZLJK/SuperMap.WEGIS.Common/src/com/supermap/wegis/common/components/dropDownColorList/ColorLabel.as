package com.supermap.wegis.common.components.dropDownColorList
{
	
	import com.supermap.wegis.common.utils.ColorGradient;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Label;
	
	public class ColorLabel extends Label 
	{
		public function ColorLabel()
		{
			super();
		}
		private var data:String ="";
		private var steps:int = 20;
		override public function set text(value:String):void
		{
			if(this.data != value)
			{
				this.data = value;
				invalidateDisplayList();
			}
		
		}
		override public function get text():String
		{
			return this.data;
		}
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
//			this.data = text;
//			text ="";
//			super.updateDisplayList(unscaledWidth,unscaledHeight);
			if(!isNaN(unscaledWidth)&& !isNaN(unscaledHeight) && unscaledWidth>0 && unscaledHeight>0)
			{
				if(data != "")
				{
					var value:Array = data.split(",");
					var  colors:ArrayCollection = ColorGradient.generateTransitionalColor(uint(value[0]),uint(value[1]),steps);
					graphics.clear();
					var len:Number = (unscaledWidth-1)/steps;
					for(var i:int = 0;i < colors.length;i++)
					{
						graphics.beginFill(colors[i]);
						//graphics.drawRect(i*len+this.getStyle("left"),this.getStyle("top"),len,unscaledHeight- this.getStyle("bottom")- this.getStyle("top")-1);
						graphics.drawRect(i*len,0,len,unscaledHeight);
					}
					graphics.endFill();
				}
			}
		}
	}
}