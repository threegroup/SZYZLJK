package sm.wegis.szy.vo
{
	import com.supermap.web.core.Rectangle2D;

	public class SystemParamVO
	{
		public function SystemParamVO()
		{
		}
		private var _viewBounds:Rectangle2D;
		private var _vectorMapUrl:String;
		private var _rasterMapUrl:String;
		private var _baseLayerId:String;
		private var _themeLayerId:Array;

		/**地图专题layerIds*/
		public function get themeLayerId():Array
		{
			return _themeLayerId;
		}

		/**
		 * @private
		 */
		public function set themeLayerId(value:Array):void
		{
			_themeLayerId = value;
		}

		/**地图基础layerIds*/
		public function get baseLayerId():String
		{
			return _baseLayerId;
		}

		/**
		 * @private
		 */
		public function set baseLayerId(value:String):void
		{
			_baseLayerId = value;
		}

		/**影像地图服务地址*/
		public function get rasterMapUrl():String
		{
			return _rasterMapUrl;
		}

		/**
		 * @private
		 */
		public function set rasterMapUrl(value:String):void
		{
			_rasterMapUrl = value;
		}

		/**矢量地图服务地址*/
		public function get vectorMapUrl():String
		{
			return _vectorMapUrl;
		}

		/**
		 * @private
		 */
		public function set vectorMapUrl(value:String):void
		{
			_vectorMapUrl = value;
		}

		/**应用系统地图显示范围*/
		public function get viewBounds():Rectangle2D
		{
			return _viewBounds;
		}

		/**
		 * @private
		 */
		public function set viewBounds(value:Rectangle2D):void
		{
			_viewBounds = value;
		}

	}
}