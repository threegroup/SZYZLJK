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
	
	public class WaitingPanel extends SkinnableContainer
	{
		private var _title:String="";
		private var _text:String="";
		private var _info:String="";
		private var _time:Number=0;
		
		private var _handler:Function=null;
		private var titleLabel:Label;
		private var textLabel:Label;
		private var infoLabel:Label;
		private var bgSprite:UIComponent;
		private var timer:Timer;
		
		private var _isInit:Boolean = false;
		
		/**
		 * 设置面板显示时间
		 */
		[Bindable]
		public function get time():Number
		{
			return _time;
		}
		
		public function set time(value:Number):void
		{
			_time = value;
			_info = _time + "秒后自动跳转...";
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
				_time--;
				_info = _time + "秒后自动跳转...";
				invalidateProperties();
			}
			else
			{
				if(handler != null)
				{
					handler();
				}
				timer.stop();
				timer.removeEventListener(TimerEvent.TIMER, timerHandler);
				timer = null;
				this.removeAllElements();
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
		
		/**
		 * 面板标题 
		 */
		public function get title():String
		{
			return _title;
		}
		
		public function set title(value:String):void
		{
			_title = value;
			if(titleLabel != null)
			{
				if(_title == "")
				{
					titleLabel.visible = false;
					titleLabel.includeInLayout = false;
				}
				else
				{
					titleLabel.visible = true;
					titleLabel.includeInLayout = true;
				}
			}
		}
		
		public function WaitingPanel()
		{
			super();
			
			this.width = 200;
			this.height = 90;
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
			
			if(!titleLabel)
			{
				titleLabel = new Label();
				titleLabel.setStyle("fontSize", 14);
				titleLabel.setStyle("color", "#ff0000");
				titleLabel.height = 20;
				titleLabel.width = 190;
				addElement(titleLabel);
			}
			if(!textLabel)
			{
				textLabel = new Label();
				textLabel.setStyle("fontSize", 12);
				textLabel.setStyle("color", "#000000");
				textLabel.height = 35;
				textLabel.width = 190;
				addElement(textLabel);
			}
			if(!infoLabel)
			{
				infoLabel = new Label();
				infoLabel.setStyle("fontSize", 12);
				infoLabel.setStyle("color", "#ffff00");
				infoLabel.height = 20;
				infoLabel.width = 190;
				addElement(infoLabel);
			}
			
			invalidateDisplayList();
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			
			infoLabel.text = _info;
			textLabel.text = _text;
			titleLabel.text = _title;
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
					[0x42A2DB,0x3B78BD], 0.66,
					verticalGradientMatrix(0, 0, width, height));
				
				// highlight
				drawRoundRect(
					0, 0, width, height / 2,
					{ tl: 5, tr: 5, bl: 5, br: 5 },
					[ 0xFFFFFF, 0xFFFFFF ], [0.66, 0],
					verticalGradientMatrix(0, 0, width, height / 2));
				
				// edge
				drawRoundRect(
					0, 0, width, height,
					{ tl: 5, tr: 5, bl: 5, br: 5 },
					0xFFFFFF, 0.66, null,
					GradientType.LINEAR, null, 
					{ x: 0, y: 1, w: width, h: height - 1,
						r: { tl: 5, tr: 5, bl: 5, br: 5 } });
				g.endFill();  
				
				titleLabel.move(5, 5);
				
				textLabel.move(5, 5 + titleLabel.height + 5);
				
				infoLabel.move(5, 5 + titleLabel.height + 5 + textLabel.height + 5);
			}
			
			_isInit = true;
		}
	}
}