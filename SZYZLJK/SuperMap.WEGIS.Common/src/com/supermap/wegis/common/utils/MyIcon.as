package    com.supermap.wegis.common.utils
{
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.system.SecurityDomain;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	
	import mx.core.UIComponent;
	import mx.skins.ProgrammaticSkin;
	import mx.utils.NameUtil;
	import mx.utils.StringUtil;
	
	public class MyIcon extends ProgrammaticSkin
	{
		
		public static var showWaitIcon:Boolean = true;
		
		private static var timer:Timer = null;
		
		private static var bitmapDataIdList:Array = [];
		
		private static var bitmapDatas:Dictionary = new Dictionary();
		
		public static function getIconClass(target:UIComponent, url:String, 
											imageWidth:Number, imageHeight:Number):Class
		{
			url = StringUtil.trim(url);
			imageWidth = (isNaN(imageWidth) ? 16 : imageWidth);
			imageHeight = (isNaN(imageHeight) ? 16 : imageHeight);
			var targetId:String = NameUtil.displayObjectToString(target);
			var bitmapDataId:String = url + "(" + imageWidth + "*" + imageHeight + ")";
			bitmapDataIdList.push({targetId: targetId, bitmapDataId: bitmapDataId});
			if (!bitmapDatas[bitmapDataId])
				bitmapDatas[bitmapDataId] = {url: url, imageWidth: imageWidth, 
					imageHeight: imageHeight, bitmapData: null};
			return MyIcon;
		}
		
		public function MyIcon()
		{
			super();
			if (!timer)
			{
				timer = new Timer(200);
				timer.start();
			}
			timer.addEventListener(TimerEvent.TIMER, timerHandler);
			addEventListener(Event.ADDED, addedHandler);
			addEventListener(Event.REMOVED, removedHandler);
		}
		
		private var url:String = null;
		
		private var imageWidth:Number = 16;
		
		private var imageHeight:Number = 16;
		
		private var bitmapDataId:String = null;
		
		private var bitmapData:BitmapData = null;
		
		override public function get measuredWidth():Number
		{
			return imageWidth;
		}
		
		override public function get measuredHeight():Number
		{
			return imageHeight;
		}
		
		private var loader:Loader = null; 
		private function requestImage():void
		{
			if(loader == null)
				loader = new Loader();
			var loaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain, SecurityDomain.currentDomain);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			var request:URLRequest = new URLRequest(encodeURI(url));
			loader.load(request,loaderContext);
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			graphics.clear();
			if (isNaN(w) || isNaN(h))
				return;
			if (bitmapData)
			{
				graphics.beginBitmapFill(bitmapData, null, false, true);
				graphics.drawRect(0, 0, w, h);
				graphics.endFill();
				return;
			}
			if (!showWaitIcon)
				return;
			drawWaitIcon(graphics, timer.currentCount % 8);
		}
		
		private function drawWaitIcon(g:Graphics, state:int):void
		{
			var color:uint = 0xE7E7E7;
			var alpha:Number = 0.35;
			var colors:Array = [0x6C7577, 0xC5CED0, 0xB9C1C3, 0xADB5B7, 
				0x9FA8AA, 0x929B9D, 0x868F90, 0x798284];
			var alphas:Array = [0.7, 0.7, 0.7, 0.7, 0.7, 0.7, 0.7, 0.7];
			var newColors:Array = [0, 0, 0, 0, 0, 0, 0, 0];
			var newAlphas:Array = [0, 0, 0, 0, 0, 0, 0, 0];
			var positions:Array = [{x: 0, y: 6}, {x: 2, y: 2}, {x: 6, y: 0}, {x: 10, y: 2}, 
				{x: 12, y: 6}, {x: 10, y: 10}, {x: 6, y: 12}, {x: 2, y: 10}];
			var i:int = 0;
			var index:int = 0;
			var x:Number = 0;
			var y:Number = 0;
			for (i = 0; i < 8; i++)
			{
				index = i + state;
				index = (index >= 8 ? index - 8 : index);
				newColors[index] = colors[i];
				newAlphas[index] = alphas[i];
			}
			for (i = 0; i < 8; i++)
			{
				x = positions[i].x;
				y = positions[i].y;
				g.beginFill(color, alpha);
				g.drawRect(x, y, 4, 4);
				g.endFill();
				g.beginFill(newColors[i], newAlphas[i]);
				g.drawRect(x, y + 1, 4, 2);
				g.endFill();
				g.beginFill(newColors[i], newAlphas[i]);
				g.drawRect(x + 1, y, 2, 4);
				g.endFill();
			}
		}
		
		private function addedHandler(event:Event):void
		{
			var targetId:String = NameUtil.displayObjectToString(parent);
			var bitmapDataInfo:Object = null;
			var i:int = 0;
			for (i = bitmapDataIdList.length - 1; i >= 0; i--)
			{
				if (bitmapDataIdList[i].targetId == targetId || 
					bitmapDataIdList[i].targetId == null)
				{
					bitmapDataId = bitmapDataIdList[i].bitmapDataId
					bitmapDataInfo = bitmapDatas[bitmapDataId];
					bitmapDataIdList.splice(i, 1);
				}
			}
			if (bitmapDataInfo)
			{
				url = bitmapDataInfo.url;
				imageWidth = bitmapDataInfo.imageWidth;
				imageHeight = bitmapDataInfo.imageHeight;
				bitmapData = bitmapDataInfo.bitmapData;
				width = imageWidth;
				height = imageHeight;
				if (!bitmapData && url)
					requestImage();
			}
		}
		
		private function removedHandler(event:Event):void
		{
			if (timer)
				timer.removeEventListener(TimerEvent.TIMER, timerHandler);
		}
		
		private function timerHandler(event:TimerEvent):void
		{
			updateDisplayList(measuredWidth, measuredHeight);
		}
		
		private function completeHandler(event:Event):void
		{
			if(loader != null)
			{
				var loaderInfo:LoaderInfo = event.target as LoaderInfo;
				if (loaderInfo.content)
				{
					bitmapData = (loaderInfo.content as Bitmap).bitmapData;
					bitmapDatas[bitmapDataId].bitmapData = bitmapData;
					if (parent)
						(parent as UIComponent).validateNow();
					updateDisplayList(measuredWidth, measuredHeight);
				}
				
				loader.unload();
				loader = null;
			}
		}
		
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			if(loader != null)
			{
				loader.unload();
				loader = null;
			}
		}
	}
}




