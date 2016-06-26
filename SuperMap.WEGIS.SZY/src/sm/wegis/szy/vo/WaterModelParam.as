package sm.wegis.szy.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
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
		
		/**查询结果导入，计算指标*/
		public var jisuanid:String;
		
		public var keyWord:String;
		
		//断面地形剖面相关数据
		/**最小距离*/
		public var minDistance:Number;
		/**最大距离*/
		public var maxDistance:Number;
		/**当前水位*/
		public var wpValue:Number;
		/**水位时相数据*/
		public var wpTimeData:Array = [];
		/**当期水位索引*/
		public var wpIndex:int = 0;
	}
}