package sm.wegis.szy.vo
{
	import com.supermap.wegis.common.components.toolBar.ToolItem;
	
	import mx.collections.ArrayCollection;
	
	import sm.wegis.szy.core.baseclass.ValueObjectBase;
	
	[Bindable]
	public class MenuVO extends ValueObjectBase
	{
		public function MenuVO()
		{
			super();
		}
		
		private var _mapMenuList:ArrayCollection = null;
		private var _mapMenuLabel:String;
		
		/**二维工具显示字段*/
		public function get mapMenuLabel():String
		{
			return _mapMenuLabel;
		}
		
		public function set mapMenuLabel(value:String):void
		{
			_mapMenuLabel = value;
		}
		
		/**二维地图工具条列表*/
		public function get mapMenuList():ArrayCollection
		{
			return _mapMenuList;
		}
		
		public function set mapMenuList(value:ArrayCollection):void
		{
			_mapMenuList = value;
		}
	}
}