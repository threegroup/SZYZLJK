package sm.wegis.szy.vo
{
	import sm.wegis.szy.core.baseclass.ValueObjectBase;

	[Bindable]
	public class BaseMapVO extends ValueObjectBase
	{
		/**底图状态*/
		public var baseMapState:String;
		
		/**
		 * 矢量底图
		 */
		public var tdtVector:String;
		/**
		 * 矢量底图标签
		 */
		public var tdtVectorLabel:String;
		/**
		 * 影像底图
		 */
		public var tdtImage:String;
		/**
		 * 影像底图标签
		 */
		public var tdtImageLabel:String;
		
		/**水资源矢量底地图url*/
		public var waterResourceVectorMapUrl:String;
		
		/**水资源影像底图url*/
		public var waterResourceRasterMapUrl:String;
		
		/**水资源矢量遮罩底地图url*/
		public var waterResourceMaskVectorMapUrl:String;
		
		/**水资源影像遮罩底图url*/
		public var waterResourceMaskRasterMapUrl:String;
		
		/**水资源地图默认显示图层LayerIDS*/
		public var waterResourceBaseLayerIds:String
	}
}