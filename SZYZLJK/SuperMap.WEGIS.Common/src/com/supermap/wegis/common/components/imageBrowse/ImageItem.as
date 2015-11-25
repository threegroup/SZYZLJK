package com.supermap.wegis.common.components.imageBrowse
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.system.SecurityDomain;
	
	import mx.controls.ToolTip;
	
	import spark.components.Image;
	import spark.components.Label;
	
	public class ImageItem extends Image
	{
		private var _url:String;
		
		private var _label:Label;
		
		public var loaderurl:Loader;
		
		public var _removedOK:Boolean=true;
		
		//是否在推出视线时执行清除功能
		public function get removedOK():Boolean
		{
			return _removedOK;
		}
		
		public function set removedOK(value:Boolean):void
		{
			_removedOK = value;
		}
		
		/*显示的提示信息*/
		private var _title:String;
		public function get title():String
		{
			return _title;
		}
		
		public function set title(value:String):void
		{
			_title = value;
			toolTip = title;
		}
		
		public function ImageItem()
		{
			super();
			this.addEventListener(Event.DEACTIVATE,removeds);
		}
		
		private function showTitle():void
		{
			toolTip = title;
		}
		protected function removeds(event:Event):void
		{
			if(loaderurl != null && removedOK)
			{
				loaderurl.unload();
				loaderurl.contentLoaderInfo.removeEventListener(Event.COMPLETE, loaderCompleteHandlerByURL); 
				loaderurl.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, loaderProgress);
				loaderurl.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, loaderError);
				loaderurl = null;
				this.source=null;
			}
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			_label = new Label();
			_label.setStyle("textAlign","center");
			_label.setStyle("verticalAlign","middle");
			_label.setStyle("color","#595555");
			_label.setStyle("fontSize","14");
			
			//addChild(_label);
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			_label.setActualSize(100, 30);
			
			var lx:Number = (unscaledWidth - 100)/2;
			var ly:Number = (unscaledHeight - 30)/2;
			_label.move(lx,ly);
		}
		
		private var _imageInfo:Object;
		
		/**图片连接地址*/
		public function get url():String
		{
			return _url;
		}
		
		public function set url(value:String):void
		{
			_url = value;
			loaderurl = new Loader(); 
			loaderurl.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderCompleteHandlerByURL); 
			loaderurl.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loaderProgress);
			loaderurl.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loaderError);
			var content:LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain, SecurityDomain.currentDomain);
			loaderurl.load(new URLRequest(encodeURI(_url)), content); 
		}
		
		private function loaderCompleteHandlerByURL(event:Event):void 
		{ 
			var loader:Loader = (event.target as LoaderInfo).loader; 
			var bmp:Bitmap = Bitmap(loader.content); 
			this.source = bmp;
			
			//this.removeChild(_label);
		} 
		
		private function loaderProgress(e:ProgressEvent):void
		{
			var total:Number = e.bytesTotal;
			var current:Number = e.bytesLoaded;
			
			var progress:String = parseInt(((current/total) * 100).toString()) + "%";
			
			this._label.text = progress;
		}
		
		private function loaderError(e:IOErrorEvent):void
		{
			this._label.text = "图片加载失败!";
			return;
		}
		
		/**图片资源信息*/
		public function get imageInfo():Object
		{
			return _imageInfo;
		}
		
		/**图片资源信息*/
		public function set imageInfo(value:Object):void
		{
			_imageInfo = value;
		}
	}
}