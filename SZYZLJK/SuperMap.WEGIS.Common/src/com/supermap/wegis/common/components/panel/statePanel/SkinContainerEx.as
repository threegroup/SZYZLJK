package com.supermap.wegis.common.components.panel.statePanel
{
	import spark.components.SkinnableContainer;
	[SkinState("loading")]
	[SkinState("nodata")]
	public class SkinContainerEx extends SkinnableContainer
	{
		public static const NORMAL:String = "normal";
		public static const LOADING:String = "loading";
		public static const NODATA:String = "nodata";
		
		private var _state:String = "normal";
		
		public function SkinContainerEx()
		{
			super();
			this.setStyle("skinClass", SkinContainerExSkin);
		}
		
		public function get state():String
		{
			return _state;
		}
		
		public function set state(value:String):void
		{
			_state = value;
			invalidateSkinState();
		}
		override protected function getCurrentSkinState():String
		{
			return _state;
		}
	}
}