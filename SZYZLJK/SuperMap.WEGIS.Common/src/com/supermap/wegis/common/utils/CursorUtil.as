package   com.supermap.wegis.common.utils
{
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	import flash.display.Sprite;
	import flash.events.*;
	import flash.ui.Mouse;
	import flash.utils.Dictionary;
	
	public class CursorUtil
	{
		[Embed(source="../images/pointer.png")]
		public static var POINTER_ICON:Class;
		private static var pointerCursor:Bitmap = new POINTER_ICON() as Bitmap;
		
		private static var targets:Dictionary = new Dictionary(true);
		private static var cursors:Dictionary = new Dictionary(true);
		private static var stages:Dictionary = new Dictionary(true);
		private static var offsetXs:Dictionary = new Dictionary(true);
		private static var offsetYs:Dictionary = new Dictionary(true);
		private static var listeners:Dictionary = new Dictionary(true);
		
		private static var currentCursor:DisplayObject;
		private static var currentTarget:InteractiveObject;
		
		public static function attachPointerCursor(target:InteractiveObject):void
		{
			pointerCursor.width = 20;
			pointerCursor.height = 20;
			attachCursor(target,pointerCursor,-5,0);
		}
		
		public static function attachCursor(target:InteractiveObject,cursor:DisplayObject,offsetX:int=0,offsetY:int=0):void
		{
			if(target == null) return;
			
			if(cursor==null) {
			     detachCursor(target);
			     return;
			}
			targets[target] = true;
			cursors[target] = cursor;
			offsetXs[target] = offsetX;
			offsetYs[target] = offsetY;
			
			if(cursor != null ){
				cursor.cacheAsBitmap = true;
				if(cursor is InteractiveObject){
	                InteractiveObject(cursor).mouseEnabled = false;
	                InteractiveObject(cursor).doubleClickEnabled = false;
                }
            }
            
            initTarget(target);
            
            if(target.stage == null){
            	target.addEventListener(Event.ADDED_TO_STAGE,onAddToStage);
            }else{
            	initStage(target);
            }
		}
		
		public static function initTarget(target:InteractiveObject):void
		{
			if(listeners[target]) return;
			
            target.addEventListener(MouseEvent.MOUSE_OVER,changeCursor);
            target.addEventListener(MouseEvent.MOUSE_MOVE,moveCursor);
            target.addEventListener(MouseEvent.MOUSE_OUT,resetSystemCursor);
            listeners[target] = true;
		}
		
		public static function onAddToStage(event:Event=null):void
		{
			initStage(InteractiveObject(event.currentTarget));
		}
		
		public static function initStage(target:InteractiveObject):void
		{
			if(stages[target.stage]==null){
                target.stage.addEventListener(MouseEvent.MOUSE_DOWN,changeCursor);
                target.stage.addEventListener(MouseEvent.MOUSE_UP,changeCursor);
                target.stage.addEventListener(MouseEvent.CLICK,changeCursor);
                stages[target.stage] = true;
            }
		}
		
		public static function changeCursor(event:MouseEvent=null):void
		{
			var target:InteractiveObject;
					
//		    if(event.type != MouseEvent.MOUSE_OVER)
//		    {
		    	target = event.target as InteractiveObject;
				while(target && targets[target] == null && target != target.stage){
					if(target is Sprite && Sprite(target).buttonMode == true)
					{
						resetSystemCursor();
                        return;
					}
					target = target.parent;
				}
				
				if(targets[target] == null){
					resetSystemCursor();
	                return;
				}
//		    }else{
//		    	target = event.currentTarget as InteractiveObject;
//		    }
			
			var cursor:DisplayObject = cursors[target];
			
			if(cursor == null) {
				resetSystemCursor();
			    return;
			}

			if(cursor!=currentCursor){
			    resetSystemCursor();
			    cursor.visible = true;
			    target.stage.addChild(cursor);
			    currentCursor = cursor;
			    Mouse.hide();
			}
			currentCursor.x = event.stageX + offsetXs[target];
            currentCursor.y = event.stageY + offsetYs[target];
            currentTarget = target;
			//event.stopPropagation();
		}
		
		public static function moveCursor(event:MouseEvent=null):void
		{
			if(currentCursor!=null){
                currentCursor.x = event.stageX + offsetXs[currentTarget];
                currentCursor.y = event.stageY + offsetYs[currentTarget];
            }
		}
		
		public static function resetSystemCursor(event:MouseEvent=null):void
		{
			if(currentCursor!=null){
				currentCursor.visible = false;
				currentCursor.stage.removeChild(currentCursor);
			}
			currentCursor = null;
			Mouse.show();
		}
		
		public static function detachCursor(target:InteractiveObject):void
		{
			if(target == currentTarget){
                resetSystemCursor();
            }
			delete targets[target];
            delete cursors[target];
            delete offsetXs[target];
            delete offsetYs[target];
            if(listeners[target]){
	            target.removeEventListener(MouseEvent.MOUSE_OVER,changeCursor);
	            target.removeEventListener(MouseEvent.MOUSE_MOVE,moveCursor);
	            target.removeEventListener(MouseEvent.MOUSE_OUT,resetSystemCursor);
            }
            delete listeners[target];
            
		}

	}
}