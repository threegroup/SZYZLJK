package sm.wegis.szy.core.utils
{
	import mx.collections.ArrayCollection;
	
	import spark.collections.Sort;
	import spark.collections.SortField;

	public class DataUtils
	{
		public function DataUtils()
		{
		}
		
		/**排序,默认升序*/
		public static function FieldSort(arrcol:ArrayCollection=null, 
								  field:String=null,
								  isnum:Boolean = false,
								  descending:Boolean= false):ArrayCollection
		{ 
			if(arrcol == null)
				return null;
			if(field == null)
				return null;
			var sort:Sort = new Sort(); 
			sort.fields = [new SortField(field, descending, isnum)]; 
			arrcol.sort = sort; 
			arrcol.refresh(); 
			return arrcol;
		}
	}
}