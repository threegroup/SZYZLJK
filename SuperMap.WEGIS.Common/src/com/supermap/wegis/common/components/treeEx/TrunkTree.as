package com.supermap.wegis.common.components.treeEx
{
	import mx.controls.Tree;
	import mx.core.ClassFactory;
	
	public class TrunkTree extends Tree
	{
		public function TrunkTree()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			var factory:ClassFactory = new ClassFactory(TrunkTreeItemRenderer);
			itemRenderer = factory;
			
			super.createChildren();
		}
	}
}