package  com.supermap.wegis.common.components.checkComboBox
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.ComboBox;
	import mx.core.ClassFactory;
	import mx.events.FlexEvent;
	import mx.events.ListEvent;
	
	[Event(name="selectChanged", type="com.supermap.wegis.common.components.checkComboBox.CheckBoxSelectEvent")]
	public class CheckBoxComboBox extends ComboBox{
		private var mouseOut:Boolean=true;
		private var promptText:String=null;
		public function CheckBoxComboBox(){
			super();
			this.addEventListener(FlexEvent.CREATION_COMPLETE,onCreateCompleteHandle);
			this.itemRenderer=new ClassFactory(CheckBoxItemRenderer);
		}
		
		private function onCreateCompleteHandle(event:FlexEvent):void{
			dropdown.allowMultipleSelection=true;
			close();
		}
		private function initListener():void{
			if(!dropdown.hasEventListener(MouseEvent.ROLL_OVER))
				dropdown.addEventListener(MouseEvent.ROLL_OVER,onRollOverHandle);
			if(!dropdown.hasEventListener(MouseEvent.ROLL_OUT))
				dropdown.addEventListener(MouseEvent.ROLL_OUT,onRollOutHandle);
		}
		private function onRollOverHandle(event:MouseEvent):void{
			mouseOut=false;
		}
		private var changeEvent:ListEvent;
		private function onRollOutHandle(event:MouseEvent):void{
			mouseOut=true;
			close();
			//			changeEvent= new ListEvent( ListEvent.CHANGE )
			//			dispatchEvent( changeEvent);
		}
		
		public function set selectedItems(value:Array):void{
			if (dropdown)
				dropdown.selectedItems=value;
		}
		
		[Bindable("change")]
		public function get selectedItems():Array{
			return dropdown?dropdown.selectedItems:[];
		}
		
		public function set selectedIndices(value:Array):void{
			if (dropdown)
				dropdown.selectedIndices=value;
		}
		
		[Bindable("change")]
		public function get selectedIndices():Array{
			return dropdown?dropdown.selectedIndices:[];
		}
		
		override public function close(trigger:Event=null):void{
			initListener();
			if (mouseOut)
				super.close(trigger);
			//			if(promptText)
			//				this.textInput.text=promptText;
		}
		override public function set prompt(value:String):void{
			promptText=value;
		}
		
		override  public function itemToLabel(item:Object, ...rest):String
		{
			var text:String = "";
			var datas:ArrayCollection = dataProvider as ArrayCollection;
			if (datas != null && datas.length > 0) {
				for (var index:int = 0; index < datas.length ;index++){
					var item:Object = datas.getItemAt(index);
					if (item.selected == true){
						if (text.length != 0) {
							text = text + ",";
						}
						text = text + item.dataField;
					}
				}
			}
			trace(text);
			return text;
		}
	}
}