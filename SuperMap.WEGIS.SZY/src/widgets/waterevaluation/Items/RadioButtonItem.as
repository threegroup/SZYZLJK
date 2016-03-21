package widgets.waterevaluation.Items
{
	import spark.components.RadioButton;
	
	public class RadioButtonItem extends RadioButton
	{
		public function RadioButtonItem()
		{
			super();
		}
		
		private var _data:Object = null;

		/**项目对应的数据*/
		public function get data():Object
		{
			return _data;
		}

		public function set data(value:Object):void
		{
			_data = value;
		}
	}
}