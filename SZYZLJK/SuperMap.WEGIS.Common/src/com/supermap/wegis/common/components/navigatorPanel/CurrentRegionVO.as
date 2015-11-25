package  com.supermap.wegis.common.components.navigatorPanel
{
	import com.supermap.web.core.Rectangle2D;

	[Bindable]
	public class CurrentRegionVO
	{
		/**当前区域名称*/
		public var areaName:String;
		/**当前区域编码*/
		public var areaCode:String;
		/**当前区域级别,省市县 1 2 3*/
		public var areaLevel:String;
		/**当前类型，行政- 0，流域- 1 ，水资源 2*/
		public var areaType:String;
		/**当前区域地理范围*/
		public var bounds:Rectangle2D;
		/**存储当前顶级区域级数*/
		public var regionStep:int;
		public function CurrentRegionVO(alias:String=null,code:String=null,level:String = null,filterType:String = null,bounds:Rectangle2D=null,regionStep:Number =-1)
		{
			this.areaName = alias;
			this.areaCode = code;
			this.areaLevel= level;
			this.areaType = filterType;
			this.bounds = bounds;
			this.regionStep = regionStep;
		}
	}
}