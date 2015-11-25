package com.supermap.wegis.common.components.toolBar
{
	import com.supermap.wegis.common.components.events.ToolEvent;
	import com.supermap.wegis.common.core.resourceManager.DisplayInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.skins.ToolItemSkin;
	
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Menu;
	import mx.events.MenuEvent;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.VGroup;
	
	public class ToolBar extends Group
	{
		private var _hGroup:HGroup;
		private var _vGroup:VGroup;
		private var _itemGap:Number;
		private var _itemSum:Number;
		private var _itemList:ArrayCollection;
		private var _dataProvider:ArrayCollection;
		private var _labelField:String;
		private var _buttonStyleName:String;
		private var _isUpdateStatus:Boolean;
		
		//停靠位置
		private var _dockDirection:String = "verticalAlign";
		[Inspectable (defaultValue="verticalAlign", enumeration="horizontalAlign, verticalAlign")]
		public function get dockDirection():String
		{
			return _dockDirection;
		}
		
		public function set dockDirection(value:String):void
		{
			_dockDirection = value;
			invalidateDisplayList();
		}
		
		public function ToolBar()
		{
			super();
			
			_itemList = new ArrayCollection();
			_itemGap = 6;
			_itemSum = 0;
			_isUpdateStatus = false;
			_buttonStyleName = "";
			
			if(_dockDirection == "horizontalAlign")
				_hGroup = new HGroup();
			else
				_vGroup = new VGroup();
		}
		
		/**按钮组中项目列表*/
		public function get itemList():ArrayCollection
		{
			return _itemList;
		}
		
		/**
		 * @private
		 */
		public function set itemList(value:ArrayCollection):void
		{
			_itemList = value;
		}
		
		/**是否刷新状态*/
		public function get isUpdateStatus():Boolean
		{
			return _isUpdateStatus;
		}
		
		public function set isUpdateStatus(value:Boolean):void
		{
			_isUpdateStatus = value;
		}
		
		/**按钮样式*/
		public function get buttonStyleName():String
		{
			return _buttonStyleName;
		}
		
		public function set buttonStyleName(value:String):void
		{
			_buttonStyleName = value;
		}
		
		/**显示字段*/
		[Bindable]
		public function get labelField():String
		{
			return _labelField;
		}
		
		public function set labelField(value:String):void
		{
			_labelField = value;
			if(_dataProvider != null)
			{
				//更新所有按钮的显示名称
				this.updateListName();
			}
		}
		
		/**数据源*/
		[Bindable]
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}
		
		public function set dataProvider(value:ArrayCollection):void
		{
			_dataProvider = value;
			
			this.dataProviderHandler();
		}
		
		//
		public function setDataprovide(value:ArrayCollection):void{
			_dataProvider = value;
			
			this.dataProviderHandler();
			
		}
		
		
		
		/**按钮组中项目总数*/
		public function get itemSum():Number
		{
			return _itemSum;
		}
		
		public function set itemSum(value:Number):void
		{
			_itemSum = value;
		}
		
		/**按钮组中项目间距*/
		public function get itemGap():Number
		{
			return _itemGap;
		}
		
		public function set itemGap(value:Number):void
		{
			_itemGap = value;
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			if(_dockDirection == "horizontalAlign")
			{
				_hGroup.percentHeight = 100;
				_hGroup.horizontalAlign = "left";
				_hGroup.verticalAlign = "middle";
				_hGroup.gap = itemGap;
				
				addElement(_hGroup);
			}
			else
			{
				_vGroup.percentWidth = 100;
				_vGroup.horizontalAlign = "center";
				_vGroup.verticalAlign = "top";
				_vGroup.gap = itemGap;
				
				addElement(_vGroup);
			}
		}
		
		/**判断对象是否已经添加*/
		public function isExist(key:String=""):Boolean{
			var exist:Boolean = false;
			if(key == "")
				return exist;
			if(this.itemList != null && this.itemList.length > 0){
				for each (var item:Object in this.itemList){
					var tool:ToolItem = item as ToolItem;
					if(tool != null && tool.key == key){
						exist = true;
						break;
					}
				}
			}
			return exist;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			UpdateStyle();
		}
		
		private function getObject(key:String,arrCol:ArrayCollection=null):Object
		{
			if(arrCol == null)
				return null;
			for each (var item:Object in arrCol) 
			{
				if(item != null && item.hasOwnProperty("key") && item.key == key)
				{
					return item;
				}
			}
			return null;
		}
		
		/**
		 *清除工具项目 
		 */
		public function clear():void
		{
			this.itemList.removeAll();
			this.itemSum=0;
			
			if(_dockDirection == "horizontalAlign")
				_hGroup.removeAllElements();
			else
				_vGroup.removeAllElements();
			
			//_isUpdateStatus = false;
		}
		
		private function dataProviderHandler():void
		{
			if(_dataProvider != null)
			{
				clear();
				
				var len:int = _dataProvider.length;
				for (var i:int = 0; i < len; i++) 
				{
					var item:Object = _dataProvider[i];
					if(item != null)
					{
						//获取引用对象参数
						if(item.hasOwnProperty("ref"))
						{
							item.ref = getObject(item.ref, _dataProvider);
						}
						
						var label:String;
						if(_labelField != "")
						{
							label = item[_labelField];
						}
						
						if(item.hasOwnProperty("type"))
							addButtonItem(label, item.key, item.type, item);
						else
							addButtonItem(label, item.key, "", item);
					}
				}
				invalidateDisplayList();
			}
		}
		
		//更新按钮的显示名称
		private function updateListName():void
		{
			if(this.itemSum >= 1)
			{
				if(this.itemList != null && this.itemList.length > 0)
				{
					for each (var item:Object in this.itemList) 
					{
						var button:ToolItem = item as ToolItem;
						var param:Object = button.data;
						button.label = param[_labelField];
					}
				}
			}
		}
		
		/**添加Button项目*/
		public function addButtonItem(label:String="",key:String="", 
									  type:String="", data:Object=null):void
		{
			var button:ToolItem = new ToolItem();
			
			button.label = label;
			button.toolTip = label;
			button.key = key;
			button.id = key;
			button.type = type;
			button.data = data;
			
			button.addEventListener(MouseEvent.CLICK, clickHandler);
			
			if(_dockDirection == "horizontalAlign")
				_hGroup.addElement(button);
			else
				_vGroup.addElement(button);
			
			_itemList.addItem(button);
			
			this.itemSum++;
			
			//add to the system display list
			var displayInfo:DisplayInfo = new DisplayInfo();
			displayInfo.key = key;
			displayInfo.display = button;
			ResourceManagerEx.AddDisplayInfoToList(displayInfo);
		}
		
		/**根据关键字查找项目*/
		public function getItemByKey(key:String=""):ToolItem
		{
			if(this.itemSum >= 1)
			{
				var len:Number = this.itemList.length;
				if(this.itemList != null && len > 0)
				{
					for each (var item:Object in this.itemList) 
					{
						var button:ToolItem = item as ToolItem;
						if(button.key == key)
							return button;
					}
				}
			}
			return null;
		}
		
		private function clickHandler(e:MouseEvent):void
		{
			var item:Object = e.target;
			if(item is ToolItem)
			{
				var clickitem:ToolItem = item as ToolItem;
				if(clickitem != null)
				{
					if(_isUpdateStatus)
						this.UpdateStatus(clickitem);
				}
				
				this.dispatchEvent(new ToolEvent(ToolEvent.TOOL_CLICK, item, true));
				
				switch(clickitem.type)
				{
					case "menu":
					{
						var data:Object = clickitem.data;
						var dataSource:XML = objectToXml(data);
						
						//不为空则创建menu菜单
						if(dataSource != null)
						{
							createMenu(dataSource, this.menuWidht, this.menuHeight, 
								this.menuLabelField, this.menuIconField, this.menuIconFunction);
							
							showMenu(clickitem);
						}
						
						break;
					}
					default:
					{
						break;
					}
				}
			}
		}
		
		/**
		 * 将对象数据转化menu所需格式数据
		 * @param data:包含数据集对象
		 * @return xml对象
		 */
		private function objectToXml(data:Object=null):XML
		{
			if(data == null)
				return null;
			else
			{
				if(data.hasOwnProperty("menulist"))
				{
					var menuList:Object = data.menulist;
					if(menuList.hasOwnProperty("menuitem"))
					{
						var arrCol:ArrayCollection = menuList.menuitem as ArrayCollection;
						if(arrCol != null)
						{
							var root:XML = new XML("<root/>");
							for each (var item:Object in arrCol) 
							{
								if(item != null)
								{
									var node:XML = new XML("<menuitem/>");
									for(var key:String in item)
									{
										node.@[key] = item[key];
									}
									root.appendChild(node); 
								}
							}
							return root;
						}
					}
				}
				return null;
			}
		}
		
		/**菜单按钮 */
		private var innerMenu:Menu = null;
		/**菜单项目宽度*/
		public var menuWidht:Number = 90;
		/**菜单项目高度*/
		public var menuHeight:Number = 20;
		/**获取或设置菜单显示字段*/
		public var menuLabelField:String="@label";
		/**获取或设置菜单图标字段*/
		public var menuIconField:String="@icon";
		/**获取或设置菜单图标处理函数*/
		public var menuIconFunction:Function=null;
		/**获取或设置菜单样式*/
		public var menuStyle:String = "MenuStyle";
		
		private function iconFun(item:Object):Class{  
			return this[item.@icon];  
		}
		
		/**创建并显示菜单*/
		public function createMenu(dataProvider:XML, itemWidth:Number=65,
								   rowHeiget:Number=20,labelField:String="@label", 
								   iconField:String="@icon",iconFunction:Function=null):void  
		{  
			if(innerMenu != null) return;
			innerMenu = Menu.createMenu(this,dataProvider,false);  
			innerMenu.addEventListener(MenuEvent.ITEM_CLICK, itemClickHandler);
			innerMenu.width = itemWidth;  
			innerMenu.rowHeight = rowHeiget;  
			innerMenu.styleName = menuStyle;
			innerMenu.selectable = true;
			if(dataProvider.menuitem.hasOwnProperty(labelField))
				innerMenu.labelField = labelField; 
			if(dataProvider.menuitem.hasOwnProperty(iconField))
			{
				innerMenu.iconField = iconField;  
				innerMenu.iconFunction = iconFun;  
			}
		}  
		
		//显示下拉菜单
		private function showMenu(tool:ToolItem):void
		{
			if(innerMenu != null)
			{
				var mx:Number = tool.x;
				var my:Number = tool.y;
				var mp:Point = tool.parent.localToGlobal(new Point(mx, my));
				innerMenu.show(mp.x, mp.y + tool.height);  
			}
		}
		
		private function itemClickHandler(event:MenuEvent):void
		{
			this.dispatchEvent(new ToolEvent(ToolEvent.TOOL_CLICK, event.item, true));
		}
		
		private function UpdateStyle():void
		{
			if(this.itemSum >= 1)
			{
				var len:Number = this.itemList.length;
				if(this.itemList != null && len > 0)
				{
					for each (var item:Object in this.itemList) 
					{
						var button:ToolItem = item as ToolItem;
						if(buttonStyleName != "")
							button.styleName = this.buttonStyleName;
						else
							button.setStyle("skinClass", ToolItemSkin);
					}
				}
			}
		}
		
		private function UpdateStatus(click:ToolItem=null):void
		{
			var len:Number = this.itemList.length;
			if(_itemList != null && len > 0)
			{
				if(this.itemList.length >= 1)
				{
					if(click != null)
					{
						if(!click.keepSelected)
						{
							for each (var item:Object in this.itemList) 
							{
								var button:ToolItem = item as ToolItem;
								button.keepSelected = false;
								button.invalidateSkinState();
							}
							click.keepSelected = true;
							click.invalidateSkinState();
						}
					}
				}
			}
		}
	}
}