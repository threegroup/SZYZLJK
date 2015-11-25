package com.supermap.wegis.common.core.popupmanager
{
	/**
	 * @author bimiaoliang
	 * @version 1.0.0
	 * 创建时间：2013-6-27 上午10:59:48
	 */
	import flash.display.DisplayObject;
	
	import mx.core.IFlexDisplayObject;
	import mx.events.TweenEvent;
	import mx.managers.PopUpManager;
	
	import spark.effects.Fade;
	
	public class PopUpEffect
	{
		
		public function PopUpEffect()
		{
		}
		
		public static function Show(control:IFlexDisplayObject,parent:DisplayObject,modal:Boolean=true):void
		{
			var mShowEffect:Fade=new Fade();
			mShowEffect.alphaFrom = 0;
			mShowEffect.alphaTo = 1;
			mShowEffect.target= control;
			mShowEffect.duration=1000;
			PopUpManager.addPopUp(control,parent,modal);
			PopUpManager.centerPopUp(control);
			//control.y = 100;
			mShowEffect.play();
		}
		public static function Hide(control:IFlexDisplayObject):void
		{
			
			var mHideEffect:Fade=new Fade();
			mHideEffect.alphaFrom = 1;
			mHideEffect.alphaTo = 0;
			mHideEffect.duration = 200;
			mHideEffect.target = control;
			
			mHideEffect.addEventListener(TweenEvent.TWEEN_END,function():void{
				PopUpManager.removePopUp(control);
			});
			
			mHideEffect.play();
		}
	}
}