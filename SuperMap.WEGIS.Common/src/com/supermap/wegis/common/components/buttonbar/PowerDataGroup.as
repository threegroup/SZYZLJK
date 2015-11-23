package com.supermap.wegis.common.components.buttonbar
{
	import com.supermap.wegis.common.core.resourceManager.DisplayInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.display.DisplayObject;
	
	import mx.core.IVisualElement;
	import mx.core.UIComponent;
	import mx.core.mx_internal;
	
	import spark.components.DataGroup;

	use namespace mx_internal;  // for mx_internal property contentChangeDelta
	
	/**
	 * override getVirtualElementAt (),控制更新PowerField字段，控制显示和隐藏
	 * */
	public class PowerDataGroup extends DataGroup
	{
		/**key字段*/
		private var _keyField:String = "key";
		public function PowerDataGroup()
		{
			super();
		}
		/**key字段*/
		public function get keyField():String
		{
			return _keyField;
		}
		/**key字段*/
		public function set keyField(value:String):void
		{
			_keyField = value;
		}

		override public function getVirtualElementAt(index:int, eltWidth:Number=NaN, eltHeight:Number=NaN):IVisualElement 
		{
			var elt:IVisualElement = super.getVirtualElementAt(index,eltWidth,eltHeight);
			var data:Object = dataProvider.getItemAt(index);
			var displayInfo:DisplayInfo = new DisplayInfo();
			displayInfo.key = data[keyField];
			displayInfo.display = elt;
			ResourceManagerEx.AddDisplayInfoToList(displayInfo);
			return elt;
		}
		
		mx_internal override function itemAdded(item:Object, index:int):void
		{
			super.itemAdded(item,index);
			var data:Object = dataProvider.getItemAt(index);
			var elt:IVisualElement = getChildAt(index) as IVisualElement;
			var ui:UIComponent = elt as UIComponent;
			ui.id =  data[keyField];
			var displayInfo:DisplayInfo = new DisplayInfo();
			displayInfo.key = data[keyField];
			displayInfo.display = elt ;
			ResourceManagerEx.AddDisplayInfoToList(displayInfo);
			
		}
	}
}