package widgets.wateremergency.chart
{
	import mx.charts.LegendItem;
	
	import spark.components.CheckBox;
	
	public class LegendItemEx extends LegendItem
	{
		private var checkBox:CheckBox = null;
		
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
				checkBox.percentWidth = 100;
				checkBox.label = this.label;
				checkBox.selected = this.visible;
			}
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			if(checkBox != null)
			{
				this.visible = this.checkBox.selected;
			}
		}
	}
}