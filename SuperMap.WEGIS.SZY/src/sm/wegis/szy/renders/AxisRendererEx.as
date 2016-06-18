package  sm.wegis.szy.renders
{
	import mx.core.IDataRenderer;
	
	import spark.components.Label;
	
	public class AxisRendererEx extends Label implements IDataRenderer
	{
		public function AxisRendererEx()
		{
			super();
		}
		
		public function get data():Object
		{
			return null;
		}
		
		public function set data(value:Object):void{
			if(value == null)
				return;
			text = value.text;
		}
	}
}