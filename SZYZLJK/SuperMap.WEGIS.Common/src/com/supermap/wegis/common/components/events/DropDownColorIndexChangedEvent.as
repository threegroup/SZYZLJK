/**
 *author:wangjl
 * date:2013-02-27
 * function DropDownColorList事件 
 */
package     com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	import mx.collections.ArrayCollection;
	public class DropDownColorIndexChangedEvent extends Event
	{
		/**选择索引发生变化*/
		public static const INDEX_CHANGED:String = "IndexChanged";
		/**返回的颜色数组*/
		public var colors:ArrayCollection ;
		public function DropDownColorIndexChangedEvent(type:String,colors:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.colors = colors;
		}
	}
}