package sm.wegis.szy.core.baseclass
{
	import com.adobe.cairngorm.vo.IValueObject;
	[Bindable]
	public class ValueObjectBase implements IValueObject
	{
		//页面索引
		private var _pageIndex:Number = 0;
		//页面大小
		private var _pageSize:Number = 0;
		//页面总数 
		private var _pageCount:Number = 0;
		//记录总数 
		private var _recordCount:Number = 0;
		
		/**检索结果记录总数*/
		public function get recordCount():Number
		{
			return _recordCount;
		}
		
		/**检索结果记录总数*/
		public function set recordCount(value:Number):void
		{
			_recordCount = value;
		}
		
		/**检索结果页面总数*/
		public function get pageCount():Number
		{
			return _pageCount;
		}
		
		/**检索结果页面总数*/
		public function set pageCount(value:Number):void
		{
			_pageCount = value;
		}
		
		public function get pageSize():Number
		{
			return _pageSize;
		}
		
		public function set pageSize(value:Number):void
		{
			_pageSize = value;
		}
		
		public function get pageIndex():Number
		{
			return _pageIndex;
		}
		
		public function set pageIndex(value:Number):void
		{
			_pageIndex = value;
		}
		
		public function ValueObjectBase()
		{
		}
	}
}