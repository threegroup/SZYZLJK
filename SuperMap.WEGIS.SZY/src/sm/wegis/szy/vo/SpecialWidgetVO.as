package sm.wegis.szy.vo
{
	import org.as3commons.collections.Map;

	public class SpecialWidgetVO
	{
		public function SpecialWidgetVO()
		{
		}

		private var _specialWidgetMap:Map = new Map();
		private var _dataMap:Map = new Map();

		/**需要特殊处理的模块列表*/
		public function get specialWidgetMap():Map
		{
			return _specialWidgetMap;
		}

		/**
		 * @private
		 */
		public function set specialWidgetMap(value:Map):void
		{
			_specialWidgetMap = value;
		}

		
		/**需要缓存图例的数据*/
		public function get dataMap():Map
		{
			return _dataMap;
		}

		/**
		 * @private
		 */
		public function set dataMap(value:Map):void
		{
			_dataMap = value;
		}

	}
}