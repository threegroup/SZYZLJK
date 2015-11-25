package sm.wegis.szy.vo
{
	import com.supermap.wegis.common.components.toolBar.ToolItem;
	
	import mx.collections.ArrayCollection;
	
	import sm.wegis.szy.core.baseclass.ValueObjectBase;
	
	[Bindable]
	public class ToolVO extends ValueObjectBase
	{
		public function ToolVO()
		{
			super();
		}
		
		private var _mapToolList:ArrayCollection=null;
		private var _mapToolLabel:String=null;
		/**当前选中的工具条项目*/
		public var currentTool:ToolItem=null;
		/**当前选中的工具条项目初始化标*/
		public var originalToolLabel:String=null;
		/**当前选中菜单项目*/
		public var selectedMenu:Object = null;
		
		/**
		 *当前查询工具编码 , 0-点查询；1-圆形查询�?-矩形查询�?-面查�?
		 */
		public var curQueryToolCode:String=null;
		
		/**二维工具显示字段*/
		public function get mapToolLabel():String
		{
			return _mapToolLabel;
		}
		
		public function set mapToolLabel(value:String):void
		{
			_mapToolLabel = value;
		}
		
		/**二维地图工具条列*/
		public function get mapToolList():ArrayCollection
		{
			return _mapToolList;
		}
		
		public function set mapToolList(value:ArrayCollection):void
		{
			_mapToolList = value;
		}
	}
}