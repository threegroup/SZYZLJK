package com.supermap.wegis.common.components.progressBar 
{
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.geom.Matrix;
	import flash.text.TextField;
	
	import mx.events.FlexEvent;
	import mx.events.RSLEvent;
	import mx.preloaders.DownloadProgressBar;
	
	public class InitBar extends DownloadProgressBar 
	{ 
		
		private var barSprite:Sprite; 
		// 总进度（字节描述） 
		private var progressText:TextField; 
		// 总进度（进度条描述） 
		private var progressBarSpritIsAdded:Boolean = false; 
		
		public function InitBar() 
		{ 
			super(); 
			
			progressText = new TextField(); 
			barSprite = new Sprite(); 
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			this.stage.addEventListener(Event.RESIZE, resizeHandler);
		}
		
		private function resizeHandler(e:Event):void
		{
			if (barSprite != null && progressText != null
				&& this.stage != null){ 
				barSprite.x = this.stage.stageWidth/2 - 100; 
				barSprite.y = this.stage.stageHeight/2 - 8;
				
				progressText.x = this.stage.stageWidth/2 - 102; 
				progressText.y = this.stage.stageHeight/2 + 20;
			}
		}
		
		override public function set preloader(preloader:Sprite):void{ 
			
			//Listen for 正在下载 
			preloader.addEventListener(ProgressEvent.PROGRESS, handleProgress); 
			//Listen for 下载完成 
			preloader.addEventListener(Event.COMPLETE, handleComplete); 
			//Listen for 正在初始化 
			preloader.addEventListener(FlexEvent.INIT_PROGRESS, handleInitProgress); 
			//Listen for 初始化完成 
			preloader.addEventListener(FlexEvent.INIT_COMPLETE, handleInitComplete); 
			
			// 预加载中 
			preloader.addEventListener(RSLEvent.RSL_PROGRESS, rslProgressr);  
			// 预加载了 
			preloader.addEventListener(RSLEvent.RSL_COMPLETE, rslCompleteHandler);  
			// 预加载出错（这些没写方法的，都是默认用了父类的方法） 
			preloader.addEventListener(RSLEvent.RSL_ERROR, rslErrorHandler); 
		} 
		
		//正在下载的进度 
		private function handleProgress(p:ProgressEvent):void { 
			//第一次处理时绘制进度条Sprit 
			/*if (progressBarSpritIsAdded == false){ 
				progressBarSpritIsAdded = true; 
				addProgressBarSprit(); 
			} 
			
			var value:Number = p.bytesLoaded/p.bytesTotal;
			progressText.text = "正在努力加载系统数据...( " + String(int(value*100))+" % )"; 
			
			drawProgressBarEx(value);*/
		} 
		
		// 预加载 
		protected function rslProgressr(r:RSLEvent):void 
		{ 
			//第一次处理时绘制进度条Sprit 
			if (progressBarSpritIsAdded == false){ 
				progressBarSpritIsAdded = true; 
				addProgressBarSprit(); 
			} 
			
			var i:int = r.rslIndex + 1; 
			var loadDetail:String = "当前下载" + "第" + i + "/" +r.rslTotal + "个文件进度："+ r.bytesLoaded + " / " + r.bytesTotal + " 字节";
			var value:Number = i/r.rslTotal;
			progressText.text = "正在努力加载系统数据...( " + String(int(value*100))+" % )"; // + ", " + loadDetail;
			
			drawProgressBarEx(value);
		} 
		
		//增加进度条
		private function addProgressBarSprit():void{ 
			//------------------------------------------------- 
			//加载进度条Sprite 
			addChild(barSprite); 
			barSprite.x = this.stage.stageWidth/2 - 100; 
			barSprite.y = this.stage.stageHeight/2 - 8; 
			
			//------------------------------------------------- 
			//加载进度条文字 
			addChild(progressText); 
			progressText.textColor = 0xffffff; 
			progressText.width = 220; 
			progressText.height = 18; 
			progressText.x = this.stage.stageWidth/2 - 102; 
			progressText.y = this.stage.stageHeight/2 + 20; 
		} 

		//刷新进度条
		private function drawProgressBarEx(value:Number):void 
		{   
			if (barSprite != null && progressText != null){ 
				var g:Graphics = barSprite.graphics; 
				g.clear(); 
				g.beginFill(0x0454B3); 
				g.drawRect(0, 0, 200*value,16); 
				g.endFill();  
				
				var matrix:Matrix=new Matrix(); 
				matrix.createGradientBox(200*value,16,Math.PI/2,0,0); 
				var colors:Array=[0xC4E1FF, 0x0066CC, 0x84C1FF]; 
				var alphas:Array=[1,1,1]; 
				var ratios:Array=[0, 128,255]; 
				//g.lineStyle(); 
				g.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,matrix);        
				g.drawRect(0,0,200*value,16); 
				g.endFill(); 
			} 
		} 
		
		private function handleComplete(e:Event):void{ 
			progressText.text="下载完成"; 
		} 
		private function handleInitComplete(e:FlexEvent):void{ 
			progressText.text="初始化完毕"; 
			//初始完后要派遣 Complete 事件，不然会停在这里，不会进入程序画面的 
			dispatchEvent(new Event(Event.COMPLETE)); 
		} 
		private function handleInitProgress(e:FlexEvent):void{ 
			progressText.text="正在努力初始化系统界面, 请稍候..."; 
		} 
	} 
} 