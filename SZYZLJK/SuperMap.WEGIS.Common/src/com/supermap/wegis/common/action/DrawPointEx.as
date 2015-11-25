package com.supermap.wegis.common.action
{
	import com.supermap.web.actions.DrawPoint;
	import com.supermap.web.core.Point2D;
	import com.supermap.web.events.DrawEvent;
	import com.supermap.web.mapping.Map;
	import com.supermap.wegis.common.resources.cursor.SimpleDrawCursor;
	import com.supermap.wegis.common.utils.CursorIcon;
	import com.supermap.wegis.common.utils.CursorUtil;
	
	import flash.display.DisplayObject;
	import flash.geom.Point;
	
	public class DrawPointEx extends DrawPoint
	{
		public static var cursor:DisplayObject=new SimpleDrawCursor();
		private var areaPic:String = "com/supermap/wegis/common/images/cursors/i.png";
		public function DrawPointEx(map:Map)
		{
			super(map);
			CursorUtil.detachCursor(map);
			var cursor:CursorIcon = new CursorIcon(areaPic);
			CursorUtil.attachCursor(map, cursor); 
			addEventListener(DrawEvent.DRAW_END,removeCursor);
		}
		
		override protected function startDraw(startPoint:Point2D = null):void
		{
			super.startDraw(startPoint);
			CursorUtil.attachCursor(map, cursor); 
		}
		
		private function removeCursor(event:DrawEvent):void
		{
			removeEventListener(DrawEvent.DRAW_END,removeCursor);
			CursorUtil.detachCursor(map);
		}
		
		override protected function switchActionHandle():void
		{
			super.switchActionHandle();
			CursorUtil.detachCursor(map);
		}
	}
}