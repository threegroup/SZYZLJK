package widgets.wateremergency.chart
{
	import flash.events.Event;
	
	import mx.charts.Legend;
	import mx.charts.LegendItem;
	import mx.charts.chartClasses.Series;
	import mx.charts.series.AreaSeries;
	
	import spark.components.CheckBox;
	
	public class LegendItemEx extends LegendItem
	{
		public var checkBox:CheckBox = null;
		
		public function LegendItemEx()
		{
			if(checkBox == null)
			{
				checkBox = new CheckBox();
			}
			addChild(checkBox);
			
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			if(checkBox != null)
			{
				/*checkBox.percentWidth = 100;
				checkBox.percentHeight = 100;*/
				checkBox.height = 20;
				checkBox.label = this.label;
				checkBox.selected = true;
				checkBox.addEventListener(Event.CHANGE, itemChangeHandler);
			}
			this.setSelectedState(true);
		}
		
		private function itemChangeHandler(event:Event):void
		{
			if(checkBox != null)
			{
				this.setSelectedState(this.checkBox.selected);
			}
		}
		
		private function setSelectedState(isSelected:Boolean=false):void
		{
			if(this.source != null)
			{
				var lsex:Series = this.source as Series;
				lsex.visible = isSelected;
			}
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			if(this.checkBox != null)
			{
				//目前只考虑一种情况-复选框在图例最左边。
				this.checkBox.move(this.x-30,-1);
			} 
		}
	}
}