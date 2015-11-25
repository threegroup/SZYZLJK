package sm.wegis.szy.core.baseclass
{
	import com.supermap.wegis.common.core.resourceManager.ResourceManagerEx;
	
	import mx.controls.Alert;

	public class ResponseHandler
	{
		public static function assertEquals(result:Object):Boolean
		{
			if(result.responseSts == -1)
			{
				Alert.show(result.message, "错误", Alert.OK, null, null, 
					ResourceManagerEx.FindResource("ERROR").cls);
				return false;
			}
			else if(result.responseSts == 1)
			{
				Alert.show(result.message, "提示", Alert.OK, null, null, 
					ResourceManagerEx.FindResource("TIP").cls);
				return true;
			}else
				return true;
		}
	}
}