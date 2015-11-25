package com.supermap.wegis.common.components.progressBar
{
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.utils.Timer;
	
	import mx.core.UIComponent;
	
	import spark.components.HGroup;
	import spark.components.Label;
	import spark.components.SkinnableContainer;
	
	public class ProgressPanel extends SkinnableContainer
	{
		/**显示进度*/
		private var  _label:Label;
		/**当前加载的值*/
		private var _value:int;
		/**绘制进度图条*/
		private var _progress:UIComponent;
		
		private var _progressPanelType:String = HORIZONTAL_PROGRESS;
		private var timer:Timer = null;
		
		/**水平滚动条*/
		public static const HORIZONTAL_PROGRESS:String = "horizontal";
		public static const CIRCLE_PROGRESS:String = "circle";
		public function ProgressPanel()
		{
			super();
			if(_progressPanelType == HORIZONTAL_PROGRESS)
			{
				width = 240;
				height = 20;
				setStyle("backgroundColor","#ABDBFC");
			}else {
				width = 40;
				height = 40;
				if (!timer)
				{
					timer = new Timer(200);
					timer.start();
				}
				timer.addEventListener(TimerEvent.TIMER, timerHandler);
				addEventListener(Event.REMOVED, removedHandler);
				
				
			}
			
		}
		
		private function removedHandler(event:Event):void
		{
			if (timer)
				timer.removeEventListener(TimerEvent.TIMER, timerHandler);
		}
		
		
		private function timerHandler(event:TimerEvent):void
		{
			updateDisplayList(width, height);
		}
		
		/**画圆*/
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
		
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			_label = new Label();
			_label.setStyle("color", "#ffffff");
			var labelGroup:HGroup = new HGroup();
			labelGroup.percentHeight = 100;
			labelGroup.percentWidth = 100;
			labelGroup.verticalAlign ="middle";
			labelGroup.horizontalAlign = "center";
			labelGroup.addElement(_label);
			if(progressPanelType == HORIZONTAL_PROGRESS)
			{
				_progress = new UIComponent();
				_progress.percentWidth = 100;
				_progress.percentHeight = 100;
				addElement(_progress);
			}else {
				
			}
			addElement(labelGroup);
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight); 
			var g:Graphics =_progress.graphics; 
			g.clear(); 
			g.beginFill(0x0454B3);
			g.drawRect(0, 0,_progress.width *(this._value/100),_progress.height); 
			g.endFill();  
			
			var matrix:Matrix=new Matrix(); 
			matrix.createGradientBox(300*this._value,16,Math.PI/2,0,0); 
			var colors:Array=[0xC4E1FF, 0x0066CC, 0x84C1FF];
			var alphas:Array=[1,1,1]; 
			var ratios:Array=[0, 128,255]; 
			g.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,matrix);        
			g.drawRect(0, 0,_progress.width *(this._value/100),_progress.height); 
			g.endFill(); 
		}
		
		/**设置进度条进度值
		 * @param value:（0-100）*/
		public function setProgressValue(value:int = 0, message:String=""):void
		{
			_label.text = message + "模块加载进度：" + String(int(value))+" % ";
			this._value = value;
			invalidateDisplayList();
		}

		/**精度条类型,水平，或者圆圈型*/
		public function get progressPanelType():String
		{
			return _progressPanelType;
		}

		/**精度条类型,水平，或者圆圈型*/
		public function set progressPanelType(value:String):void
		{
			_progressPanelType = value;
		}

	}
}