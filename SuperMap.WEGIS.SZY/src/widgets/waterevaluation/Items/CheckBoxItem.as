package widgets.waterevaluation.Items
{
	import spark.components.CheckBox;
	
	public class CheckBoxItem extends CheckBox
	{
		public function CheckBoxItem()
		{
			super();
			buttonMode = true;
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