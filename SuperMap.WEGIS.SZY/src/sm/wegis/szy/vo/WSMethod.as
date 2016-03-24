package sm.wegis.szy.vo
{
	public class WSMethod
	{
		public function WSMethod()
		{
		}

		//----------Web服务API--------//
		/**登录*/
		public static const Login:String = "login";
		/**关键字搜索目标对象*/
		public static const GetObjsBySearch:String = "getObjsBySearch";
		/**获取主体下的第一级类型*/
		public static const GetMainTypes:String = "getMainTypes";
		/***/
		public static const SearchTargets:String = "searchTargets";
		/**获取目标对象详细信息*/
		public static const GetObjsByType:String = "getObjsByType";
		/**获取下拉框中类型，各级通用*/
		public static const GetTypes:String = "getTypes";
		
		/**获取当个对象监测详细信息*/
		public static const GetTarget:String = "getTarget";
		
		/**获取对象详情信息*/
		public static const GetObjDetailInfo:String = "getObjDetailInfo";
		
		/**--------------水质评价查询接口------------*/
		/**查询水质评价模型点列表*/
		public static const GetSZPJDefaultObj:String = "getSZPJDefaultObj";
		/**查询水质评价河流列表*/
		public static const GetSZPJRiverList:String = "getSZPJRiverList";
		/**查询水质评价河流年份列表*/
		public static const GetSZPJYearList:String = "getSZPJYearList";
		/**查询水质评价周期列表*/
		public static const GetSZPJPeriodList:String = "getSZPJPeriodList";
		
		
		
	}
}