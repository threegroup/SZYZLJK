package sm.wegis.szy.vo
{
	import com.supermap.web.core.Rectangle2D;
	
	import mx.collections.ArrayCollection;
	
	import sm.wegis.szy.core.baseclass.ValueObjectBase;

	[Bindable]
	public class SystemVO extends ValueObjectBase
	{
		public function SystemVO()
		{
			super();
		}
		private var _systemTitle:String;
		
		private var _subSystemTitle:String;
		
		private var _subSystemID:String;
		
		private var _systemFunctionUrl:String;
		
		private var _systemID:String;
		
		private var _copyRight:String;
		
		private var _isNeedAuthorization:Boolean = false;
		
		private var _layerBounds:Rectangle2D;
		
		private var _systemList:ArrayCollection = null;
		private var _isSystemInited:Boolean = false;
		/**
		 *系统是否已经初始化
		 */
		public function get isSystemInited():Boolean
		{
			return _isSystemInited;
		}
		
		public function set isSystemInited(value:Boolean):void
		{
			_isSystemInited = value;
		}
		
		/**
		 * 当前用户对应的系统列表
		 */
		public function get systemList():ArrayCollection
		{
			return _systemList;
		}
		
		public function set systemList(value:ArrayCollection):void
		{
			_systemList = value;
		}

		/**子系统ID*/
		public function get subSystemID():String
		{
			return _subSystemID;
		}

		public function set subSystemID(value:String):void
		{
			_subSystemID = value;
		}

		/**子系统标题*/
		public function get subSystemTitle():String
		{
			return _subSystemTitle;
		}

		public function set subSystemTitle(value:String):void
		{
			_subSystemTitle = value;
		}

		/**地图图层地图范围*/
		public function get layerBounds():Rectangle2D
		{
			return _layerBounds;
		}

		/**
		 * @private
		 */
		public function set layerBounds(value:Rectangle2D):void
		{
			_layerBounds = value;
		}

		/**地图浏览右下角版权*/
		public function get copyRight():String
		{
			return _copyRight;
		}

		/**
		 * @private
		 */
		public function set copyRight(value:String):void
		{
			_copyRight = value;
		}
		
		/**
		 *系统权限认证 
		 */
		public function get isNeedAuthorization():Boolean
		{
			return _isNeedAuthorization;
		}

		/**
		 * @private
		 */
		public function set isNeedAuthorization(value:Boolean):void
		{
			_isNeedAuthorization = value;
		}

		/**
		 * 系统标识
		 */
		public function get systemID():String
		{
			return _systemID;
		}
		
		public function set systemID(value:String):void
		{
			_systemID = value;
		}

		public function get systemTitle():String
		{
			return _systemTitle;
		}

		public function set systemTitle(value:String):void
		{
			_systemTitle = value;
		}

		/**系统功能服务*/
		public function get systemFunctionUrl():String
		{
			return _systemFunctionUrl;
		}

		public function set systemFunctionUrl(value:String):void
		{
			_systemFunctionUrl = value;
		}
	}
}