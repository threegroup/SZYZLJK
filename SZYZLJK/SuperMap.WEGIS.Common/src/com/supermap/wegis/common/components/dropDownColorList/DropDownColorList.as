package  com.supermap.wegis.common.components.dropDownColorList
{
	import com.supermap.wegis.common.components.events.DropDownColorIndexChangedEvent;
	import com.supermap.wegis.common.skins.DropDownColorListSkin;
	import com.supermap.wegis.common.utils.ColorGradient;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.core.ClassFactory;
	
	import spark.components.DropDownList;
	import spark.events.IndexChangeEvent;

	[Event(name="IndexChanged", type="com.supermap.wegis.common.components.events.DropDownColorIndexChangedEvent")]
	[Bindable]
	public class DropDownColorList extends DropDownList
	{
		/**
		 * @Description颜色列表选择的颜色数组
		 * */
		public var selectColors:ArrayCollection;
		//默认颜色填充
		private var input:ArrayCollection = new ArrayCollection();
//		private var  item1:Array = [0xFF0000,0xFF00C6];
		private var  item2:Array = [0x73A1E6,0x0220E3];
		private var  item3:Array = [0xFFFF80,0x6B0000] ;
//		private var  item4:Array = [0xFF0000,0xFF00FF];
//		private var  item5:Array = [0x0000FF,0xFFFFFF];
//		private var  item6:Array = [0x000000,0xFFFFFF];
		private var  item7:Array = [0xF0ECAA,0x664830];
//		private var  item8:Array = [0xD3E5E8,0x2E648C];
		private var  item9:Array = [0xE5D5F2,0x5D2C70];
		private var  item10:Array = [0xD8F2ED,0x226633];
		/*private var  item11:Array = [0xFAD7F6,0x8F1139];
		private var  item12:Array = [0xFFE0E0,0x8F0A0A];
		private var  item13:Array = [0xD7F0AF,0x606B2D];
		private var  item14:Array = [0xDBDBDB,0x454545];*/
		private var  item15:Array = [0xADF1DE,0xA08D82];
		private var  item16:Array = [0xDFB8E6,0x700CF2];
//		private var  item17:Array = [0x700CF2,0x30CF92];
		private var  item18:Array = [0xFFCCFF,0xC700C7];
		private var preSelectIndex:int;
		public function DropDownColorList()
		{
			super();
			this.itemRenderer = new ClassFactory(DropDownColorItemRender);
			this.labelDisplay = new ColorLabel();
			this.setStyle("skinClass",DropDownColorListSkin);
			this.addEventListener(IndexChangeEvent.CHANGE,setSelectValue);
//			input.addItem(item1);
			input.addItem(item2);
			input.addItem(item3);
//			input.addItem(item4);
//			input.addItem(item5);
//			input.addItem(item6);
			input.addItem(item7);
//			input.addItem(item8);
			input.addItem(item9);
			input.addItem(item10);
//			input.addItem(item11);
//			input.addItem(item12);
//			input.addItem(item13);
//			input.addItem(item14);
			input.addItem(item15);
			input.addItem(item16);
//			input.addItem(item17);
			input.addItem(item18);
			this.dataProvider =input;
		}
		//下拉列表颜色分段绘制数目
		private var _steps:int =5;
		public function set steps(value:int):void
		{
			if(this._steps != value && value != 0)
			{
				this._steps = value;
				this.dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGE));
			}
		}
		public function get steps():int
		{
			return this._steps;
		}
			
		private function setSelectValue(event:Event):void
		{
			if(this.selectedIndex == -1  )
			{
				return;
			}
//			preSelectIndex = selectedIndex;
			var range:Array =  this.dataProvider[this.selectedIndex];
			selectColors =ColorGradient.generateTransitionalColor( range[0],range[1],this.steps);
			dispatchEvent(new DropDownColorIndexChangedEvent(DropDownColorIndexChangedEvent.INDEX_CHANGED,selectColors));
		}
	}
}