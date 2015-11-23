package com.supermap.wegis.common.utils
{
	import flash.display.Sprite;
	
	public class CursorIcon extends Sprite
	{
		public function CursorIcon(url:String=null)
		{
			super();
//			var loader:Loader = new Loader();
//			var request:URLRequest = new URLRequest(url);
//			loader.load(request);
//			loader.x = -10;
//			loader.y = -10;
//			addChild(loader);
			
			graphics.clear();
			
			graphics.lineStyle(2,0xFF0000,1);
			
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