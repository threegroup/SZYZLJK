package com.supermap.wegis.common.mappingEx
{
	import com.supermap.web.core.Point2D;
	import com.supermap.web.events.LayerEvent;
	import com.supermap.web.events.ZoomEvent;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.sm_internal;
	
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import mx.events.FlexEvent;
	
	use namespace sm_internal;
	public class MaskTiledTDTLayer extends TiledTDTLayer
	{
		/**
		 *Description 图层遮罩零时存储
		 * */
		private var _maskVisable:Boolean= false;
		/**
		 * Description 用于遮罩对象
		 * */
		private var _mask:Sprite;
		/**
		 * 存储遮罩的点数组,默认为全球经纬度
		 * */
		private var _maskPoints:Array=[[new Point2D(-180,90),new Point2D(180,90),new Point2D(180,-90),new Point2D(-180,-90),new Point2D(-180,90)]];
		//墨卡托投影
//		private var _maskPoints:Array=[[new Point2D(-20037508.3392,20037508.3392),new Point2D(20037508.3392,20037508.3392),new Point2D(20037508.3392,-20037508.3392),new Point2D(-20037508.3392,-20037508.3392),new Point2D(-20037508.3392,20037508.3392)]];
		
		/**
		 * 存储遮罩的绘制路径
		 * */
		private	var commands:Vector.<int>;
		/**
		 * 存储制作的坐标
		 * */
		private var coord:Vector.<Number>;
		/**
		 * Description 是否添加了遮罩，默认为false,为_maskVisable在地图放大，缩小临时标记变量
		 * */
		private var _hasMask:Boolean =false;
		/**
		 * 是否需要重新绘制遮罩面,默认为false
		 * */
		private var _isNeedDrawMaskRegon:Boolean = false;
		/**
		 * 构造函数
		 * */
		public function MaskTiledTDTLayer()
		{
			super();
		}
		
		/**
		 * @Description 设置遮罩的点串
		 * */
		public function set maskPoints(value:Array):void
		{
			if(_maskPoints !=value)
			{
				this._maskPoints = value;
				_isNeedDrawMaskRegon = true;
				invalidateProperties();
			}
		}
		/**
		 * @Description 获取遮罩的点串
		 * */
		public function get maskPoints():Array
		{
			return this._maskPoints;
		}
		
		/**
		 * 换算坐标
		 * */
		private function calculatePoints():void
		{
			if(_maskPoints  == null)
			{
				return;
			}
			commands = new Vector.<int>();
			coord= new Vector.<Number>();
			for each (var arr:Array in _maskPoints)
			{
				var startPoint:Boolean = true;
				for each(var pt:Point2D in arr)
				{
					if(startPoint)
					{
						commands.push(1);
						startPoint = false;
					}else
					{
						commands.push(2);
					}
					var point:Point = map.mapToScreen(pt);
					coord.push(point.x,point.y);
				}
			}
		}
		
		/**
		 * Description 绘制遮罩面
		 * */
		public function drawMaskPath():void
		{
			if(map == null || _mask == null)
			{
				return;
			}
			_mask.x =map._layerContainer.scrollRect.x;
			_mask.y = map._layerContainer.scrollRect.y;
			calculatePoints();
			var g:Graphics = _mask.graphics;
			g.clear();
			g.beginFill(0xFFFFFF,0);
			g.drawPath(commands,coord);
			g.endFill();	
		}
		
		override protected function zoomStartHandler(event:ZoomEvent) : void
		{
			super.zoomStartHandler(event);
			if(this.maskVisable == true )
			{
				this.maskVisable = false;
				_hasMask = true;
			}
		}
		
		override  protected function zoomEndHandler(event:ZoomEvent) : void
		{
			if(_hasMask)
			{
				this.maskVisable = true;
				_isNeedDrawMaskRegon = true;
			}
			super.zoomEndHandler(event);
		}
		
		/**设置遮罩是否可见*/
		public function set maskVisable(visable:Boolean):void
		{
			if(_maskVisable != visable) {
				_maskVisable = visable;
				invalidateProperties();
			}
		}
		
		/**返回遮罩是否可见*/
		public function get maskVisable():Boolean	{
			return this._maskVisable;
		}
		
		override protected function commitProperties():void {
			super.commitProperties();
			if( maskVisable == true ) {
				if(_mask == null ) {
					_mask = new Sprite();
					this.addChild(_mask);
				}else	if(this.contains(_mask) == false) {
					this.addChild(_mask);
				}
				this.mask=_mask;
			}else if(maskVisable == false){
				if(_mask != null && this.contains(_mask) == true) {
					this.removeChild(_mask);
				}
				_mask = null;
				this.mask = null;
			}
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void {
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			
			if(_maskVisable && _isNeedDrawMaskRegon) {
				drawMaskPath();
				_isNeedDrawMaskRegon = false;
			}
		}
	}
}