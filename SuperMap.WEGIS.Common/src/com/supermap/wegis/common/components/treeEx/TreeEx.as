package   com.supermap.wegis.common.components.treeEx
{
	import mx.collections.ArrayCollection;
	import mx.controls.Tree;
	import mx.events.TreeEvent;
	
	/**dataProver第一次length大于1,派发事件，展开树，展开根结点*/
	public class TreeEx extends Tree
	{
		/**第一次dataprovder.length >1 展开树*/
		private var _firstExtend:Boolean = false;
		/**是否是第一次复制dataprovider*/
		private var _dataProvderIsFirstNull:Boolean = false;
		private var _preOpenItems:Object;
		private var _dataProviderChangedNum:int = 0;//数据源变化次数		
		private var _dataProviderChanged:Boolean = false;

		public function TreeEx()
		{
			super();
		}
		
		override public function set dataProvider(value:Object):void
		{
			_preOpenItems = openItems;
			if(value != null && _dataProvderIsFirstNull == false )
			{
				_firstExtend = true;
				_dataProvderIsFirstNull = true;
			}
			super.dataProvider = value;
			if(value != null)
			{
				_dataProviderChangedNum++;
				_dataProviderChanged = true;
			}
			if(_firstExtend == true)
			{
				extendTree([dataProvider[0]],false);
				_firstExtend= false;
			}
			if(_preOpenItems != null && _dataProviderChangedNum >1 && _dataProviderChanged)
			{
				extendTree(_preOpenItems as Array);
				_dataProviderChanged = false;
			}
		}
		
		private function extendTree(items:Array,isRefash:Boolean = true):void
		{
			this.validateNow();
			var item:Object;
			if(isRefash) {
 				for each( item in items)
				{
					expandParents(item);
				}
			}else	{
				for each( item in items)
				{
					callLater(expandItem,[item, true]);
//					expandItem(item,true);
				}
			}
		}

		//根据提供的节点展开节点和parent节点
		private function expandParents(node:Object):void
		{
			var newNode:Object 
			newNode = getParallelismNode(node,dataProvider);
			if (newNode && !this.isItemOpen(newNode)) {
				callLater(expandItem,[newNode, true]);
//				expandItem(newNode,true);
			}
		}
		
		/**
		 * Funtion 由于替换了dataprovider值，所有要从当前的dataprovider中找到对应的item
		 *参数说明： 要比较的值，需要查找的dataprovider ，返回的值
		 * */
		
//		private function getParallelismNodeEx(item:Object,data:Object,returnValue:Object = null):Object
//		{
//			if(returnValue != null)
//			{
//				return returnValue;
//			}
//			 for each(var it:Object in data)
//			 {
//				 if(checkSameValue(it , item))
//				 {
//					 returnValue = it;
//					 return returnValue; 
//				 }else if(it.children != undefined)
//				 {
//					 returnValue =getParallelismNode(item,it.children,returnValue);
//				 }
//			 }
//			 return returnValue;
//		}
		
		private function getParallelismNode(item:Object,data:Object):Object
		{
			var returnValue:Object;
			for each(var it:Object in data)
			{
				if(checkSameValue(it , item))
				{
					returnValue = it;
					return returnValue; 
				}else if(it.children != undefined)
				{
					returnValue =getParallelismNode(item,it.children);
				}
			}
			return returnValue;
		}
		
		/**检查两个对象是否属性值一样*/
		private function checkSameValue(value1:Object,value2:Object):Boolean
		{
			if(value1.nodePathId == value2.nodePathId)
			{
				return true;
			}else {
				return false;
			}
		}
	}
}