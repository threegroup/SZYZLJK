package com.supermap.wegis.common.components.imageEx
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	
	import spark.components.Image;
	
	public class ImageEx extends Image
	{
		private var _normalAndDownSource:Object;
		private var _overSource:Object;
		private var _layerInfo:Object;
		public function ImageEx()
		{
			super();
			this.buttonMode = true;
			this.addEventListener(FlexEvent.CREATION_COMPLETE,changeNormalAndDownSource)
			this.addEventListener(MouseEvent.ROLL_OVER,changeOverSource);
			this.addEventListener(MouseEvent.ROLL_OUT,changeNormalSource);
			this.addEventListener(MouseEvent.MOUSE_DOWN ,changeDownSource);
			this.addEventListener(MouseEvent.MOUSE_UP ,changeUpSource);
		}
		
		public function get layerInfo():Object
		{
			return _layerInfo;
		}

		public function set layerInfo(value:Object):void
		{
			_layerInfo = value;
		}

		/**鼠标按下状态*/
		private function changeDownSource(event:MouseEvent):void
		{
			this.source = normalAndDownSource;
		}
		
		private function changeUpSource(event:MouseEvent):void
		{
			this.source = overSource;
		}

		/**鼠标移上*/
		private function changeNormalSource(event:MouseEvent):void
		{
			this.source = normalAndDownSource;
		}

		/**
		 * @private
		 */
		public function set normalAndDownSource(value:Object):void
		{
			_normalAndDownSource = value;
		}

		/**正常状态图片*/
		public function get normalAndDownSource():Object
		{
			return _normalAndDownSource;
		}
		
		/**over,down状态图片*/
		public function get overSource():Object
		{
			return _overSource;
		}

		/**
		 * @private
		 */
		public function set overSource(value:Object):void
		{
			_overSource = value;
		}
		
		private function changeOverSource(event:Event):void
		{
			this.source = _overSource;
		}
		
		private function changeNormalAndDownSource(event:Event):void{
			this.source = _normalAndDownSource;
		}



	}
}