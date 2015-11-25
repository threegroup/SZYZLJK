package com.supermap.wegis.common.components.zoomPanel
{
	import com.supermap.wegis.common.skins.ZoomContainerSkin;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	
	import spark.components.Image;
	import spark.components.SkinnableContainer;
	import spark.effects.Resize;
	
	public class ZoomContainer extends SkinnableContainer
	{
		[SkinPart(required="false")]
		public var topLeftImage:Image;
		
		[Embed(source="../../images/up.png")]
		public var topLeftSourceClass:Class;
		
		public static const OPEN:String = "open";
		public static const MINIMIZED:String = "minimized";
		
		private var _containerWidth:int;
		
		private var _containerHeight:int;
		
		private var _containerState:String = MINIMIZED;
		private var _iconSource:Object;
		private var resize:Resize;
		public function ZoomContainer()
		{
			super();
			resize = new Resize(this);
			this.addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler);
		}
		
		private function creationCompleteHandler(event:Event):void
		{
			if(isNaN(containerWidth)) 
			{
				containerWidth = width;
			}
			if(isNaN(containerHeight))
			{
				containerHeight = height;	
			}
		}
		/**左上角图片资源*/
		[Bindable]
		public function get iconSource():Object
		{
			if(_iconSource == null) {
				_iconSource = topLeftSourceClass;
			}
			return _iconSource;
		}

		/**
		 * @private
		 */
		public function set iconSource(value:Object):void
		{
			_iconSource = value;
		}

		/**设置容器默认高度*/
		[Bindable]
		public function get containerHeight():int
		{
			return _containerHeight;
		}

		/**
		 * @private
		 */
		public function set containerHeight(value:int):void
		{
			_containerHeight = value;
		}

		/**设置容器默认宽度*/
		[Bindable]
		public function get containerWidth():int
		{
			return _containerWidth;
		}

		/**
		 * @private
		 */
		public function set containerWidth(value:int):void
		{
			_containerWidth = value;
		}

		/**容器状态*/
		public function get containerState():String
		{
			return _containerState;
		}

		/**
		 * @private
		 */
		public function set containerState(value:String):void
		{
			_containerState = value;
			invalidateSkinState();
		}
		
		protected function topLeftImageClick(event:MouseEvent):void
		{
			resize.stop();
			if(containerState == OPEN)
			{
				resize.widthTo = topLeftImage.width;
				resize.heightTo = topLeftImage.height;
				containerState = MINIMIZED;
			}else{
				containerState = OPEN;
				resize.widthTo = containerWidth;
				resize.heightTo = containerHeight;
			}
			resize.play();
		}

		override protected  function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName,instance);
			if(instance == topLeftImage) 
			{
				topLeftImage.addEventListener(MouseEvent.CLICK,topLeftImageClick);
			}
		}
		
		override protected function attachSkin():void
		{
			if (skin == null)
			{
				setStyle("skinClass",ZoomContainerSkin);
			}
			super.attachSkin();
		}
		
		override protected function getCurrentSkinState():String
		{
			return containerState;
		}
		
		
	}
}