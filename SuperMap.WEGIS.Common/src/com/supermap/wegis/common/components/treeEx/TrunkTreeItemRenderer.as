package com.supermap.wegis.common.components.treeEx
{
	import flash.display.Graphics;
	
	import mx.collections.ICollectionView;
	import mx.collections.IList;
	import mx.controls.Tree;
	import mx.controls.treeClasses.ITreeDataDescriptor;
	import mx.controls.treeClasses.TreeItemRenderer;
	
	/**带有连接线的Tree项呈现器*/
	public class TrunkTreeItemRenderer extends TreeItemRenderer
	{
		private var parentNode:Object;
		
		override public function set data(value:Object):void
		{
			super.data = value;
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);
			var tree:Tree = (owner as Tree);
			var desc:ITreeDataDescriptor = tree.dataDescriptor;
			var currentNode:Object = data;
			
			parentNode = tree.getParentItem(currentNode);
			var levelsUp:int = 0;
			var indentation:Number = tree.getStyle("indentation");
			
			graphics.clear();
			
			setData(currentNode,desc,w,h,levelsUp,indentation,tree);
		}
		
		private function setData(currentNode:Object,desc:ITreeDataDescriptor,w:Number,h:Number,levelsUp:int,indentation:Number,tree:Tree):void{
			while (parentNode != null)
			{
				var children:ICollectionView = desc.getChildren(parentNode);
				if (children is IList)
				{
					var itemIndex:int = (children as IList).getItemIndex(currentNode);
					var isLast:Boolean = (itemIndex == (children.length - 1));
					var isBegin:Boolean = itemIndex == 0;
					drawDottedLine(this.graphics, w, h, isLast, levelsUp, indentation);
					levelsUp++;
					currentNode = parentNode;
					parentNode = tree.getParentItem(parentNode);
				}
				else
				{
					break;
				}
			}
		}
		
		protected function drawDottedLine(g:Graphics, w:Number, h:Number, isLastItem:Boolean, levelsUp:int, indentation:Number):void
		{
			var midY:Number = Math.round(h / 2);
			var lineX:Number = 0;
			var deviation:int = - icon.height / 2;
			lineX = disclosureIcon.x + (disclosureIcon.width / 2);
			lineX = Math.floor(lineX);
			if (levelsUp > 0)
			{
				if (!isNaN(indentation) && (indentation > 0))
				{
					lineX = lineX - (levelsUp * indentation);
				}
				else
				{
					return;
				}
			}
			var lineY:Number = h - deviation;
			if (isLastItem)
			{
				if (levelsUp > 0)
				{
					return;
				}
			}
			if(levelsUp == 0){
				g.lineStyle(0.5,0x1155CC);
				drawBrokenLine(g,lineX,deviation-5,lineX,lineY/2-2,1,2);
			}else{
				g.lineStyle(0.5,0x1155CC);
				drawBrokenLine(g,lineX,deviation-10,lineX,lineY/2+2,1,2);
			}
			
			//levelsUp == 0 && data.@parentId.toString().length==0
			if (levelsUp == 0)
			{
				var startX:int = lineX;
				var endX:int = startX + indentation;
				if (isLastItem)
				{
					startX = lineX;
				}
				var startY:Number = midY;
				g.lineStyle(0.5,0x1155CC);
				drawBrokenLine(g,startX,startY,endX,startY,1,2);
			}
		}
		/**  
		 * 画线  
		 * @param g  
		 * @param fromX  
		 * @param fromY  
		 * @param toX  
		 * @param toY  
		 * @param solidLen      实线长度  
		 * @param brokenLen     虚线间隔  
		 */   
		public function drawBrokenLine(g:Graphics,fromX:Number,
									   fromY:Number,toX:Number,toY:Number,
									   solidLen:Number=5,brokenLen:Number=0):void   
		{   
			//如果间隔为0,直接画实线    
			if(brokenLen == 0 || solidLen == 0)   
			{   
				g.moveTo(fromX,fromY);   
				g.lineTo(toX,toY);   
				return;   
			}   
			//如果间隔不为0,画虚线    
			var xOffset:Number = toX - fromX;   
			var yOffset:Number = toY - fromY ;   
			//正切角度值    
			var atan:Number = Math.atan2(yOffset,xOffset);   
			//线的总长度    
			var totalLen:Number =Math.sqrt(Math.pow(xOffset,2)+Math.pow(yOffset,2));   
			//已经画线长度    
			var len:Number = 0;   
			//当前循环是否画实线    
			var isDrawSolid:Boolean = true;   
			var tempFX:Number = fromX;   
			var tempFY:Number = fromY;   
			while(totalLen>len)   
			{   
				len = isDrawSolid ? len + solidLen : len + brokenLen;   
				//利用三角函数,计算该段终点坐标    
				var tempTX:Number = Math.cos(atan)*len + fromX;   
				var tempTY:Number = Math.sin(atan)*len + fromY;   
				if(isDrawSolid)   
				{   
					g.moveTo(tempFX,tempFY);   
					g.lineTo(tempTX,tempTY);   
				}   
				isDrawSolid = !isDrawSolid;   
				tempFX = tempTX ;   
				tempFY = tempTY ;   
			}   
		}  
		
	}
} 
