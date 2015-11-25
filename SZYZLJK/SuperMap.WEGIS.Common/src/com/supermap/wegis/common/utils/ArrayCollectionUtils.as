package com.supermap.wegis.common.utils
{
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;

	public class ArrayCollectionUtils
	{
		/**数据ArrayCollection排序,默认升序
		 * @param arrcol 要排序数组
		 * @param fields 排序字段数组
		 * @param descendings 每个字段是否降序数组
		 * @param isnums 每个字段是否按数值排序数组
		 * */
		public  static function FieldSort(arrcol:ArrayCollection, 
								  fields:Array,
								  descendings:Array= null,
								  isnums:Array = null):ArrayCollection
		{ 
			if(arrcol == null)
				return null;
			if(fields == null)
				return null;
			var sort:Sort = new Sort();
			var sortFields:Array = [];
			for (var index:int = 0 ;index < fields.length ;index++)
			{
				var sortField:SortField = new SortField(fields[index]);
				if (descendings != null &&  descendings.length  > index)
				{
					sortField.descending = descendings[index];
				}
				if (isnums != null &&  isnums.length  > index)
				{
					sortField.numeric = isnums[index];
				}
				sortFields.push(sortField);
			}
			sort.fields = sortFields; 
			arrcol.sort = sort; 
			arrcol.refresh(); 
			return arrcol;
		}
	}
}