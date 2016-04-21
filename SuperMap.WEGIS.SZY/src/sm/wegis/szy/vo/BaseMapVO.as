package sm.wegis.szy.vo
{
	import sm.wegis.szy.core.baseclass.ValueObjectBase;

	[Bindable]
	public class BaseMapVO extends ValueObjectBase
	{
		/**底图状态*/
		public var baseMapState:String;
		
		public  var baseVectorMapUrl:String;
		
		public  var baseImageMapUrl:String;
		
		/**水资源矢量底地图url*/
		public var waterResourceVectorMapUrl:String;
		
		/**水资源影像底图url*/
		public var waterResourceRasterMapUrl:String;
		
		/**水资源地图默认显示图层LayerIDS*/
		public var waterResourceBaseLayerIds:String
		
		/**水功能区地图地址*/
		public var sfzMapUrl:String;
		
		/**水功能区查询图层名称 */
		public var sfzLayerName:String;
		
		/**河流地图地址*/
		public var riverMapUrl:String;
		
		/**河流查询图层名称 */
		public var riverLayerName:String;
		
		/**县界地图地址*/
		public var countyMapUrl:String;
		
		/**县界查询图层名称*/
		public var countyLayerName:String;
		

	}
}