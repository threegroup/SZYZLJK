package sm.wegis.szy.vo
{
	public class MapQueryVO
	{
		public function MapQueryVO()
		{
		}
		
		public var subSystemID:String = "";
		public var mainType:String="";
		public var typeIds:String="";
		/**查询关键字*/
        public var keyword:String="";	
		
		/**目标对象Id  */
		public var targetId:String = "";
	}
}