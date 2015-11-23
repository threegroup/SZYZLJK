package com.supermap.wegis.common.components.datagroup
{
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.events.CollectionEvent;
	
	import spark.components.DataGroup;
	
	public class DataGroupEx extends DataGroup
	{
		//当前选择的行数组
		private var _selectItems:ArrayCollection; 
		private var _selectField:String = "select";
		private var _dataProviderChanged:Boolean = false;
		public function DataGroupEx()
		{
			super();
		}
		override public function set dataProvider(value:IList):void
		{
			super.dataProvider = value;
			if(_selectItems)
			{
				_selectItems.removeAll();
			}else
			{
				_selectItems = new ArrayCollection();
			}
//			removeDataProviderListener();
//			_dataProviderChanged = true;
//			invalidateProperties();
		}
//		private function removeDataProviderListener():void
//		{
//			if (dataProvider)
//			{
//				dataProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE, getSelectItemsFormDataProvider);
//			}
//		}
		
//		override protected function commitProperties():void
//		{
//			super.commitProperties();
//			if(_dataProviderChanged && dataProvider)
//			{
// 				dataProvider.addEventListener(CollectionEvent.COLLECTION_CHANGE, getSelectItemsFormDataProvider);
//				getSelectItemsFormDataProvider(null);
//			}
//		}
		//获取当前dataprovider选择的项
		private function getSelectItemsFormDataProvider(event:CollectionEvent):void
		{
			for each(var item:Object in dataProvider)
			{
				if(item.hasOwnProperty(selectField) && item[selectField].toString() == "true")
				{
					_selectItems.addItem(item);
				}
			}
		}
		

		/**当前选择的行数组*/
		public function get selectItems():ArrayCollection
		{
//			getSelectItemsFormDataProvider(null);
//			if(_selectItems == null)
//			{
//				_selectItems = new ArrayCollection();
//			}
			return _selectItems;
		}
		public function get selectField():String
		{
			return _selectField;
		}

		public function set selectField(value:String):void
		{
			_selectField = value;
		}


	}
}