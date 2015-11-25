/**
 *通用工具类 
 */
package sm.wegis.szy.core.baseclass
{
	import com.supermap.wegis.common.components.mapCtrl.MapCtrl;
	import sm.wegis.szy.models.ApplicationModelLocator;

	public class ToolBase
	{
		private var _modelLocator:ApplicationModelLocator = ApplicationModelLocator.getInstance();
		
		/**系统模型定位器*/
		public function get modelLocator():ApplicationModelLocator
		{
			return _modelLocator;
		}
		
		public function set modelLocator(value:ApplicationModelLocator):void
		{
			_modelLocator = value;
		}
		
		private var _map:MapCtrl = _modelLocator.mapCtrl;

		/**地图对象*/
		public function get map():MapCtrl
		{
			return _map;
		}

		/**
		 * @private
		 */
		public function set map(value:MapCtrl):void
		{
			_map = value;
		}

		
		public function ToolBase()
		{
		}
	}
}