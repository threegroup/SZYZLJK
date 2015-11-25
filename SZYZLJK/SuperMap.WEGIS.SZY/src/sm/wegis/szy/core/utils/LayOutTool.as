package sm.wegis.szy.core.utils
{
	import com.supermap.wegis.common.core.resourceManager.ResourceInfo;
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import flash.events.MouseEvent;
	
	import sm.wegis.szy.core.baseclass.ToolBase;
	
	import spark.components.Group;
	import spark.components.Image;
	
	public class LayOutTool extends ToolBase
	{
		public function LayOutTool()
		{
			super();
		}
		
		//---------------------------/
		private var leftArrow:Class;
		private var leftArrow_a:Class;
		private var rightArrow:Class;
		private var rightArrow_a:Class;
		private var arrowIcon:Image = null;
		private var panel:Group = null;
		/**初始化界面左侧面板控制按钮*/
		public function initArrow(arrow:Image, controlPanel:Group):void
		{
			arrowIcon = arrow;
			panel = controlPanel;
			
			var la:ResourceInfo = ResourceManagerEx.FindResource("LeftArrow");
			var la_a:ResourceInfo = ResourceManagerEx.FindResource("LeftArrowA");
			var ra:ResourceInfo = ResourceManagerEx.FindResource("RightArrow");
			var ra_a:ResourceInfo = ResourceManagerEx.FindResource("RightArrowA");
			if(la != null)
				leftArrow = la.cls;
			if(la_a != null)
				leftArrow_a = la_a.cls;
			if(ra != null)
				rightArrow = ra.cls;
			if(ra_a != null)
				rightArrow_a = ra_a.cls;
			
			if(rightArrow != null)
			{
				this.arrowIcon.source = rightArrow;
				this.arrowIcon.toolTip = "关闭左侧面板";
			}
			this.arrowIcon.addEventListener(MouseEvent.CLICK, arrowClickHandler);
			this.arrowIcon.addEventListener(MouseEvent.MOUSE_OVER, arrowOverHandler)
			this.arrowIcon.addEventListener(MouseEvent.MOUSE_OUT, arrowOutHandler);
		}
		
		/**刷新指示器*/
		public function refresh():void
		{
			var visible:Boolean = this.panel.visible;
			if(rightArrow != null && leftArrow != null)
			{
				this.arrowIcon.source = visible?rightArrow:leftArrow;
				this.arrowIcon.toolTip = visible?"关闭左侧面板":"打开左侧面板";
			}
		}
		
		protected function arrowClickHandler(event:MouseEvent):void	{
			// TODO Auto-generated method stub
			var visible:Boolean = this.panel.visible;
			this.panel.visible = visible?false:true;
			var inLayout:Boolean = this.panel.includeInLayout;
			this.panel.includeInLayout = inLayout?false:true;
			if(rightArrow != null && leftArrow != null)
			{
				this.arrowIcon.source = this.panel.visible?rightArrow:leftArrow;
			}
		}
		
		private function arrowOverHandler(event:MouseEvent):void	{
			var visible:Boolean = this.panel.visible;
			if(rightArrow_a != null && leftArrow_a != null)
			{
				this.arrowIcon.source = visible?rightArrow_a:leftArrow_a;
				this.arrowIcon.toolTip = visible?"关闭左侧面板":"打开左侧面板";
			}
		}
		
		private function arrowOutHandler(event:MouseEvent):void	{
			var visible:Boolean = this.panel.visible;
			if(rightArrow != null && leftArrow != null)
			{
				this.arrowIcon.source = visible?rightArrow:leftArrow;
				this.arrowIcon.toolTip = visible?"关闭左侧面板":"打开左侧面板";
			}
		}
	}
}