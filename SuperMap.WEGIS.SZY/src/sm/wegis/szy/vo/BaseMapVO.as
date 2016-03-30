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
		

	}
}