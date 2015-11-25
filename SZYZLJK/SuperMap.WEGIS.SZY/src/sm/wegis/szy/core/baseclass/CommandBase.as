package sm.wegis.szy.core.baseclass
{
	import sm.wegis.szy.models.ApplicationModelLocator;
	
	import org.springextensions.actionscript.cairngorm.commands.AbstractResponderCommand;
	
	public class CommandBase extends AbstractResponderCommand
	{
		private var _modelLocator:ApplicationModelLocator;
		
		/**系统模型定位器*/
		public function get modelLocator():ApplicationModelLocator
		{
			return _modelLocator;
		}
		
		public function set modelLocator(value:ApplicationModelLocator):void
		{
			_modelLocator = value;
		}
		
		public function CommandBase()
		{
			super();
		}
	}
}