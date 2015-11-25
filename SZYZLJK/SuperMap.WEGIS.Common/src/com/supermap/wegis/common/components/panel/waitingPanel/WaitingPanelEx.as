package com.supermap.wegis.common.components.panel.waitingPanel
{
	/**
	 * @author bimiaoliang
	 * @version 1.0.0
	 * 创建时间：2013-6-26 下午3:59:37
	 */
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.core.UIComponent;
	
	import spark.components.Label;
	import spark.components.SkinnableContainer;
	
	public class WaitingPanelEx extends SkinnableContainer
	{
		private var _text:String="";
		private var _info:String="";
		private var _time:Number=0;
		
		private var _handler:Function=null;
		private var infoLabel:Label;
		private var bgSprite:UIComponent;
		private var timer:Timer;
		
		private var _isInit:Boolean = false;
		
		/**
		 * 设置面板显示时间
		 */
		public function get time():Number
		{
			
			return _time;
		}
		
		public function set time(value:Number):void
		{
			_time = value;
			_info = _time + "秒后完成...";
			if(!timer)
			{
				timer = new Timer(1000);
				timer.addEventListener(TimerEvent.TIMER, timerHandler);
				timer.start();
			}
		}
		
		private function timerHandler(event:TimerEvent):void
		{
			if(_time > 0)
			{
				_info = _time + "秒后完成...";
				_time--;
				invalidateProperties();
			}
			else
			{
				timer.stop();
				timer.removeEventListener(TimerEvent.TIMER, timerHandler);
				timer = null;
				this.removeAllElements();
				
				if(handler != null)
				{
					handler();
				}
			}
		}
		
		/**
		 * 面板关闭之后的回调函数
		 */
		public function get handler():Function
		{
			return _handler;
		}
		
		public function set handler(value:Function):void
		{
			_handler = value;
		}
		
		/**
		 * 面板显示的动态信息
		 */
		public function get info():String
		{
			return _info;
		}
		
		public function set info(value:String):void
		{
			_info = value;
			invalidateProperties();
		}
		
		/**
		 * 面板显示的文本内容
		 */
		public function get text():String
		{
			return _text;
		}
		
		public function set text(value:String):void
		{
			_text = value;
		}
		
		public function WaitingPanelEx()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			if(!bgSprite)
			{
				bgSprite = new UIComponent();
				bgSprite.width = this.width;
				bgSprite.height = this.height;
				addElement(bgSprite);
			}
			
			if(!infoLabel)
			{
				infoLabel = new Label();
				infoLabel.setStyle("fontSize", 12);
				infoLabel.setStyle("color", "#ffffff");
				infoLabel.setStyle("textAlign", "center");
				infoLabel.setStyle("verticalAlign", "middle");
				infoLabel.percentWidth = 100;
				infoLabel.percentHeight = 100;
				addElement(infoLabel);
			}
			
			invalidateDisplayList();
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			
			infoLabel.text = _text + "," + _info;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			if(!_isInit)
			{
				var g:Graphics = bgSprite.graphics;
				g.clear(); 
				g.lineStyle(0, 0x344766, 1);
				
				// surface
				drawRoundRect(
					0, 0, width, height,
					{ tl: 5, tr: 5, bl: 5, br: 5 },
					[0x42A2DB,0x3B78BD], 0.8,
					verticalGradientMatrix(0, 0, width, height));
				
				// highlight
				drawRoundRect(
					0, 0, width, height / 2,
					{ tl: 5, tr: 5, bl: 5, br: 5 },
					[ 0xFFFFFF, 0xFFFFFF ], [0.8, 0],
					verticalGradientMatrix(0, 0, width, height / 2));
				
				// edge
				drawRoundRect(
					0, 0, width, height,
					{ tl: 5, tr: 5, bl: 5, br: 5 },
					0xFFFFFF, 0.8, null,
					GradientType.LINEAR, null, 
					{ x: 0, y: 1, w: width, h: height - 1,
						r: { tl: 5, tr: 5, bl: 5, br: 5 } });
				g.endFill();  
			}
			
			_isInit = true;
		}
	}
}