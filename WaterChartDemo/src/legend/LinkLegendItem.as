package legend
{
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	import mx.charts.LegendItem;
	import mx.containers.Canvas;
	
	public class LinkLegendItem extends LegendItem
	{
		private var bgElement:Canvas;
		private var _highlight:Boolean;
		public function LinkLegendItem()
		{
			super();
			
			//这两行设置鼠标样式为手形
			this.buttonMode = true;
			this.mouseChildren = false;
			
			addEventListener(MouseEvent.MOUSE_OVER, handleEvent);
			addEventListener(MouseEvent.MOUSE_OUT, handleEvent);
		}
		
		override protected function createChildren():void {
			super.createChildren();
			
			bgElement = new Canvas();
			bgElement.setStyle("backgroundColor", 0xD6D6FF);
			addChildAt(bgElement,0);
		}
		
		private function handleEvent(event:MouseEvent):void{
			if(event.type == MouseEvent.MOUSE_OVER)
				highlight = true;
			else if(event.type == MouseEvent.MOUSE_OUT)
				highlight = false;
		}
		
		
		public function set highlight(value:Boolean):void{
			_highlight = value;
			invalidateDisplayList()
		}
		
		protected override function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
//			graphics.clear();
//			graphics.beginFill(0,0);
//			graphics.drawRect(0,0,unscaledWidth,unscaledHeight);
//			graphics.endFill();       
			
//			name = label==null?"":label; 
			bgElement.setActualSize(unscaledWidth, unscaledHeight);
			if(_highlight)
				bgElement.visible = true;
			else
				bgElement.visible = false;
			 			
		}
	}
}