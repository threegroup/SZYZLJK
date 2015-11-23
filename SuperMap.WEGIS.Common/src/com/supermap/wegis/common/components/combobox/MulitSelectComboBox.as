package com.supermap.wegis.common.components.combobox
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.controls.ComboBox;
	import mx.controls.List;
	import mx.controls.listClasses.ListBase;
	import mx.events.FlexMouseEvent;
	import mx.events.ListEvent;
	import mx.events.SandboxMouseEvent;
	
	public class MulitSelectComboBox extends ComboBox
	{
		public function MulitSelectComboBox()
		{
			super();
			this.dropdownFactory=new MulitSelectClassFactory(List);
			this.getDropdownFactory().addInitEventListener(ListEvent.CHANGE,dropdown_Change,false,1);
			this.getDropdownFactory().addInitEventListener(MouseEvent.MOUSE_DOWN, dropdown_mouseDownHandler);
			this.getDropdownFactory().addInitEventListener(FlexMouseEvent.MOUSE_DOWN_OUTSIDE, dropdown_mouseOutsideHandler);
			this.getDropdownFactory().addInitEventListener(FlexMouseEvent.MOUSE_WHEEL_OUTSIDE, dropdown_mouseOutsideHandler);
			this.getDropdownFactory().addInitEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE, dropdown_mouseOutsideHandler);
			this.getDropdownFactory().addInitEventListener(SandboxMouseEvent.MOUSE_WHEEL_SOMEWHERE, dropdown_mouseOutsideHandler);
			this.getDropdownFactory().addInitProperties("allowMultipleSelection",true);
			this.getDropdownFactory().addInitProperties("selectedItems",getSelectedItems);
			this.toolTip="按住Ctrl多选";
		}
		
		private var _selectedItems:Array;
		private var _selectedIndices:Array;
		private var _separation:String=",";
		[Bindable("change")]
		[Bindable("valueCommit")]
		public function get selectedItems():Array{
			return 	_selectedItems==null?[]:_selectedItems;
		}
		public function set selectedItems(array:Array):void{
			var t:String;
			this._selectedItems=array;
			this.text=selectedLabel;
		}
		[Bindable("change")]
		[Bindable("valueCommit")]
		public function get selectedIndices():Array{
			return _selectedIndices!=null?_selectedIndices:[];
		}
		public function set selectedIndices(array:Array):void{
			this._selectedIndices=array;
		}
		/**
		 * Label 分隔符
		 * */
		public function get separation():String{
			return this._separation;
		}
		public function set separation(value:String):void{
			this._separation=value;
		}
		public function getSelectedItems():Array{
			return this.selectedItems;
		}
		/**
		 * 选中项时，Ctrl 是否按下
		 * */
		private var ctrlKey:Boolean=false;
		
		private function dropdown_Change(event:ListEvent):void{
			var listBase:ListBase=event.currentTarget as ListBase;
			this.selectedItems=listBase.selectedItems;
			this.selectedIndices=listBase.selectedIndices;
			
			trace("dropdown_Change-----"+"selectedItems:"+selectedItems.length+"\t"+"selectedIndices:"+selectedIndices.length);
			
		}
		
		private function dropdown_mouseDownHandler(event:MouseEvent):void{
			ctrlKey=event.ctrlKey;
		}
		private function dropdown_mouseDownOutSide(event:FlexMouseEvent):void{
			close();
		}
		
		override public function close(trigger:Event=null):void{
			if(!ctrlKey){
				super.close(trigger);//未按下 Ctrl 时 关闭
			}
		}
		override public function get selectedLabel():String
		{
			var array:Array=this.selectedItems;
			var result:String="";
			for(var i:int=0;i<array.length;i++){
				result+=itemToLabel(array[i]);
				if(i!=(array.length-1)){
					result+=separation;
				}
			}
			
			return result;
		}
		public function  getDropdownFactory():MulitSelectClassFactory{
			return super.dropdownFactory as MulitSelectClassFactory;
		}
		/**
		 *  @private
		 */
		private function dropdown_mouseOutsideHandler(event:Event):void
		{
			trace("selectedItems:"+selectedItems.length+"\t"+"selectedIndices:"+selectedIndices.length);
			if (event is MouseEvent)
			{
				var mouseEvent:MouseEvent = MouseEvent(event);
				if (!hitTestPoint(mouseEvent.stageX, mouseEvent.stageY, true))
				{
					super.close(event);
				}
			}
			else if (event is SandboxMouseEvent) 
			{
				super.close(event);
			}
		}
	}
}