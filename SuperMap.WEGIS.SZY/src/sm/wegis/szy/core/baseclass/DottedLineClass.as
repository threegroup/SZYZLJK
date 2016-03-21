package sm.wegis.szy.core.baseclass
{
	import flash.display.Graphics;
	import flash.display.Shape;
	
	import mx.core.UIComponent;
	
	public class DottedLineClass extends UIComponent
	{
		public function DottedLineClass()
		{
			super();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			drawBrokenLine(0, unscaledHeight, unscaledWidth, unscaledHeight, 1, 2);
		}
		
		/**  
		 * 画线  
		 * @param g  
		 * @param fromX  
		 * @param fromY  
		 * @param toX  
		 * @param toY  
		 * @param solidLen      实线长度  
		 * @param brokenLen     虚线间隔  
		 */   
		public function drawBrokenLine(fromX:Number,fromY:Number,toX:Number,toY:Number,solidLen:Number=5,brokenLen:Number=0):void   
		{   
			var child:Shape = new Shape();
			var g:Graphics = child.graphics;
			g.clear();
			g.lineStyle(1,0x646464);
			
			//如果间隔为0,直接画实线    
			if(brokenLen == 0 || solidLen == 0)   
			{   
				g.moveTo(fromX,fromY);   
				g.lineTo(toX,toY);   
				return;   
			}   
			
			//如果间隔不为0,画虚线    
			var xOffset:Number = toX - fromX;   
			var yOffset:Number = toY - fromY ;   
			
			//正切角度值    
			var atan:Number = Math.atan2(yOffset,xOffset);   
			
			//线的总长度    
			var totalLen:Number =Math.sqrt(Math.pow(xOffset,2)+Math.pow(yOffset,2));   
			
			//已经画线长度    
			var len:Number = 0; 
			
			//当前循环是否画实线    
			var isDrawSolid:Boolean = true;   
			var tempFX:Number = fromX;   
			var tempFY:Number = fromY;   
			while(totalLen>len)   
			{   
				len = isDrawSolid ? len + solidLen : len + brokenLen;  
				
				//利用三角函数,计算该段终点坐标    
				var tempTX:Number = Math.cos(atan)*len + fromX;   
				var tempTY:Number = Math.sin(atan)*len + fromY;   
				if(isDrawSolid)   
				{   
					g.moveTo(tempFX,tempFY);   
					g.lineTo(tempTX,tempTY);   
				}   
				isDrawSolid = !isDrawSolid;   
				tempFX = tempTX ;   
				tempFY = tempTY ;   
			}
			
			g.endFill();
			addChild(child);
		}
	}
}