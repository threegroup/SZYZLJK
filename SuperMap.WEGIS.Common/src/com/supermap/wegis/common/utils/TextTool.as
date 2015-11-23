package  com.supermap.wegis.common.utils
{
	import flash.text.AntiAliasType;
	import flash.text.GridFitType;
	import flash.text.TextLineMetrics;
	
	import flashx.textLayout.formats.Direction;
	
	import mx.core.UITextFormat;
	import mx.managers.ISystemManager;
	
	public class TextTool
	{
		public static function measurTextLength(text:String,systemManager:ISystemManager):Number
		{
			var uiTextFormat:UITextFormat = new UITextFormat(systemManager);
			uiTextFormat.antiAliasType = AntiAliasType.NORMAL;
			uiTextFormat.gridFitType =GridFitType.NONE;
			uiTextFormat.direction =Direction.LTR;
			var textLine:TextLineMetrics = uiTextFormat.measureText(text);
			return textLine.width;
		}
	}
}