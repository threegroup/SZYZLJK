package sm.wegis.szy.vo
{
	public class ThemeLayerId
	{
		public function ThemeLayerId()
		{
		}
		private var _label:String;
		private var _layerIds:String;

		/**图层名称*/
		public function get label():String
		{
			return _label;
		}

		/**
		 * @private
		 */
		public function set label(value:String):void
		{
			_label = value;
		}

		/**对应图层layerIds*/
		public function get layerIds():String
		{
			return _layerIds;
		}

		/**
		 * @private
		 */
		public function set layerIds(value:String):void
		{
			_layerIds = value;
		}

	}
}