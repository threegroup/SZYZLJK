package sm.wegis.szy.vo
{
	import mx.collections.ArrayCollection;

	public class WaterModelParam
	{
		public function WaterModelParam()
		{
		}
		
		/**方案ID*/
		public var planId:String;
		
		/**断面ID*/
		public var dmId:String;
		
		/**河道ID*/
		public var hdId:String;
		
		/**断面&河道查询方法ID*/
		public var method:String;
		
		/**是否为查询断面对比数据*/
		public var isDmCompare:Boolean = false;
	}
}