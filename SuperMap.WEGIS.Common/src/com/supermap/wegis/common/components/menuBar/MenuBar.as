package com.supermap.wegis.common.components.menuBar
{
	import com.supermap.wegis.common.components.events.MenuEventEx;
	import com.supermap.wegis.common.components.security.SecurityControler;
	import com.supermap.wegis.common.core.resourceManager.DisplayInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.skins.MenuItemSkin;
	
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Menu;
	import mx.events.MenuEvent;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.TileGroup;
	
	
	public class MenuBar extends Group
	{
		private var tileGroup:TileGroup;
		
		/**按钮组中项目的宽度*/
		public var itemWidth:Number = 55;
		/**按钮组中项目的高度*/
		public var itemHeight:Number = 25;
		/**按钮组中项目的行数*/
		public var itemRowCount:int = 1;
		/**按钮组中项目的总数*/
		public var itemSum:Number = 0;
		/**按钮组中项目的水平间距*/
		public var itemHorizontalGap:Number = 6;
		/**按钮组中项目的垂直间距*/
		public var itemVerticalGap:Number = 0;
		/**按钮组中项目的列表*/
		public var itemList:ArrayCollection;
		
		private var _dataProvider:ArrayCollection;
		private var _labelField:String="";
		
		private var _horizontalAlign:String = "center";
		private var _verticalAlign:String = "bottom";
		private var _isUpdateStatus:Boolean;
		
		private var _menuItemSkinClass:Class;
		private  var menuStyleNameChange:Boolean = false;
		
		/**当前菜单项目*/
		public var currentMenuItem:MenuItem = null;
		
		/**菜单是否加载完成 */
		private var isLoaded:Boolean = false;
		
		private var _isToolTip:Boolean = true;
		
		public function MenuBar()
		{
			super();
			
			tileGroup = new TileGroup();
			itemList = new ArrayCollection();
			_isUpdateStatus = false;
			
			this.addEventListener(MenuEventEx.MENU_ITEM_VISIBLE_CHANGED, visibleChangeHandler);
		}
		
		/**判断对象是否已经添加*/
		public function isExist(key:String=""):Boolean{
			var exist:Boolean = false;
			if(key == "")
				return exist;
			if(this.itemList != null && this.itemList.length > 0){
				for each (var item:Object in this.itemList){
					var menu:MenuItem = item as MenuItem;
					if(menu != null && menu.key == key){
						exist = true;
						break;
					}
				}
			}
			return exist;
		}
		
		/**获取菜单项*/
		public function getMenuItem(key:String=""):MenuItem{
			var menuItem:MenuItem = null;
			if(key == "")
				return null;
			if(this.itemList != null && this.itemList.length > 0){
				for each (var item:Object in this.itemList){
					var menu:MenuItem = item as MenuItem;
					if(menu != null && menu.key == key){
						menuItem = menu;
						break;
					}
				}
			}
			return menuItem;
		}
		
		private function visibleChangeHandler(event:MenuEventEx):void
		{
			var increment:Number = event.Message as Number;
			updateWidth(increment);
		}
		
		/**项目是否显示提示信息,默认为true*/
		public function get isToolTip():Boolean
		{
			return _isToolTip;
		}
		
		/**项目是否显示提示信息，默认为true*/
		public function set isToolTip(value:Boolean):void
		{
			_isToolTip = value;
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
		
		/**菜单项目垂直位置,如果该值为 "bottom"、"middle" 或 "top"，则会相对于容器的 contentHeight 属性对齐布局元素。*/
		public function get verticalAlign():String
		{
			return _verticalAlign;
		}
		
		public function set verticalAlign(value:String):void
		{
			_verticalAlign = value;
			invalidateDisplayList();
		}
		
		/***菜单项目水平位置,内容相对于容器宽度的水平对齐。
		 * 如果该值为 "left"、"right" 或 "center"，则会相对于容器的 contentWidth 属性对齐布局元素。 */
		public function get horizontalAlign():String
		{
			return _horizontalAlign;
		}
		
		public function set horizontalAlign(value:String):void
		{
			_horizontalAlign = value;
			invalidateDisplayList();
		}
		
		/**显示字段*/
		[Bindable]
		public function get labelField():String
		{
			return _labelField;
		}
		
		/**显示字段*/
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
		
		/**
		 * @private
		 */
		public function set dataProvider(value:ArrayCollection):void
		{
			_dataProvider = value;
			
			this.dataProviderHandler();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			var hGroup:HGroup = new HGroup();
			hGroup.percentWidth = 100;
			hGroup.percentHeight = 100;
			hGroup.horizontalAlign = horizontalAlign;
			hGroup.verticalAlign = verticalAlign;
			
			tileGroup.horizontalAlign = "justify";
			tileGroup.verticalAlign = "justify";
			tileGroup.horizontalGap = itemHorizontalGap;
			tileGroup.verticalGap = itemVerticalGap;
			tileGroup.orientation = "columns";
			tileGroup.requestedRowCount = this.itemRowCount;
			tileGroup.columnWidth = this.itemWidth;
			tileGroup.rowHeight = this.itemHeight;
			
			hGroup.addElement(tileGroup);
			this.addElement(hGroup);
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			updateStyle();
			
			if(!isLoaded && this.itemSum >= 1)
			{
				//抛出 需要初始化的模块 
				throwInitItem();
				isLoaded = true;
			}
		}
		
		/**用于用户注销后，重置菜单，设置默认选择菜单*/
		public function resetMenuBar():void
		{
			throwInitItem();
		}
		
		/**
		 *清除菜单项目 
		 */
		public function clear():void
		{
			this.itemList.removeAll();
			this.itemSum=0;
			this.tileGroup.removeAllElements();
			this.tileGroup.width = 0;
			//isUpdateStatus = false;
			isLoaded = false;
			currentMenuItem = null;
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
						var label:String;
						if(_labelField != "")
						{
							label = item[_labelField];
						} 
						if(SecurityControler.isStart == false || !(["securitycontroler"] in item)  ==true ||
							(["securitycontroler"] in item 
								&& ((item["securitycontroler"] == true && SecurityControler.isPermitted( item.key)) || item["securitycontroler"] == false)))
						{
							if(item.hasOwnProperty("type"))
								addButtonItem(label, item.key, item.type, item);
							else
								addButtonItem(label, item.key, "", item);
						}
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
						var button:MenuItem = item as MenuItem;
						var param:Object = button.data;
						button.label = param[_labelField];
					}
				}
			}
		}
		
		/**计算按钮组的宽度*/
		public function getGroupWidth(itemcount:int=0):Number
		{
			if(itemcount == 0)
				return 0;
			
			//计算按钮组的宽度,默认为一行
			if(itemcount > 0 && this.itemRowCount > 0)
			{
				var remainder:int = itemcount%this.itemRowCount;
				if(remainder == 0)
				{
					return (this.itemWidth + this.itemHorizontalGap) * (itemcount/this.itemRowCount);
				}
				else
				{
					return (this.itemWidth + this.itemHorizontalGap) * (Math.floor(itemcount/this.itemRowCount) + 1);
				}
			}
			return 0;
		}
		
		/**添加Button项目*/
		public function addButton(button:MenuItem = null, key:String="", label:String="", data:Object=null):void
		{
			if(button == null)
				return;
			button.key = key;
			button.id = key;
			button.label = label;
			button.toolTip = label;
			button.data = data;
			button.addEventListener(MouseEvent.CLICK, clickHandler);
			
			this.tileGroup.addElement(button);
			this.itemList.addItem(button);
			
			this.itemSum++;
			this.tileGroup.width = this.getGroupWidth(this.itemSum);
			this.width = this.getGroupWidth(this.itemSum);
			
			//add to the system display list
			var displayInfo:DisplayInfo = new DisplayInfo();
			displayInfo.key = key;
			displayInfo.display = button;
			displayInfo.param = data;
			ResourceManagerEx.AddDisplayInfoToList(displayInfo);
			invalidateProperties();		
		}
		
		/**添加Button项目*/
		public function addButtonItem(label:String="",key:String="", 
									  type:String="", data:Object=null):MenuItem
		{
			var button:MenuItem = new MenuItem();
			
			button.percentHeight = 100;
			button.percentWidth = 100;
			
			button.label = label;
			
			if(_isToolTip){
				button.toolTip = label;
			}
			
			button.key = key;
			button.id = key;
			button.type = type;
			button.data = data;
			button.styleName = this.styleName;
			if(menuItemSkinClass != null)
				button.setStyle("skinClass",menuItemSkinClass);
			else
				button.setStyle("skinClass", MenuItemSkin);
			
			button.addEventListener(MouseEvent.CLICK, clickHandler);
			
			this.tileGroup.addElement(button);
			
			this.itemList.addItem(button);
			
			this.itemSum++;
			this.tileGroup.width = this.getGroupWidth(this.itemSum);
			this.width = this.getGroupWidth(this.itemSum);
			
			//add to the system display list
			var displayInfo:DisplayInfo = new DisplayInfo();
			displayInfo.key = key;
			displayInfo.param = data;
			displayInfo.display = button as DisplayObject;
			ResourceManagerEx.AddDisplayInfoToList(displayInfo);
			
			return button;
		}
		
		//抛出要初始化的项目 
		private function throwInitItem():void
		{
			if(this.itemSum >= 1)
			{
				if(this.itemList != null && this.itemList.length > 0)
				{
					//存储选中项目
					var selectedButton:MenuItem = null;
					
					for each (var item:Object in this.itemList) 
					{
						var button:MenuItem = item as MenuItem;
						if(button != null)
						{
							var data:Object = button.data;
							if(data != null && data.hasOwnProperty("init"))
							{
								if(data["init"])
								{
									if(data.hasOwnProperty("selected") && data["selected"])
									{
										//获取选中项目
										selectedButton = button;
									}
									else
									{
										//加载需要初始化但不是选中的项目
										var param:Object = {currentItem:button.data, oldItem:currentMenuData};
										this.dispatchEvent(new MenuEventEx(MenuEventEx.MENU_CLICK, param, true));
									}
								}
							}
						}
					}
					
					//最后加载选中项目，如果没有配置默认项目，则选中并加载第一项
					if(selectedButton == null)
					{
						selectedButton = itemList.getItemAt(0) as MenuItem;
					}
					var param:Object = {currentItem:selectedButton.data, oldItem:currentMenuData};
					this.dispatchEvent(new MenuEventEx(MenuEventEx.MENU_CLICK, param, true));
					updateStatus(selectedButton);
				}
			}
		}
		
		private function get currentMenuData():Object
		{
			if (currentMenuItem != null) {
				return currentMenuItem.data;
			}
			return null;
		}
		
		/**根据权限，初始化默认项*/
		public function initDefaultMenu():void
		{
			//如果通过function.xml设置了默认加载项，则不通过权限key，初始化
			if(currentMenuItem != null)
			{
				return;
			}
			
			for each(var menuItem:MenuItem in itemList)
			{
				//此处要根据权限的类型来处理
				if(menuItem.visible && menuItem.includeInLayout && menuItem.enabled)
				{
					var param:Object = {currentItem:menuItem.data, oldItem:currentMenuData};
					this.dispatchEvent(new MenuEventEx(MenuEventEx.MENU_CLICK, param, true));
					updateStatus(menuItem);
					break;
				}
			}
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			if(menuStyleNameChange == true)
			{
				updateStyle();
				menuStyleNameChange = false;
			}
		}
		
		private function updateStyle():void
		{
			if(this.itemSum >= 1)
			{
				if(this.itemList != null && this.itemList.length > 0)
				{
					for each (var item:Object in this.itemList) 
					{
						var button:MenuItem = item as MenuItem;
						if(menuItemSkinClass != null)
							button.setStyle("skinClass",menuItemSkinClass);
						else
							button.setStyle("skinClass", MenuItemSkin);
					}
				}
			}
		}
		
		/**更新指定按钮的状态 */
		public function updateStatus(click:MenuItem=null):void
		{
			if(this.itemList != null && this.itemList.length > 0)
			{
				if(this.itemList.length >= 1)
				{
					if(click != null)
					{
						if(!click.keepSelected)
						{
							for each (var item:Object in this.itemList) 
							{
								var button:MenuItem = item as MenuItem;
								button.keepSelected = false;
								button.invalidateSkinState();
							}
							click.keepSelected = true;
							currentMenuItem = click;
							click.invalidateSkinState();
						}
					}
				}
			}
		}
		
		/**根据项目自动计算菜单宽度*/
		public function updateWidth(increment:Number=0):void
		{
			this.itemSum = this.itemSum + increment;
			this.tileGroup.width = this.getGroupWidth(this.itemSum);
			this.width = this.getGroupWidth(this.itemSum);
		}
		
		private function clickHandler(e:MouseEvent):void
		{
			var item:Object = e.target;
			if(item is MenuItem)
			{
				var clickitem:MenuItem = item as MenuItem;
				if(clickitem != null)
				{
					if(currentMenuItem == null || currentMenuItem != clickitem)
					{
						var param:Object = {currentItem:clickitem.data, oldItem:currentMenuData};
						this.dispatchEvent(new MenuEventEx(MenuEventEx.MENU_CLICK, param, true));
						if(_isUpdateStatus)
						{
							this.updateStatus(clickitem);
						}
					}
					
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
			
			//将菜单项添加到资源管理器中
			
		} 
		
		private function itemClickHandler(event:MenuEvent):void
		{
			var menuItem:Menu = event.currentTarget as Menu;
			var param:Object = {currentItem:menuItem.data, oldItem:currentMenuData};
			this.dispatchEvent(new MenuEventEx(MenuEventEx.MENU_CLICK, param, true));
		}
		
		//显示下拉菜单
		private function showMenu(menu:MenuItem):void
		{
			if(innerMenu != null)
			{
				var mx:Number = menu.x;
				var my:Number = menu.y;
				var mp:Point = menu.parent.localToGlobal(new Point(mx, my));
				innerMenu.show(mp.x, mp.y + menu.height);  
			}
		}
		/**按钮样式*/
		public function get menuItemSkinClass():Class
		{
			return _menuItemSkinClass;
		}
		
		/**
		 * @private
		 */
		public function set menuItemSkinClass(value:Class):void
		{
			if(	_menuItemSkinClass != value)
			{
				_menuItemSkinClass = value;
				menuStyleNameChange = true;
				invalidateProperties();
			}
			
		}
	}
}