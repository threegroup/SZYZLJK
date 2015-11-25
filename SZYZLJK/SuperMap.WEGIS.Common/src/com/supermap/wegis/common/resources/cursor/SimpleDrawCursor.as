package   com.supermap.wegis.common.resources.cursor
{
	import flash.display.Sprite;
	import flash.text.StyleSheet;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class SimpleDrawCursor extends Sprite
	{
		private var text:TextField;
		public function SimpleDrawCursor()
		{
			super();
			var style:StyleSheet = new StyleSheet();
			style.setStyle(".draw",{fontSize:11,color:"#333333"});
			text = new TextField();
			text.styleSheet = style;
			text.htmlText = "<span class='draw'>双击结束</span>";
			text.height = 14;
			text.x = 5;
			text.y = -20;
			text.background = true;
			text.backgroundColor = 0xf0fd00;
			text.border = true;
			text.borderColor = 0xff0000;
			text.height = 14;
			text.autoSize = TextFieldAutoSize.LEFT;
			
			text.mouseEnabled = false;
			
			addChild(text);
			graphics.clear();
			
			graphics.lineStyle(1,0xFFFFFF,1);
            
            graphics.moveTo(-10,0);
            graphics.lineTo(-3,0);
            
            graphics.moveTo(3,0);
            graphics.lineTo(10,0);
            
            graphics.moveTo(0,-10);
            graphics.lineTo(0,-3.5);
            
            graphics.moveTo(0,2.5);
            graphics.lineTo(0,10);
			
		}
		
	}
}