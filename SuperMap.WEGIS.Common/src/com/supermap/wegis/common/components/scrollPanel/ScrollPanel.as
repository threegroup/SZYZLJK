package com.supermap.wegis.common.components.scrollPanel
{
	import com.supermap.wegis.common.components.events.ScrollPanelEvent;
	import com.supermap.wegis.common.core.resourceManager.ResourceInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	import com.supermap.wegis.common.skins.ButtonItemSkin;
	
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.containers.ViewStack;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.Image;
	import spark.components.NavigatorContent;
	import spark.components.VGroup;
	
	public class ScrollPanel extends Group
	{
		/**项目行数*/
		public var rowCount:Number = 1;
		
		/**项目列数*/
		public var columnCount:Number = 4;
		
		/**项目水平间隔*/
		public var hGap:Number = 5;
		
		/**项目垂直间隔*/
		public var vGap:Number = 5;
		
		/**项目宽度*/
		public var itemWidth:Number = 45;
		
		/**项目高度*/
		public var itemHeight:Number = 50;
		
		private var _dataProvider:ArrayCollection;
		private var _labelField:String="";
		
		/**按钮组中项目的总数*/
		private var itemSum:Number = 0;
		/**按钮组中项目的列表*/
		private var itemList:ArrayCollection;
		private var _isUpdateStatus:Boolean;
		
		private var _buttonStyleName:String="";
		
		private var _textStyleName:String="";
		
		/**当前选中文本项目*/
		public var currentTextItem:TextItem = null;
		/**当前选中按钮项目*/
		public var currentButtonItem:ButtonItem = null;
		/**文本选中颜色*/
		public var selectedColor:uint = 0xbf0202;
		/**文本颜色*/
		public var textColor:uint = 0x646464;
		
		/**顶部页边距，目前仅支持上下页边距设置*/
		public var margin:Number = 5;
		
		private var _type:String="button";
		
		/**是否显示tooltip*/
		public var isShowToolTip:Boolean = false;
		
		/**按钮样式*/
		public function get buttonStyleName():String
		{
			return _buttonStyleName;
		}
		
		/**
		 * @private
		 */
		public function set buttonStyleName(value:String):void
		{
			_buttonStyleName = value;
		}
		
		/**文本样式*/
		public function get textStyleName():String
		{
			return _textStyleName;
		}
		
		/**
		 * @private
		 */
		public function set textStyleName(value:String):void
		{
			_textStyleName = value;
		}
		
		[Inspectable(category="General",defaultValue="button", enumeration="button,label")]
		public function get type():String
		{
			return _type;
		}
		
		/**设置滚动面板中项目的类型，button：按钮，label:文本*/
		public function set type(value:String):void
		{
			_type = value;
		}
		
		/**是否开启状态更新*/
		public function get isUpdateStatus():Boolean
		{
			return _isUpdateStatus;
		}
		
		/**
		 * @private
		 */
		public function set isUpdateStatus(value:Boolean):void
		{
			_isUpdateStatus = value;
		}
		
		/**显示字段*/
		public function get labelField():String
		{
			return _labelField;
		}
		
		/**设置项目的显示字段*/
		public function set labelField(value:String):void
		{
			_labelField = value;
			
			if(_dataProvider != null)
			{
				//更新所有按钮的显示名称
				this.updateListName();
			}
		}
		
		/**获取数据源*/
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}
		
		/**
		 * 设置数据源
		 */
		public function set dataProvider(value:ArrayCollection):void
		{
			_dataProvider = value;
			
			this.dataProviderHandler();
		}
		
		/**子要素*/
		private var mainHGroup:HGroup;
		private var mainContainer:ViewStack;
		private var leftVGroup:VGroup;
		private var rightVGroup:VGroup;
		private var leftImage:Image;
		private var rightImage:Image;
		private var pageCount:Number = 0
		private var pageIndex:Number = 1;
		
		public function ScrollPanel()
		{
			super();
			
			itemList = new ArrayCollection();
			_isUpdateStatus = true;
			
			mainHGroup = new HGroup();
			mainHGroup.percentWidth = 100;
			mainHGroup.percentHeight = 100;
			mainHGroup.horizontalAlign = "center";
			mainHGroup.verticalAlign = "middle";
			mainHGroup.gap = 0;
			
			leftImage = new Image();
			leftImage.buttonMode = true;
			leftImage.visible = false;
			
			leftVGroup = new VGroup();
			leftVGroup.percentHeight = 100;
			leftVGroup.horizontalAlign = "center";
			leftVGroup.verticalAlign = "middle";
			
			mainContainer = new ViewStack();
			mainContainer.percentWidth = 100;
			mainContainer.percentHeight = 100;
			
			rightImage = new Image();
			rightImage.buttonMode = true;
			rightImage.visible = false;
			
			rightVGroup = new VGroup();
			rightVGroup.percentHeight = 100;
			rightVGroup.horizontalAlign = "center";
			rightVGroup.verticalAlign = "middle";
			
			this.rightVGroup.addElement(rightImage);
			this.leftVGroup.addElement(leftImage);
			this.mainHGroup.addElement(leftVGroup);
			this.mainHGroup.addElement(mainContainer);
			this.mainHGroup.addElement(rightVGroup);
			this.addElement(mainHGroup);
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			//初始化左右按钮
			initArrow();
		}
		
		/**清除面板内容*/
		public function clear():void
		{
			if(this.mainContainer != null)
				this.mainContainer.removeAllElements();
			
			this.itemList = new ArrayCollection();
			this.itemSum = 0;
			this.currentButtonItem = null;
			this.currentTextItem = null;
		}
		
		/**根据索引获取项目*/
		public function getItemAt(index:int):DisplayObject
		{
			if(index < 0)
				return null;
			if(this.itemList != null && this.itemSum > 0)
			{
				if(index < this.itemSum)
					return this.itemList.getItemAt(index) as DisplayObject;
			}
			return null;
		}
		
		/**取消项目的选中状态 */
		public function cancelSelected():void
		{
			if(type == "label")
			{
				if(currentTextItem != null)
					currentTextItem.keepSelected(textColor);
			}
			else 
			{
				if(currentButtonItem != null)
				{
					currentButtonItem.keepSelected = false;
					currentButtonItem.invalidateSkinState();
				}
			}
		}
		
		/**数据源处理*/
		private function dataProviderHandler():void
		{
			if(_dataProvider != null)
			{
				clear();
				
				var len:int = _dataProvider.length;
				var pageSize:Number = rowCount * columnCount;
				if(pageSize != 0 && len > 0)
				{
					//余数
					var remainder:Number = len%pageSize;
					if(remainder == 0)
						pageCount = len/pageSize;
					else if(remainder > 0)
						pageCount = parseInt((len/pageSize).toString()) + 1;
					
					if(pageCount > 1)
					{
						leftImage.visible = false;
						rightImage.visible = true;
					}
					else if(pageCount == 1)
					{
						leftImage.visible = false;
						rightImage.visible = false;
					}
					
					//计算组件的高度
					var rowNum:Number = calculateHeight();
					
					for (var i:int = 1; i <= pageCount; i++) 
					{
						var data:ArrayCollection = new ArrayCollection();
						for (var j:int = 0; j < pageSize; j++) 
						{
							var tempCount:Number = (i - 1) * pageSize + j;
							if(tempCount < len)
							{
								var item:Object = _dataProvider[tempCount];
								if(item != null)
								{
									data.addItem(item);
								}
							}
							else
								break;
						}
						if(type == "button")
							addButtonPage(data, rowNum);
						else if(type == "label")
							addLabelPage(data, rowNum);
					}
				}
				
				//整体更新按钮颜色
				updateStyle();
			}
		}
		
		//计算组件的高度,并返回实际的行数（当页面总数为1时计算实际行数）
		private function calculateHeight():Number
		{
			var tempRowCount:Number = rowCount;
			if(pageCount == 0)
				this.height = 0;
			else if(pageCount == 1)
			{
				var len:int = _dataProvider.length;
				if(len > 0)
				{
					var remainder:Number = len%columnCount;
					if(remainder == 0)
						tempRowCount = len/columnCount;
					else if(remainder > 0)
						tempRowCount = parseInt((len/columnCount).toString()) + 1; 
					
					this.height = itemHeight * tempRowCount + vGap * (tempRowCount - 1) + margin * 2; 
				}
			}
			else if(pageCount > 1)
			{
				this.height = itemHeight * rowCount + vGap * (rowCount - 1) + margin * 2; 
			}
			return tempRowCount;
		}
		
		//更新按钮的显示名称
		private function updateListName():void
		{
			if(this.itemSum >= 1)
			{
				if(type == "button")
				{
					if(this.itemList != null && this.itemList.length > 0)
					{
						for each (var item:Object in this.itemList) 
						{
							var button:ButtonItem = item as ButtonItem;
							var param:Object = button.param;
							button.label = param[_labelField];
						}
					}
				}
				else if(type =="label")
				{
					if(this.itemList != null && this.itemList.length > 0)
					{
						for each (var item0:Object in this.itemList) 
						{
							var textitem:TextItem = item0 as TextItem;
							var param0:Object = textitem.param;
							textitem.text = param0[_labelField];
						}
					}
				}
			}
		}
		
		//增加标签页面
		private function addLabelPage(data:ArrayCollection=null, rowNum:Number = 0):void
		{
			if(data != null)
			{
				var len:int = data.length;
				if(len > 0)
				{
					var nav:NavigatorContent = new NavigatorContent();
					nav.percentWidth = 100;
					nav.percentHeight = 100;
					var vGroup:VGroup = new VGroup();
					vGroup.percentWidth = 100;
					vGroup.percentHeight = 100;
					vGroup.horizontalAlign = "center";
					vGroup.verticalAlign = "middle";
					vGroup.gap = vGap;
					vGroup.paddingLeft = 5;
					vGroup.paddingRight = 5;
					
					for (var i:int = 0; i < rowNum; i++) 
					{
						var hGroup:HGroup = new HGroup();
						hGroup.percentWidth = 100;
						hGroup.height = itemHeight;
						hGroup.gap = hGap;
						hGroup.horizontalAlign = "left";
						hGroup.verticalAlign = "middle";
						for (var j:int = 0; j < columnCount; j++) 
						{
							var tempCount:Number = i * columnCount + j;
							if(tempCount < len)
							{
								var item:Object = data[tempCount];
								var labelItem:TextItem = new TextItem();
								labelItem.buttonMode = true;
								labelItem.height = itemHeight;
								labelItem.width = itemWidth;
								
								if(_labelField != "")
								{
									if(item.hasOwnProperty(_labelField))
									{	
										var label:String = item[_labelField];
										labelItem.text = label;
										if(item.hasOwnProperty("tip"))
											labelItem.toolTip = item.tip;
										else
											labelItem.toolTip = label;
									}
								} 
								if(item.hasOwnProperty("key"))
								{
									labelItem.key = item.key;
									labelItem.id = item.id;
								}
								labelItem.param = item;
								labelItem.addEventListener(MouseEvent.CLICK, clickHandler);
								
								hGroup.addElement(labelItem);
								
								this.itemList.addItem(labelItem);
								this.itemSum++;
							}
							else
							{
								if(hGroup.numElements == 0)
								{
									hGroup = null;
									break;
								}
							}
						}
						
						if(hGroup != null && hGroup.numElements > 0)
							vGroup.addElement(hGroup);
					}
					
					nav.addElement(vGroup);
					this.mainContainer.addElement(nav);
				}
			}
		}
		
		//增加按钮页面
		private function addButtonPage(data:ArrayCollection=null, rowNum:Number = 0):void
		{
			if(data != null)
			{
				var len:int = data.length;
				if(len > 0)
				{
					var nav:NavigatorContent = new NavigatorContent();
					nav.percentWidth = 100;
					nav.percentHeight = 100;
					var vGroup:VGroup = new VGroup();
					vGroup.percentWidth = 100;
					vGroup.percentHeight = 100;
					vGroup.horizontalAlign = "center";
					vGroup.verticalAlign = "middle";
					vGroup.gap = vGap;
					vGroup.paddingLeft = 5;
					vGroup.paddingRight = 5;
					
					for (var i:int = 0; i < rowNum; i++) 
					{
						var hGroup:HGroup = new HGroup();
						hGroup.percentWidth = 100;
						hGroup.height = itemHeight;
						hGroup.gap = hGap;
						hGroup.horizontalAlign = "left";
						hGroup.verticalAlign = "middle";
						for (var j:int = 0; j < columnCount; j++) 
						{
							var tempCount:Number = i * columnCount + j;
							if(tempCount < len)
							{
								var item:Object = data[tempCount];
								var button:ButtonItem = new ButtonItem();
								button.buttonMode = true;
								button.height = itemHeight;
								button.width = itemWidth;
								
								if(_labelField != "")
								{
									if(item.hasOwnProperty(_labelField))
									{	
										var label:String = item[_labelField];
										button.label = label;
										if(isShowToolTip)
										{
											button.toolTip = label;
										}
									}
								} 
								if(item.hasOwnProperty("key"))
								{
									button.key = item.key;
									button.id = item.id;
									var resinfo:ResourceInfo = ResourceManagerEx.FindResource(item.key);
									if(resinfo != null)
									{
										button.setStyle("iconPlacement", "top");
										button.setStyle("icon", resinfo.cls);
									}
								}
								button.param = item;
								button.addEventListener(MouseEvent.CLICK, clickHandler);
								
								hGroup.addElement(button);
								
								this.itemList.addItem(button);
								this.itemSum++;
							}
							else
							{
								if(hGroup.numElements == 0)
								{
									hGroup = null;
									break;
								}
							}
						}
						if(hGroup != null && hGroup.numElements > 0)
							vGroup.addElement(hGroup);
					}
					
					nav.addElement(vGroup);
					this.mainContainer.addElement(nav);
				}
			}
		}
		
		private function clickHandler(e:MouseEvent):void
		{
			if(type == "button")
			{
				var item:Object = e.target;
				if(item is ButtonItem)
				{
					var buttonItem:ButtonItem = item as ButtonItem;
					if(buttonItem != null)
					{
						if(_isUpdateStatus)
						{
							if(currentButtonItem != null)
							{
								currentButtonItem.keepSelected = false;
								currentButtonItem.invalidateSkinState();
							}
							currentButtonItem = buttonItem;
							currentButtonItem.keepSelected = true;
							currentButtonItem.invalidateSkinState();
						}
					}
				}
				this.dispatchEvent(new ScrollPanelEvent(ScrollPanelEvent.CLICK, item, true));
			}
			else if(type == "label")
			{
				var item0:Object = e.target;
				if(item0 is TextItem)
				{
					var textitem:TextItem = item0 as TextItem;
					if(textitem != null)
					{
						if(currentTextItem != null)
						{
							currentTextItem.keepSelected(textColor);
						}
						currentTextItem = textitem;
						currentTextItem.keepSelected(selectedColor);
					}
				}
				this.dispatchEvent(new ScrollPanelEvent(ScrollPanelEvent.CLICK, item0, true));
			}
		}
		
		private function updateStyle():void
		{
			if(type == "button")
			{
				if(this.itemSum >= 1)
				{
					if(this.itemList != null && this.itemList.length > 0)
					{
						for each (var item:Object in this.itemList) 
						{
							var button:ButtonItem = item as ButtonItem;
							if(buttonStyleName != "")
								button.styleName = this.buttonStyleName;
							else
								button.setStyle("skinClass", ButtonItemSkin);
						}
					}
				}
			}
			else if(type == "label")
			{
				if(this.itemSum >= 1)
				{
					if(this.itemList != null && this.itemList.length > 0)
					{
						for each (var item0:Object in this.itemList) 
						{
							var label:TextItem = item0 as TextItem;
							if(textStyleName != "")
								label.styleName = this.textStyleName;
							else
								label.setStyle("color", textColor);
						}
					}
				}
			}
		}
		
		/***箭头按钮 BMLiang 20130131******************************************/
		[Embed (source="com/supermap/wegis/common/images/ScrollPanel/left.png")]
		private var leftArrow:Class;
		[Embed (source="com/supermap/wegis/common/images/ScrollPanel/left0.png")]
		private var leftArrow_a:Class;
		[Embed (source="com/supermap/wegis/common/images/ScrollPanel/right.png")]
		private var rightArrow:Class;
		[Embed (source="com/supermap/wegis/common/images/ScrollPanel/right0.png")]
		private var rightArrow_a:Class;
		private function initArrow():void
		{
			this.leftImage.source = leftArrow;
			this.leftImage.addEventListener(MouseEvent.CLICK, leftClickHandler);
			this.leftImage.addEventListener(MouseEvent.MOUSE_OVER, leftOverHandler)
			this.leftImage.addEventListener(MouseEvent.MOUSE_OUT, leftOutHandler);
			
			this.rightImage.source = rightArrow;
			this.rightImage.addEventListener(MouseEvent.CLICK, rightClickHandler);
			this.rightImage.addEventListener(MouseEvent.MOUSE_OVER, rightOverHandler)
			this.rightImage.addEventListener(MouseEvent.MOUSE_OUT, rightOutHandler);
		}
		
		/**根据页面信息改变按钮状态*/
		protected function changeButtonStatus(preButton:Image, nextButton:Image, pageIndex:int, pageSum:int):void {
			if (pageSum == 1 || pageSum == 0) {
				preButton.visible = false;
				nextButton.visible = false;
			} else if (pageSum > 1) {
				if (pageIndex == 1) {
					preButton.visible = false;
					nextButton.visible = true;
				} else if (pageIndex == pageSum) {
					preButton.visible = true;
					nextButton.visible = false;
				} else if (pageIndex > 1 && pageIndex < pageSum) {
					preButton.visible = true;
					nextButton.visible = true;
				}
			}
		}
		
		protected function leftClickHandler(event:MouseEvent):void	{
			// TODO Auto-generated method stub
			if (pageCount > 0) { 
				if (pageIndex > 1) {
					pageIndex = pageIndex - 1;
				} else {
					pageIndex = 1;
				}
				this.mainContainer.selectedIndex = pageIndex - 1;
				changeButtonStatus(leftImage,rightImage,pageIndex,pageCount);
			} 
		}
		
		private function leftOverHandler(event:MouseEvent):void	{
			this.leftImage.source = leftArrow_a;
		}
		
		private function leftOutHandler(event:MouseEvent):void	{
			this.leftImage.source = leftArrow;
		}
		
		protected function rightClickHandler(event:MouseEvent):void	{
			// TODO Auto-generated method stub
			if (pageCount > 0) { 
				if (pageIndex < pageCount) {
					pageIndex = pageIndex + 1;
				} else {
					pageIndex = pageCount;
				}
				this.mainContainer.selectedIndex = pageIndex - 1;
				changeButtonStatus(leftImage,rightImage,pageIndex,pageCount);
			}
		}
		
		private function rightOverHandler(event:MouseEvent):void	{
			this.rightImage.source = rightArrow_a;
		}
		
		private function rightOutHandler(event:MouseEvent):void	{
			this.rightImage.source = rightArrow;
		}
	}
}