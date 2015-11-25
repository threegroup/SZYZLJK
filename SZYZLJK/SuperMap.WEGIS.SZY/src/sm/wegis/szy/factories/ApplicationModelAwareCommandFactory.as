package sm.wegis.szy.factories
{
	import com.adobe.cairngorm.commands.ICommand;
	
	import org.as3commons.lang.ClassUtils;
	import org.springextensions.actionscript.cairngorm.commands.ICommandFactory;
	import org.springextensions.actionscript.cairngorm.commands.ResponderCommandFactory;
	
	import sm.wegis.szy.core.baseclass.CommandBase;
	import sm.wegis.szy.models.ApplicationModelLocator;
	
	public class ApplicationModelAwareCommandFactory extends ResponderCommandFactory implements ICommandFactory
	{
		//模型定位器实例
		private var _modelLocator:ApplicationModelLocator;		
		
		public function get modelLocator():ApplicationModelLocator
		{
			return _modelLocator;
		}
		
		public function set modelLocator(value:ApplicationModelLocator):void
		{
			_modelLocator = value;
		}
		
		//构造函数
		public function ApplicationModelAwareCommandFactory()
		{
			super();
		}
		
		//判断能否创建实例
		override public function canCreate(clazz:Class):Boolean
		{
			if (ClassUtils.isSubclassOf(clazz, CommandBase)) {
				return super.canCreate(clazz);
			}
			return false;			
		}
		
		//根据配置文档创建命令
		override public function createCommand(clazz:Class):ICommand
		{
			var result:CommandBase  = super.createCommand(clazz) as CommandBase;
			result.modelLocator = _modelLocator;
			return result;
		}
	}
}