package com.supermap.wegis.common.components.checkComboBox
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.controls.CheckBox;
	import mx.controls.List;
	import mx.controls.listClasses.ListBase;
	import mx.events.ListEvent;
	import mx.utils.ArrayUtil;
	
	public class CheckBoxItemRenderer extends CheckBox{
		
		/**存储当前列数据对象**/
		private var currData:Object; 
		
		public function CheckBoxItemRenderer(){
			super();
			this.addEventListener(Event.CHANGE,onClickCheckBox);
		}
		
		override public function set data(value:Object):void{
			if (value != null) {
				this.selected = value.selected;
				this.currData = value; 
				this.label=value.dataField;
			}
		}
		private function onClickCheckBox(e:Event):void{	
			var list:List = listData.owner as List;
			var selectedItems:Array = list.selectedItems;
			currData.selected = this.selected;
			if(this.selected){
				selectedItems.push(currData);
			}else{
				selectedItems.splice(ArrayUtil.getItemIndex(currData,selectedItems),1);
			}
			list.selectedItems=selectedItems;
			var checkBoxComboBox:CheckBoxComboBox = list.owner as CheckBoxComboBox;
			var changeEvent:CheckBoxSelectEvent= new CheckBoxSelectEvent(CheckBoxSelectEvent.SELECT_CHANGED)
			checkBoxComboBox.dispatchEvent(changeEvent);
		}
	}
}