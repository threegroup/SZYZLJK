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
	}
}