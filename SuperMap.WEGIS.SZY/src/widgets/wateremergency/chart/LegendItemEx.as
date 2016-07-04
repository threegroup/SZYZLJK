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
				if(this.source is LineSeriesEx)
				{
					var lsex:LineSeriesEx = this.source as LineSeriesEx;
					if(lsex.name != "COD" && lsex.name != "NH3-N")
					{
						lsex.visible = isSelected;
					}
					else
					{
						//COD或NH3-N联动显隐控制
						var legendItemName:String = lsex.displayName;
						var lcex:LineChartEx = this.owner["dataProvider"] as LineChartEx;
						for each(var series:Series in lcex.series)
						{
							if (series.displayName.search(lsex.name) != -1) {
								series.visible = isSelected;
							}
						}
						
						var ld:Legend = this.owner as Legend;
						for each(var liex:LegendItemEx in ld.getChildren())
						{
							if(liex.checkBox.label.search(lsex.name) != -1)
							{
								liex.checkBox.selected = isSelected;
							}
						}
					}
				}
				else if(this.source is AreaSeries)
				{
					//面图无需联动处理
					var ases:AreaSeries = this.source as AreaSeries;
					ases.visible = isSelected;
				}
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