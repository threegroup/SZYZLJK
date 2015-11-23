package  com.supermap.wegis.common.components.treeEx
{
	import mx.controls.Tree;
	import mx.core.ClassFactory;
	import mx.events.ListEvent;
	/**
	 * 三状态复选框树控件
	 * <br /><br />
	 */
	
	public class CheckTree extends Tree
	{
		//数据源中状态字段
		private var m_checkBoxStateField:String="@state";
		//部分选中的填充色
		[Bindable]
		private var m_checkBoxBgColor:uint=0x009900;
		//填充色的透明度
		[Bindable]
		private var m_checkBoxBgAlpha:Number=1;
		//填充色的边距
		[Bindable]
		private var m_checkBoxBgPadding:Number=3;
		//填充色的四角弧度
		[Bindable]
		private var m_checkBoxBgElips:Number=2;
		//取消选择是否收回子项
		[Bindable]
		private var m_checkBoxCloseItemsOnUnCheck:Boolean=true;
		//选择项时是否展开子项
		[Bindable]
		private var m_checkBoxOpenItemsOnCheck:Boolean=false;
		//选择框左边距的偏移量
		[Bindable]
		private var m_checkBoxLeftGap:int=8;
		//选择框右边距的偏移量
		[Bindable]
		private var m_checkBoxRightGap:int=20;
		//是否显示三状态
		[Bindable]
		private var m_checkBoxEnableState:Boolean=true;
		//与父项子项关联
		[Bindable]
		private var m_checkBoxCascadeOnCheck:Boolean=true;
		
		public var isShowCheck:Boolean = true;
		/**能够展开的最后一级*/
		private var _leafLevel:int = -1;

		[Bindable]
		/**能够展开的最后一级*/
		public function get leafLevel():int
		{
			return _leafLevel;
		}
		/**能够展开的最后一级*/
		public function set leafLevel(value:int):void
		{
			_leafLevel = value;
		}

		
		//双击项目
		public var itemDClickSelect:Boolean=true;
		public function CheckTree()
		{
			super();
			doubleClickEnabled=true;
		}
		override protected function createChildren():void
		{
			var myFactory:ClassFactory=new ClassFactory(CheckTreeItemRenderer);
			myFactory.properties = {leafLevel:leafLevel,isShowCheck:isShowCheck};
			this.itemRenderer=myFactory;
			super.createChildren();
			addEventListener(ListEvent.ITEM_DOUBLE_CLICK, onItemDClick);
		}
		public function PropertyChange():void
		{
			dispatchEvent(new ListEvent(mx.events.ListEvent.CHANGE));
		}
		
		/**
		 * 树菜单，双击事件
		 * @param evt 双击事件源
		 *
		 */
		public function onItemDClick(e:ListEvent):void
		{
			if(itemDClickSelect)
				OpenItems();
		}
		/**
		 * 打开Tree节点函数，被 有打开节点功能的函数调用
		 * @param item	要打开的节点
		 *
		 */
		public function OpenItems():void
		{
			if (this.selectedIndex >= 0 && this.dataDescriptor.isBranch(this.selectedItem))
				this.expandItem(this.selectedItem, !this.isItemOpen(this.selectedItem), true);
		}
		
		/**
		 * 数据源中状态字段
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxStateField():String
		{
			return m_checkBoxStateField;
		}
		public function set checkBoxStateField(v:String):void
		{
			m_checkBoxStateField=v;
			PropertyChange();
		}
		
		/**
		 * 部分选中的填充色
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxBgColor():uint
		{
			return m_checkBoxBgColor;
		}
		public function set checkBoxBgColor(v:uint):void
		{
			m_checkBoxBgColor=v;
			PropertyChange();
		}
		
		/**
		 * 填充色的透明度
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxBgAlpha():Number
		{
			return m_checkBoxBgAlpha;
		}
		public function set checkBoxBgAlpha(v:Number):void
		{
			m_checkBoxBgAlpha=v;
			PropertyChange();
		}
		
		
		/**
		 * 填充色的边距
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxBgPadding():Number
		{
			return m_checkBoxBgPadding;
		}
		public function set checkBoxBgPadding(v:Number):void
		{
			m_checkBoxBgPadding=v;
			PropertyChange();
		}
		
		/**
		 * 填充色的四角弧度
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxBgElips():Number
		{
			return m_checkBoxBgElips;
		}
		public function set checkBoxBgElips(v:Number):void
		{
			m_checkBoxBgElips=v;
			PropertyChange();
		}
		
		
		/**
		 * 取消选择是否收回子项
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxCloseItemsOnUnCheck():Boolean
		{
			return m_checkBoxCloseItemsOnUnCheck;
		}
		public function set checkBoxCloseItemsOnUnCheck(v:Boolean):void
		{
			m_checkBoxCloseItemsOnUnCheck=v;
			PropertyChange();
		}
		
		
		/**
		 * 选择项时是否展开子项
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxOpenItemsOnCheck():Boolean
		{
			return m_checkBoxOpenItemsOnCheck;
		}
		public function set checkBoxOpenItemsOnCheck(v:Boolean):void
		{
			m_checkBoxOpenItemsOnCheck=v;
			PropertyChange();
		}
		
		
		/**
		 * 选择框左边距的偏移量
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxLeftGap():int
		{
			return m_checkBoxLeftGap;
		}
		public function set checkBoxLeftGap(v:int):void
		{
			m_checkBoxLeftGap=v;
			PropertyChange();
		}
		
		
		/**
		 * 选择框右边距的偏移量
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxRightGap():int
		{
			return m_checkBoxRightGap;
		}
		public function set checkBoxRightGap(v:int):void
		{
			m_checkBoxRightGap=v;
			PropertyChange();
		}
		
		
		/**
		 * 是否显示三状态
		 * @return 
		 * 
		 */		
		[Bindable]
		public function get checkBoxEnableState():Boolean
		{
			return m_checkBoxEnableState;
		}
		public function set checkBoxEnableState(v:Boolean):void
		{
			m_checkBoxEnableState=v;
			PropertyChange();
		}
		
		
		
		/**
		 * 与父项子项关联
		 * @return 
		 * 
		 */
		[Bindable]
		public function get checkBoxCascadeOnCheck():Boolean
		{
			return m_checkBoxCascadeOnCheck;
		}
		public function set checkBoxCascadeOnCheck(v:Boolean):void
		{
			m_checkBoxCascadeOnCheck=v;
			PropertyChange();
		}
		
	}
}