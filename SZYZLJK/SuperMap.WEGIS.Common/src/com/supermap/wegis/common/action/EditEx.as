package com.supermap.wegis.common.action
{
	import com.supermap.web.actions.Edit;
	import com.supermap.web.actions.Pan;
	import com.supermap.web.core.Feature;
	import com.supermap.web.mapping.FeaturesLayer;
	import com.supermap.web.mapping.Map;
	import com.supermap.web.sm_internal;
	
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.KeyboardType;
	
	use namespace sm_internal;
	[Event(name="delFeature", type="com.supermap.wegis.common.action.EditEventEx")]
	public class EditEx extends Edit
	{
		private var KEY_DEL:uint = 46;
		private var featureLayer:FeaturesLayer;
		public function EditEx(map:Map, featureLayer:FeaturesLayer)
		{
			super(map, featureLayer);
			this.featureLayer = featureLayer;
			for each (var feature:Feature in featureLayer.features)
			{
				feature.removeEventListener(MouseEvent.CLICK, onFeatureClick);
				feature.addEventListener(MouseEvent.CLICK, onFeatureClick);
			}
		}
		
		protected function  onFeatureClick(event:MouseEvent):void
		{
			map.stage.addEventListener(KeyboardEvent.KEY_DOWN,keyDown);
		}
		
		private function keyDown(event:KeyboardEvent):void
		{
			var keyCode:uint = event.keyCode;
			if(keyCode == KEY_DEL )
			{
				if(tempFeature != null)
				{
					tempFeature.removeEventListener(MouseEvent.CLICK, onFeatureClick);
					map.stage.removeEventListener(KeyboardEvent.KEY_DOWN,keyDown);
					if(tempLayer != null)
					{
						tempLayer.clear();
					}
					featureLayer.removeFeature(tempFeature);
					dispatchEvent(new EditEventEx(EditEventEx.DEL_FEATURE,tempFeature));
				}
			}
		}
		
		override protected function  switchActionHandle():void
		{
			super.switchActionHandle();
			for each (var feature:Feature in featureLayer.features)
			{
				feature.removeEventListener(MouseEvent.CLICK, onFeatureClick);
			}
		}
	}
}