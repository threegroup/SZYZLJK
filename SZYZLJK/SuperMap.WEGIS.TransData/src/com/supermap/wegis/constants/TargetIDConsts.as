package com.supermap.wegis.constants
{
	
	/** 
	 * 服务端方法
	 * 
	 * @author supermap
	 */
	public class TargetIDConsts {
		
		/**  检索字段文件模板 :x开始,下面第一行是表类型,之后是检索字段,后是类型 如果是4型直接写内容 --------------------- xxxxxx 水电站：P202_0 水电站名称：1 装机容量(kW)：2 建成时间（年）：3 是否利用水库发电：是；否 --------------------- 检索数据库字典表模板 ；；RIVER_LENGTH；河流长度(km) ；；RIVER_AREA；流域面积(km2) --------------------- MdsDmServicesCatalogDao 的setSERVICE_ID要传一个值 */
		public static const ADVANCEDSEARCH_ADDFIELDS : String ="advancedsearch.AddFieldsLogic";
		
		/**  添加要查询条件字段信息 ---必填参数:服务ID--serviceID ---可填参数:可不填属性id--PROPERTY_ID ---请求data:GetSearchPropertiesRequestData ---返回data:GetSearchPropertiesResponseData */
		public static const ADVANCEDSEARCH_ADDSEARCHPROPERTIES : String ="advancedsearch.AddSearchPropertiesLogic";
		
		/**  删除查询条件字段信息 ---必填参数:服务ID--serviceID 属性id--PROPERTY_ID ---可填参数:可不填 ---请求data:GetSearchPropertiesRequestData ---返回data:GetSearchPropertiesResponseData */
		public static const ADVANCEDSEARCH_DELETESEARCHPROPERTIES : String ="advancedsearch.DeleteSearchPropertiesLogic";
		
		/**  执行多条件查询 ---必填参数:表名--tableName ---可填参数:无 ---请求data:GetSearchDataRequestData ---返回data:GetSearchDataResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHDATA : String ="advancedsearch.GetSearchDataLogic";
		
		/**  取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:GetSearchPropertiesRequestData ---返回data:GetSearchPropertiesResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHPROPERTIES : String ="advancedsearch.GetSearchPropertiesLogic";
		
		/**  修改属性字段 */
		public static const ADVANCEDSEARCH_UPDATEFIELDS : String ="advancedsearch.UpdateFieldsLogic";
		
		/**  添加申请审核列表信息的处理类 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_ADDAPPCHECK : String ="application.AddAppCheckLogic";
		
		/**  等值线面对外服务包装类（运行的时候gdal有关的dll需要拷贝到jdk的bin中） ---必填参数: x坐标数组字符串(经度)--pointsX,y坐标数组字符串(经度)--pointsY,z坐标数组字符串(高度)(也就是属性值)--pointsZ 二选一参数{步长信息（最小值,最大值,步长值）--stepInfo,等值线值的数组字符串--fValues} ---可填参数: 平滑系数--fSmooth,属性值数组字符串（不使用）--pointsP ---请求data:IsoLineRequestData ---返回data:IsoLineResponseData */
		public static const BUSINESS_ISOLINE : String ="business.IsoLineLogic";
		
		/**  添加区域目录树(没有实现) ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const CATALOG_ADDAREACATALOG : String ="catalog.AddAreaCatalogLogic";
		
		/**  添加服务节点 ---必填参数: ---可填参数: ---请求data:ServiceCatalogRequestData ---返回data:ResponseData */
		public static const CATALOG_ADDSERVICECATALOG : String ="catalog.AddServiceCatalogLogic";
		
		/**  添加服务底图处理类 ---必填参数: ---可填参数: ---请求data:ServiceCatalogRelRequestData ---返回data:ResponseData */
		public static const CATALOG_ADDSERVICECATALOGREL : String ="catalog.AddServiceCatalogRelLogic";
		
		/**  删除区域目录树(没有实现) ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const CATALOG_DELETEAREACATALOG : String ="catalog.DeleteAreaCatalogLogic";
		
		/**  删除服务目录 ---必填参数:节点ID--nodeId ---可填参数:服务Id--serviceId,节点路径Id--nodePathId,服务分类--serviceType ---请求data:ServiceCatalogRequestData ---返回data:ResponseData */
		public static const CATALOG_DELETESERVICECATALOG : String ="catalog.DeleteServiceCatalogLogic";
		
		/**  删除服务底图 ---必填参数: ---可填参数: ---请求data:ServiceCatalogRelRequestData ---返回data:ResponseData */
		public static const CATALOG_DELETESERVICECATALOGREL : String ="catalog.DeleteServiceCatalogRelLogic";
		
		/**  取得全部目录服务树 --必填参数: --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:GetServiceCatalogResponseData */
		public static const CATALOG_GETALLTYPESERVICECATALOG : String ="catalog.GetAllTypeServiceCatalogLogic";
		
		/**  取得区域目录树包含节点信息 --必填参数:父节点--parentNodeId,区域类型--areaType,树等级--treeLevel --可填参数: ---请求data:AreaCatalogRequestData ---返回data:GetAreaCatalogResponseData */
		public static const CATALOG_GETAREACATALOGHASNODES : String ="catalog.GetAreaCatalogHasNodesLogic";
		
		/**  取得区域目录树 --必填参数:父节点--parentNodeId,区域类型--areaType,树等级--treeLevel --可填参数: ---请求data:AreaCatalogRequestData ---返回data:GetAreaCatalogResponseData */
		public static const CATALOG_GETAREACATALOG : String ="catalog.GetAreaCatalogLogic";
		
		/**  编辑服务结点 --必填参数:服务分类--serviceType,节点是否可用--nodeState(0:禁用,1:可用状态),用户Id--userId,功能类型--functionType --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:GetServiceCatalogResponseData */
		public static const CATALOG_GETSERVICECATALOG : String ="catalog.GetServiceCatalogLogic";
		
		/**  得到服务结点 --必填参数:服务分类--serviceType,节点是否可用--nodeState(0:禁用,1:可用状态) --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:GetServiceCatalogResponseData */
		public static const CATALOG_GETSERVICECATALOGONLY : String ="catalog.GetServiceCatalogOnlyLogic";
		
		/**  查询服务底图处理 --必填参数:服务分类--serviceType,节点是否可用--nodeState(0:禁用,1:可用状态),用户Id--userId,功能类型--functionType --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:GetServiceCatalogResponseData */
		public static const CATALOG_GETSERVICECATALOGREL : String ="catalog.GetServiceCatalogRelLogic";
		
		/**  编辑服务结点 --必填参数:新父节点ID--newParentNodeId,节点ID--nodeId --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:ResponseData */
		public static const CATALOG_UPDATESERVICECATALOG : String ="catalog.UpdateServiceCatalogLogic";
		
		/**  编辑服务结点 --必填参数:新父节点ID--newParentNodeId,节点ID--nodeId --可填参数: ---请求data:ServiceCatalogRequestData ---返回data:ResponseData */
		public static const CATALOG_UPDATESERVICECATALOGNODE : String ="catalog.UpdateServiceCatalogNodeLogic";
		
		/**  更新服务底图 ---必填参数: ---可填参数: ---请求data:ServiceCatalogRelRequestData ---返回data:ResponseData */
		public static const CATALOG_UPDATESERVICECATALOGREL : String ="catalog.UpdateServiceCatalogRelLogic";
		
		/**  根据字段类型获取该类型的所有字段信息 ---必填参数:fieldTypeId(如果有多个可以用‘,’分割) ---可填参数: ---请求data:GetFieldLanguageRequestData ---返回data:GetFieldLanguageResponseData */
		public static const DATASHARE_GETCODENAMEBYFIELDTYPE : String ="datashare.GetCodeNameByFieldTypeLogic";
		
		/**  取得平台字段名称 ---必填参数: ---可填参数: ---请求data:GetFieldLanguageRequestData ---返回data:GetFieldLanguageResponseData */
		public static const DATASHARE_GETDOWNLOADINITIAL : String ="datashare.GetDownloadInitialLogic";
		
		/**  取得服务信息的处理类 ---必填参数:服务类型--serviceType ---可填参数:服务名称--serviceName,服务状态--serviceStatus,服务能力--serviceCapability ---请求data:ServiceRequestData ---返回data:GetServiceResponseData */
		public static const SERVICE_GETSERVICE : String ="service.GetServiceLogic";
		
		/**  测试logic */
		public static const TEST_TEST : String ="test.TestLogic";
		
		/**  添加上传文件的处理类 ---必填参数: ---可填参数: ---请求data: RequestData ---返回data:ResponseData */
		public static const UTILITY_ADDUPLOADFILE : String ="utility.AddUploadFileLogic";
		
		/**  操作日志拦截处理类 ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const UTILITY_AOPADVICE : String ="utility.AopAdviceLogic";
		
		/**  根据字段名称分类id获取字段列表 ---必填参数:字段名称分类ID--FIELD_TYPE_ID ---可填参数: ---请求data:ExMdsDeFieldLanguageDaoData ---返回data:ExMdsDeFieldLanguageDaoData */
		public static const UTILITY_CODENAME : String ="utility.CodeNameLogic";
		
		/**  公用的数据库处理方法类（例如获取序列、取得 Node Path ID、更新子树Path） ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const UTILITY_COMMONDB : String ="utility.CommonDBLogic";
		
		/**  删除上传文件的处理类 ---必填参数: ---可填参数: ---请求data: RequestData ---返回data:ResponseData */
		public static const UTILITY_DELETEUPLOADFILE : String ="utility.DeleteUploadFileLogic";
		
		/**  使用SuperMap组件对数据源进行数据编辑的一些常用方法 */
		public static const UTILITY_EDITSPACEDATA : String ="utility.EditSpaceDataLogic";
		
		/**  操作日志入库实现类 ---必填参数:系统业务日志表Dao--MdsLogOperateLogDaoData ---可填参数: ---请求data: ---返回data: */
		public static const UTILITY_EVIDENCEINSERT : String ="utility.EvidenceInsertLogic";
		
		/**  检查Sequence并返回新序列 ---必填参数:sequence名称--sequenceName ---可填参数: ---请求data:GetSequenceRequestData ---返回data:GetSequenceReponseData */
		public static const UTILITY_GETSEQUENCE : String ="utility.GetSequenceLogic";
		
		/**  返回上传文件信息的处理类 ---必填参数: ---可填参数: ---请求data: UploadFileRequestData ---返回data: UploadFileResponseData */
		public static const UTILITY_GETUPLOADFILE : String ="utility.GetUploadFileLogic";
		
		/**  检查用户登录Session ---必填参数:userId--userId ---可填参数: ---请求data:SessionRequestData ---返回data:ResponseData */
		public static const UTILITY_SESSIONCHECK : String ="utility.SessionCheckLogic";
		
		/**  更新上传文件信息处理类 ---必填参数: ---可填参数: ---请求data:RequestData ---返回data:ResponseData */
		public static const UTILITY_UPDATEUPLOADFILE : String ="utility.UpdateUploadFileLogic";
		
		/**  水情-雨量信息模块处理,调用服务地址.获取数据后存入map表 ---必填参数:Url ---请求data:GetServletDataToExcelRequestData ---返回data:GetServletDataToExcelResponseData */
		public static const BUSINESS_ADDREGIMESERVICES : String ="business.AddRegimeServicesLogic";
		
		/**  调用服务地址.获取数据后生成excel返回url ---必填参数:Url ---请求data:GetServletDataToExcelRequestData ---返回data:GetServletDataToExcelResponseData */
		public static const BUSINESS_GETSERVLETDATATOEXCEL : String ="business.GetServletDataToExcelLogic";
		
		/**  添加图例记录的处理类 ---必填参数: ---可填参数:图标符号类型--legendType,图标符号类型名称--legendTypeName,图标符号url--legendUrl,图标符号名称--legendName,图标符号别名--legendShort ---请求data:MapLegendRequestData ---返回data:ResponseData */
		public static const MAP_ADDMAPLEGEND : String ="map.AddMapLegendLogic";
		
		/**  添加地图的处理类 ---必填参数: ---可填参数:地图创建日期--mapCreateTime(时间的小时位必须是两位数) ---请求data:MapRequestData ---返回data:ResponseData */
		public static const MAP_ADDMAP : String ="map.AddMapLogic";
		
		/**  添加标注记录审核信息的处理类 ---必填参数:标绘id:markID ---必填参数:审核人ID:userID ---可填参数: ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_ADDMAPMARKCHECK : String ="map.AddMapMarkCheckLogic";
		
		/**  添加标注记录信息的处理类 ---必填参数: ---可填参数:标注时间--markDt(时间的小时位必须是两位数) ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_ADDMAPMARK : String ="map.AddMapMarkLogic";
		
		/**  添加标注记录信息的处理类 ---必填参数:MAP_NAME 地图名称 ---可填参数: ---请求data:MapMarkOnLineRequestData ---返回data:ResponseData */
		public static const MAP_ADDMAPMARKONLINE : String ="map.AddMapMarkOnLineLogic";
		
		/**  添加标注类型信息的处理类 ---必填参数:标注类型ID--markTypeId ---可填参数:标注时间--markDt(时间的小时位必须是两位数) ---请求data:MarkTypeRequestData ---返回data:MarkTypeResponseData */
		public static const MAP_ADDMARKTYPE : String ="map.AddMarkTypeLogic";
		
		/**  添加服务图例关系 ---必填参数:服务Id--serviceId,图例Id--legendId ---可填参数: ---请求data:ServiceLegendRelRequestData ---返回data:ResponseData */
		public static const MAP_ADDSERVICELEGENDREL : String ="map.AddServiceLegendRelLogic";
		
		/**  添加或修改标注记录信息的处理类 ---必填参数:遵循添加和删除的必填参数 ---可填参数:标注时间 --markDt(时间的小时位必须是两位数) ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_ADDUPDATEMAPMARK : String ="map.AddUpdateMapMarkLogic";
		
		/**  添加工作空间的处理类 ---必填参数: ---可填参数: ---请求data:WorkSpaceRequestData ---返回data:ResponseData */
		public static const MAP_ADDWORKSPACE : String ="map.AddWorkSpaceLogic";
		
		/**  删除图例信息的处理类 ---必填参数:图标符号ID--legendId ---可填参数: ---请求data:MapLegendRequestData ---返回data:ResponseData */
		public static const MAP_DELETEMAPLEGEND : String ="map.DeleteMapLegendLogic";
		
		/**  删除地图的处理类 ---必填参数:地图ID--mapId ---可填参数: ---请求data:MapRequestData ---返回data:ResponseData */
		public static const MAP_DELETEMAP : String ="map.DeleteMapLogic";
		
		/**  删除标注记录信息的处理类 ---必填参数:标注ID--markId ---可填参数: ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_DELETEMAPMARK : String ="map.DeleteMapMarkLogic";
		
		/**  删除标注记录信息的处理类 ---必填参数:mapid ---请求data:MapRequestData ---返回data:ResponseData */
		public static const MAP_DELETEMAPMARKONLINE : String ="map.DeleteMapMarkOnLineLogic";
		
		/**  删除标注类型信息的处理类 ---必填参数:标注类型ID--markTypeId ---请求data:MarkTypeRequestData ---返回data:MarkTypeResponseData */
		public static const MAP_DELETEMARKTYPE : String ="map.DeleteMarkTypeLogic";
		
		/**  删除服务图例关系 ---必填参数:服务ID--serviceId,图标符号ID--legendId ---可填参数: ---请求data:ServiceLegendRelRequestData ---返回data:ResponseData */
		public static const MAP_DELETESERVICELEGENDREL : String ="map.DeleteServiceLegendRelLogic";
		
		/**  删除工作空间的处理类 ---必填参数:工作空间ID--workspaceId ---可填参数: ---请求data:WorkSpaceRequestData ---返回data:ResponseData */
		public static const MAP_DELETEWORKSPACE : String ="map.DeleteWorkSpaceLogic";
		
		/**  成果图取得 ---必填参数: ---可填参数:服务名称--serviceName,服务来源--serviceSource,服务状态--serviceStatus(0:不可用;1:可用),服务类型--serviceType,更新时间--updateDt ---请求data:GetAchievementMapRequestData ---返回data:GetAchievementMapResponseData */
		public static const MAP_GETACHIEVEMENTMAP : String ="map.GetAchievementMapLogic";
		
		/**  根据坐标点获取该点所在的区域code执行类 ---必填参数:XY坐标(逗号隔开)--pointXY,区域级别--areaLevel,区域类型--areaType ---可填参数: ---请求data:GetAreaCodeByPointRequestData ---返回data:GetAreaCodeByPointResponseData */
		public static const MAP_GETAREACODEBYPOINT : String ="map.GetAreaCodeByPointLogic";
		
		/**  通过图例类型取得图例信息处理方法 ---必填参数: 图标符号类型--legendType ---可填参数: ---请求data:MapLegendRequestData ---返回data:MapLegendResponseData */
		public static const MAP_GETLEGENDBYTYPE : String ="map.GetLegendByTypeLogic";
		
		/**  取得图例类型处理方法 ---必填参数: ---可填参数: ---请求data:MapLegendRequestData ---返回data:MapLegendResponseData */
		public static const MAP_GETLEGENDTYPE : String ="map.GetLegendTypeLogic";
		
		/**  通过服务Id取得动态图例的处理类 ---必填参数:服务Id--serviceId ---可填参数: ---请求data:ServiceLegendRelRequestData ---返回data:MapLegendResponseData */
		public static const MAP_GETMAPLEGENDBYSERVICEID : String ="map.GetMapLegendByServiceIdLogic";
		
		/**  取得动态图例的处理类 ---必填参数:服务Id--serviceId,比例尺--scale ---可填参数: ---请求data:MapServiceLegendRelRequestData ---返回data:MapLegendResponseData */
		public static const MAP_GETMAPLEGEND : String ="map.GetMapLegendLogic";
		
		/**  获取地图的处理类 ---必填参数: ---可填参数:地图Id--mapId,用户Id--userId,地图名称--mapName ---请求data:MapRequestData ---返回data:MapResponseData */
		public static const MAP_GETMAP : String ="map.GetMapLogic";
		
		/**  审核人员取得审核记录信息列表的处理类 ---必填参数: ---可填参数: ---请求data:MapMarkCheckRequestData ---返回data:MapMarkCheckResponseData */
		public static const MAP_GETMAPMARKCHECK : String ="map.GetMapMarkCheckLogic";
		
		/**  审核人员获取标注待审核列表 仅获取当前角色级别以下的标注 ---必填参数:标绘类型markTypeId,审核状态checkStatus=3 ---可填参数: ---请求data:MapMarkRequestData ---返回data:MapMarkResponseData */
		public static const MAP_GETMAPMARKCHECKPREP : String ="map.GetMapMarkCheckPrepLogic";
		
		/**  执行导出在线纠错内容到excel文件 ---必填参数:用户Id--userId,类型4--mapType ---可填参数:地图Id--mapId,地图名称--mapName ---请求data:MapRequestData ---返回data:MapResponseData */
		public static const MAP_GETMAPMARKCORRECTIONEXCEL : String ="map.GetMapMarkCorrectionExcelLogic";
		
		/**  标绘人员取得标注记录信息的处理类 ---必填参数:用户id--markId,在线标注查询时必填mapId ---必填参数:标绘类型--markTitle ---可填参数: ---请求data:MapMarkRequestData ---返回data:MapMarkResponseData */
		public static const MAP_GETMAPMARK : String ="map.GetMapMarkLogic";
		
		/**  获取标注记录详细信息的处理类 ---必填参数:mapid ---可填参数: ---请求data:MapRequestData ---返回data:MapMarkOnLineResponseData */
		public static const MAP_GETMAPMARKONLINE : String ="map.GetMapMarkOnLineLogic";
		
		/**  雨水情等值面等值线获取地图的处理类 ---必填参数: ---可填参数:地图Id--mapId,用户Id--userId,地图名称--mapName ---请求data:MapRequestData ---返回data:MapResponseData */
		public static const MAP_GETMAPREGIME : String ="map.GetMapRegimeLogic";
		
		/**  查询标注类型分组处理类 ---必填参数: ---可填参数:地图创建日期--mapCreateTime(时间的小时位必须是两位数) ---请求data:MarkTypeRequestData ---返回data:MarkTypeResponseData */
		public static const MAP_GETMARKTYPEGROUP : String ="map.GetMarkTypeGroupLogic";
		
		/**  查询标注类型处理类 ---必填参数: ---可填参数:地图创建日期--mapCreateTime(时间的小时位必须是两位数) ---请求data:MapRequestData ---返回data:ResponseData */
		public static const MAP_GETMARKTYPE : String ="map.GetMarkTypeLogic";
		
		/**  通过服务id查询可查属性（没有实现） ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const MAP_GETPROPERTYFILTERBYSERVICEID : String ="map.GetPropertyFilterByServiceIDLogic";
		
		/**  获取工作空间的处理类 ---必填参数:工作空间Id:workspaceId,用户Id--userId ---可填参数: ---请求data:WorkSpaceRequestData ---返回data:WorkSpaceResponseData */
		public static const MAP_GETWORKSPACE : String ="map.GetWorkSpaceLogic";
		
		/**  通过关键字等查询地图要素 ---必填参数: ---可填参数: */
		public static const MAP_SEARCHMAPFEATUREWITHLUCENE : String ="map.SearchMapFeatureWithLuceneLogic";
		
		/**  修改图例信息的处理类 ---必填参数:图例Id--legendId ---可填参数: ---请求data:MapLegendRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAPLEGEND : String ="map.UpdateMapLegendLogic";
		
		/**  更新地图的处理类 ---必填参数:地图Id--mapId ---可填参数: ---请求data:MapRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAP : String ="map.UpdateMapLogic";
		
		/**  标注审核功能 处理审核状态以及是否写入空间库 ---必填参数:标注Id--markId ---可填参数: ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAPMARKCHECKAPPR : String ="map.UpdateMapMarkCheckApprLogic";
		
		/**  在线纠错审核功能 处理审核状态 ---必填参数:标注Id--markId ---可填参数: ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAPMARKCHECKCORRECTION : String ="map.UpdateMapMarkCheckCorrectionLogic";
		
		/**  修改标注审核信息的处理类 ---必填参数:遵循添加和删除的必填参数 ---可填参数:标注时间 --markDt(时间的小时位必须是两位数) ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAPMARKCHECK : String ="map.UpdateMapMarkCheckLogic";
		
		/**  编辑标注记录信息的处理类 ---必填参数:标注Id--markId ---可填参数: ---请求data:MapMarkRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEMAPMARK : String ="map.UpdateMapMarkLogic";
		
		/**  编辑标注类型信息的处理类 ---必填参数:标注类型ID--markTypeId ---可填参数:地图创建日期--mapCreateTime(时间的小时位必须是两位数) ---请求data:data:MarkTypeRequestData ---返回data:MarkTypeResponseData */
		public static const MAP_UPDATEMAPTYPE : String ="map.UpdateMapTypeLogic";
		
		/**  更新服务图例关系 ---必填参数:图例Id--legendId,服务Id--serviceId ---可填参数: ---请求data:ServiceLegendRelRequestData ---返回data:ResponseData */
		public static const MAP_UPDATESERVICELEGENDREL : String ="map.UpdateServiceLegendRelLogic";
		
		/**  更新工作空间的处理类 ---必填参数: 工作空间Id--workspaceId ---可填参数: ---请求data:WorkSpaceRequestData ---返回data:ResponseData */
		public static const MAP_UPDATEWORKSPACE : String ="map.UpdateWorkSpaceLogic";
		
		/**   */
		public static const MV_MV01TESTSESSION : String ="mv.MV01TestSessionLogic";
		
		/**  添加影像申请信息的处理类 ---必填参数: ---可填参数:采集日期--collectionDt(时间的小时位必须是两位数) ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_IMAGE_ADDAPPIMAGE : String ="application.image.AddAppImageLogic";
		
		/**  删除影像申请信息的处理类 ---必填参数:申请Id--applicationId ---可填参数: ---请求data:AppImageRequestData ---返回data:ResponseData */
		public static const APPLICATION_IMAGE_DELETEAPPIMAGE : String ="application.image.DeleteAppImageLogic";
		
		/**  取得影像申请信息的处理类 ---必填参数:申请Id--applicationId ---可填参数: ---请求data:AppImageRequestData ---返回data:AppImageResponseData */
		public static const APPLICATION_IMAGE_GETAPPIMAGE : String ="application.image.GetAppImageLogic";
		
		/**  更新影像数据申请(没有实现) ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const APPLICATION_IMAGE_UPDATEAPPIMAGE : String ="application.image.UpdateAppImageLogic";
		
		/**  添加服务申请详情的处理类 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICE_ADDAPPSERVICE : String ="application.service.AddAppServiceLogic";
		
		/**  删除服务申请使用详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICE_DELETEAPPSERVICE : String ="application.service.DeleteAppServiceLogic";
		
		/**  取得服务申请使用详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceRequestData ---返回data:AppServiceResponseData */
		public static const APPLICATION_SERVICE_GETAPPSERVICE : String ="application.service.GetAppServiceLogic";
		
		/**  更新服务申请使用详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICE_UPDATEAPPSERVICE : String ="application.service.UpdateAppServiceLogic";
		
		/**  添加服务聚合申请详情的处理类 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICEGROUP_ADDAPPSERVICEGROUP : String ="application.servicegroup.AddAppServiceGroupLogic";
		
		/**  删除服务聚合申请详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceGroupRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICEGROUP_DELETEAPPSERVICEGROUP : String ="application.servicegroup.DeleteAppServiceGroupLogic";
		
		/**  取得服务聚合申请详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceGroupRequestData ---返回data:AppServiceGroupResponseData */
		public static const APPLICATION_SERVICEGROUP_GETAPPSERVICEGROUP : String ="application.servicegroup.GetAppServiceGroupLogic";
		
		/**  更新服务聚合申请详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppServiceGroupRequestData ---返回data:ResponseData */
		public static const APPLICATION_SERVICEGROUP_UPDATEAPPSERVICEGROUP : String ="application.servicegroup.UpdateAppServiceGroupLogic";
		
		/**  添加专题图申请详情的处理类 ---必填参数: ---可填参数:创建日期--creatDt(时间的小时位必须是两位数) ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_THEMATIC_ADDAPPTHEMATIC : String ="application.thematic.AddAppThematicLogic";
		
		/**  删除专题图申请详情的处理类 ---必填参数:地图ID--mapId ---可填参数: ---请求data:AppThematicRequestData ---返回data:ResponseData */
		public static const APPLICATION_THEMATIC_DELETEAPPTHEMATIC : String ="application.thematic.DeleteAppThematicLogic";
		
		/**  取得服务申请详情的处理类 ---必填参数:申请ID--applicateId ---可填参数: ---请求data:AppThematicRequestData ---返回data:AppThematicResponseData */
		public static const APPLICATION_THEMATIC_GETAPPTHEMATIC : String ="application.thematic.GetAppThematicLogic";
		
		/**  更新专题图申请详情的处理类 ---必填参数:地图ID--mapId ---可填参数: ---请求data:AppThematicRequestData ---返回data:ResponseData */
		public static const APPLICATION_THEMATIC_UPDATEAPPTHEMATIC : String ="application.thematic.UpdateAppThematicLogic";
		
		/**  添加矢量申请信息的处理类 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const APPLICATION_VECTOR_ADDAPPVECTOR : String ="application.vector.AddAppVectorLogic";
		
		/**  删除矢量申请信息的处理类 ---必填参数:申请ID--applicationId ---可填参数: ---请求data:AppVectorRequestData ---返回data:ResponseData */
		public static const APPLICATION_VECTOR_DELETEAPPVECTOR : String ="application.vector.DeleteAppVectorLogic";
		
		/**  取得矢量申请信息的处理类 ---必填参数:申请ID--applicationId ---可填参数: ---请求data:AppVectorRequestData ---返回data:AppVectorResponseData */
		public static const APPLICATION_VECTOR_GETAPPVECTOR : String ="application.vector.GetAppVectorLogic";
		
		/**  更新矢量数据申请(没有实现) ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const APPLICATION_VECTOR_UPDATEAPPVECTOR : String ="application.vector.UpdateAppVectorLogic";
		
		/**  取得申请审核列表信息的处理类 ---必填参数: ---可填参数:分类--TYPE,申请内容--POP_URSE,状态--STATUS,申请ID--APPLICATION_DT ---请求data:CheckRequestData ---返回data:CheckResponseData */
		public static const CHECK_GETAPPCHECK : String ="check.GetAppCheckLogic";
		
		/**  取得申请信息 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const CHECK_GETAPPINFO : String ="check.GetAppInfoLogic";
		
		/**  得到申请审核初始化详情的处理类 ---必填参数: ---可填参数: ---请求data:GetFieldLanguageRequestData ---返回data:GetCheckInitialResponseData */
		public static const CHECK_GETCHECKINITIAL : String ="check.GetCheckInitialLogic";
		
		/**  更新申请审核信息的处理类 ---必填参数:申请ID--APPLICATION_ID ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const CHECK_UPDATEAPPCHECK : String ="check.UpdateAppCheckLogic";
		
		/**  添加部门的处理类 ---必填参数:部门名称--nodeName,部门简称--deptShortname,部门描述--descinfo,部门编号--nodeCode,有效时间--effectiveTime(时间的小时位数必须是两位),                  部门状态-deptStatus(0:无效待审核,1:是有效,-1:是驳回的),父节点--parentNodeId ---可填参数: ---请求data:DepartmentRequestData ---返回data:ResponseData */
		public static const DEPARTMENT_ADDDEPARTMENT : String ="department.AddDepartmentLogic";
		
		/**  删除部门的处理类 ---必填参数:部门ID--nodeId(如是多个，用”,“号分割),节点路径ID--nodePathId(如是多个，用”,“号分割) ---可填参数: ---请求data:DepartmentRequestData ---返回data:ResponseData */
		public static const DEPARTMENT_DELETEDEPARTMENT : String ="department.DeleteDepartmentLogic";
		
		/**  import java.util.ArrayList;import java.util.List;import cn.gov.mwr.common.organizationmanage.bean.OrganizationInfo;import cn.gov.mwr.common.organizationmanage.dao.OrganizationMngDao;import com.alibaba.fastjson.JSONObject;import com.supermap.wegis.constants.TableNameConst;import com.supermap.wegis.data.utils.CommonDBData;import com.supermap.wegis.services.constants.StatusConsts;import com.supermap.wegis.services.data.ResponseData;import com.supermap.wegis.services.logic.PropagationRequiredEvent;import com.supermap.wegis.services.msg.MessageConst;import com.supermap.wegis.services.utils.CommonUtils;import com.supermap.wegis.services.utils.MessageUtils;import com.supermap.wegis.services.utils.PropUtils;import com.supermap.wegis.transData.department.DepartmentData;import com.supermap.wegis.transData.department.DepartmentRequestData; */
		public static const DEPARTMENT_GETCADEPARTMENT : String ="department.GetCADepartmentLogic";
		
		/**  组织机构和用户树 ---必填参数: ---可填参数: ---请求data:null ---返回data:DepartmentAndUserTreeResponseData */
		public static const DEPARTMENT_GETDEPARTMENTANDUSERTREE : String ="department.GetDepartmentAndUserTreeLogic";
		
		/**  返回部门信息的处理类 ---必填参数: ---可填参数:部门Id--nodeId,部门名称--nodeName(查询条件) ---请求data:DepartmentRequestData ---返回data:DepartmentResponseData */
		public static const DEPARTMENT_GETDEPARTMENT : String ="department.GetDepartmentLogic";
		
		/**  返回组织机构树 ---必填参数: ---可填参数: ---请求data:null ---返回data:GetDepartmentTreeResponseData */
		public static const DEPARTMENT_GETDEPARTMENTTREE : String ="department.GetDepartmentTreeLogic";
		
		/**  部门授权初始化 ---必填参数:部门ID--nodeId ---可填参数: ---请求data:InitDepartmentAndFunctionRequestData ---返回data:InitDepartmentAndFunctionResponseData */
		public static const DEPARTMENT_INITDEPARTMENTANDROLE : String ="department.InitDepartmentAndRoleLogic";
		
		/**  部门授权处理 ---必填参数:部门ID--depId，角色ID--roleId(对个的话以“，”号形式隔开) ---可填参数: ---请求data:SaveDepartmentAndFunctionRequestData ---返回data:ResponseData */
		public static const DEPARTMENT_SAVEDEPARTMENTANDROLE : String ="department.SaveDepartmentAndRoleLogic";
		
		/**  更新部门信息处理类 ---必填参数:部门Id--nodeId,部门名称--nodeName,部门简称--deptShortname,部门描述--descinfo,部门编号--nodeCode, 有效时间--effectiveTime(时间的小时位数必须是两位),部门状态-deptStatus(0:无效待审核,1:是有效,-1:是驳回的) ---可填参数: ---请求data:DepartmentRequestData ---返回data:ResponseData */
		public static const DEPARTMENT_UPDATEDEPARTMENT : String ="department.UpdateDepartmentLogic";
		
		/**  添加服务日志 ---必填参数:用户ID--userId ---可填参数: ---请求data:LogServiceLogRequestData ---返回data:LogServiceLogResponseData */
		public static const LOG_ADDSERVICELOG : String ="log.AddServiceLogLogic";
		
		/**  删除系统业务日志 ---必填参数:记录ID--logId ---可填参数: ---请求data:LogOperateLogRequestData ---返回data:LogOperateLogResponseData */
		public static const LOG_DELETEOPERATELOG : String ="log.DeleteOperateLogLogic";
		
		/**  删除服务日志 ---必填参数:记录ID--pkId ---可填参数: ---请求data:LogServiceLogRequestData ---返回data:LogServiceLogResponseData */
		public static const LOG_DELETESERVICELOG : String ="log.DeleteServiceLogLogic";
		
		/**  查询系统业务日志 ---必填参数: ---可填参数:日志状态--logStatus,用户ID--userId,操作类型ID--operationType,部门ID--depID ---请求data:LogOperateLogRequestData ---返回data:LogOperateLogResponseData */
		public static const LOG_GETOPERATELOG : String ="log.GetOperateLogLogic";
		
		/**  返回系统业务日志树 ---必填参数: ---可填参数: ---请求data:null ---返回data:DepartmentAndUserTreeResponseData */
		public static const LOG_GETOPERATELOGTREE : String ="log.GetOperateLogTreeLogic";
		
		/**  查询服务日志列表 ---必填参数:记录ID--pkId ---可填参数: ---请求data:LogServiceLogRequestData ---返回data:LogServiceLogResponseData */
		public static const LOG_GETSERVICELOG : String ="log.GetServiceLogLogic";
		
		/**  用户登录 ---必填参数:用户ID--userId,登录密码--loginPwd ---可填参数: ---请求data:LoginRequestData ---返回data:LoginResponseData */
		public static const LOGIN_LOGIN : String ="login.LoginLogic";
		
		/**  用户注销 ---必填参数:用户ID--userId ---可填参数: ---请求data:LoginRequestData ---返回data:ResponseData */
		public static const LOGIN_LOGOUT : String ="login.LogoutLogic";
		
		/**  同水利部CA系统进行组织机构的同步 ---必填参数: ---可填参数: */
		public static const LOGIN_SYNCAORGANIZATION : String ="login.SynCAOrganizationLogic";
		
		/**  添加新闻目录的处理类 ---必填参数:类型名称--cataName,消息类型--cataType ---可填参数:排序索引--orderIndex ---请求data:NewsCatalogRequestData ---返回data:ResponseData */
		public static const NEWS_ADDNEWSCATALOG : String ="news.AddNewsCatalogLogic";
		
		/**  添加新闻信息的处理类 ---必填参数: CATA_ID ---可填参数: ---请求data:NewsCatalogRequestData ---返回data:ResponseData */
		public static const NEWS_ADDNEWS : String ="news.AddNewsLogic";
		
		/**  删除新闻目录的处理类 ---必填参数:类型ID--cataId ---可填参数: ---请求data:NewsCatalogRequestData ---返回data:ResponseData */
		public static const NEWS_DELETENEWSCATALOG : String ="news.DeleteNewsCatalogLogic";
		
		/**  删除新闻信息的处理类 ---必填参数:记录ID--noticeId,类型ID--cataId ---可填参数: ---请求data:NewsRequestData ---返回data:ResponseData */
		public static const NEWS_DELETENEWS : String ="news.DeleteNewsLogic";
		
		/**  返回新闻信息处理(该处理logic已经废除，请使用GetNewsLogic处理类) ---必填参数:消息类型--noticetype,分页的起始页--pageIndex,每页的记录数--pageSize ---可填参数:记录Id--cataId,开始时间--startTime(时间的小时位必须为两位数),结束时间--endTime(时间的小时位必须为两位数),消息名称--noticeTitle ---请求data:NewsRequestData ---返回data:NewsResponseData */
		public static const NEWS_GETNEWSBYTYPE : String ="news.GetNewsByTypeLogic";
		
		/**  返回新闻目录信息的处理类 ---必填参数: ---可填参数: ---请求data:NewsCatalogRequestData ---返回data:NewsCatalogResponseData */
		public static const NEWS_GETNEWSCATALOG : String ="news.GetNewsCatalogLogic";
		
		/**  返回新闻信息的处理类 ---必填参数: ---可填参数:记录Id--cataId,开始时间--startTime(时间的小时位必须为两位数),结束时间--endTime(时间的小时位必须为两位数),消息名称--noticeTitle,消息状态--status ---请求data:NewsRequestData ---返回data:NewsResponseData */
		public static const NEWS_GETNEWS : String ="news.GetNewsLogic";
		
		/**  ---必填参数:排序索引--orderIndex ---可填参数: ---请求data:NewsRequestData ---返回data:NewsOrderindexData */
		public static const NEWS_GETNEWSORDERINDEX : String ="news.GetNewsOrderindexLogic";
		
		/**  更新新闻目录信息的处理类 ---必填参数:类型ID--cataId ---可填参数: ---请求data:NewsCatalogRequestData ---返回data:ResponseData */
		public static const NEWS_UPDATENEWSCATALOGCOUNT : String ="news.UpdateNewsCatalogCountLogic";
		
		/**  更新新闻目录信息的处理类 ---必填参数:类型ID--cataId ---可填参数: ---请求data:NewsCatalogRequestData ---返回data:ResponseData */
		public static const NEWS_UPDATENEWSCATALOG : String ="news.UpdateNewsCatalogLogic";
		
		/**  更新新闻信息的处理类 ---必填参数:记录ID--noticeId ---可填参数: ---请求data:NewsRequestData ---返回data:ResponseData */
		public static const NEWS_UPDATENEWS : String ="news.UpdateNewsLogic";
		
		/**  添加功能信息的处理类 ---必填参数:权限名称--functionName,权限描述--functionDesc,节点是否可用--nodeState(0：禁用状态 1：可用状态；) ---可填参数: ---请求data:FunctionRequestData ---返回data:ResponseData */
		public static const ROLE_ADDFUNCTION : String ="role.AddFunctionLogic";
		
		/**  添加功能角色信息的处理类 ---必填参数:功能ID--functionId,角色ID--roleId ---可填参数: ---请求data:RoleFuncRelRequestData ---返回data:ResponseData */
		public static const ROLE_ADDROLEFUNCREL : String ="role.AddRoleFuncRelLogic";
		
		/**  添加角色的处理类 ---必填参数:角色名称--roleName,角色描述--descinfo,节点是否可用--nodeState(0：禁用状态 1：可用状态；) ---可填参数: ---请求data:RoleRequestData ---返回data:ResponseData */
		public static const ROLE_ADDROLE : String ="role.AddRoleLogic";
		
		/**  删除功能信息的处理类 ---必填参数:功能ID--nodeId(如是多个，用”,“号分割),节点路径ID--nodePathId(如是多个，用”,“号分割) ---可填参数: ---请求data:FunctionRequestData ---返回data:ResponseData */
		public static const ROLE_DELETEFUNCTION : String ="role.DeleteFunctionLogic";
		
		/**  删除功能角色关系信息的处理类 ---必填参数: ---可填参数:功能ID--functionId,角色ID--roleId ---请求data:RoleFuncRelRequestData ---返回data:ResponseData */
		public static const ROLE_DELETEROLEFUNCREL : String ="role.DeleteRoleFuncRelLogic";
		
		/**  删除角色的处理类 ---必填参数:角色ID--nodeId(如是多个，用”,“号分割),节点路径ID--nodePathId(如是多个，用”,“号分割) ---可填参数: ---请求data:RoleRequestData ---返回data:ResponseData */
		public static const ROLE_DELETEROLE : String ="role.DeleteRoleLogic";
		
		/**  得到FunctionKey的处理类 ---必填参数:sessionId,functionKey, ---可填参数:treeLevel ---请求data:FunctionRequestData ---返回data:FunctionResponseData */
		public static const ROLE_GETFUNCTIONKEY : String ="role.GetFunctionKeyLogic";
		
		/**  查询功能信息的处理类 ---必填参数:页数--pageIndex,每页显示条数--pageSize ---可填参数:功能名称--functionName,功能Id--nodeId ---请求data:FunctionRequestData ---返回data:FunctionResponseData */
		public static const ROLE_GETFUNCTION : String ="role.GetFunctionLogic";
		
		/**  获取Function表中用户的角色集合的 处理类 ---必填参数:用户ID--userId ---可填参数: ---请求data:UserRoleRequestData ---返回data:UserRoleResponseData */
		public static const ROLE_GETFUNCTIONROLE : String ="role.GetFunctionRoleLogic";
		
		/**  功能树处理类 ---必填参数: ---可填参数: ---请求data:null ---返回data:GetFunctionTreeResponseData */
		public static const ROLE_GETFUNCTIONTREE : String ="role.GetFunctionTreeLogic";
		
		/**  取得功能角色信息的处理类 ---必填参数: ---可填参数:功能ID--functionId,角色ID--roleId ---请求data:RoleFuncRelRequestData ---返回data:RoleFuncRelResponseData */
		public static const ROLE_GETROLEFUNCREL : String ="role.GetRoleFuncRelLogic";
		
		/**  返回用户所需信息的处理类 ---必填参数: ---可填参数:父节点--parentNodeId,角色名称--roleName ---请求data:RoleRequestData ---返回data:RoleResponseData */
		public static const ROLE_GETROLE : String ="role.GetRoleLogic";
		
		/**  返回角色的Tree信息 ---必填参数: ---可填参数: ---请求data:null ---返回data:GetRoleTreeResponseData */
		public static const ROLE_GETROLETREE : String ="role.GetRoleTreeLogic";
		
		/**  角色授权 界面初始化 ---必填参数:角色ID--roleId ---可填参数: ---请求data:InitRoleAndFunctionRequestData ---返回data:InitRoleAndFunctionResponseData */
		public static const ROLE_INITROLEANDFUNCTION : String ="role.InitRoleAndFunctionLogic";
		
		/**  角色授权处理类 ---必填参数:角色ID--roleId,权限ID集合--functionIds(如是多个，用”,“号分割),用户ID集合--userIds(如是多个，用”,“号分割) ---可填参数: ---请求data:SaveRoleAndFunctionRequestData ---返回data:ResponseData */
		public static const ROLE_SAVEROLEANDFUNCTION : String ="role.SaveRoleAndFunctionLogic";
		
		/**  更新功能信息的处理类 ---必填参数:功能Id--functionId,权限名称--functionName,权限描述--functionDesc,节点是否可用--nodeState(0：禁用状态 1：可用状态；) ---可填参数: ---请求data:FunctionRequestData ---返回data:ResponseData */
		public static const ROLE_UPDATEFUNCTION : String ="role.UpdateFunctionLogic";
		
		/**  编辑功能角色关系信息的处理类 ---必填参数:角色ID--roleId,功能Id--functionId ---可填参数: ---请求data:RoleFuncRelRequestData ---返回data:ResponseData */
		public static const ROLE_UPDATEROLEFUNCREL : String ="role.UpdateRoleFuncRelLogic";
		
		/**  更新角色信息的处理类 ---必填参数:角色ID--nodeId,新父节点--newParentNodeId ---可填参数: ---请求data:RoleRequestData ---返回data:ResponseData */
		public static const ROLE_UPDATEROLE : String ="role.UpdateRoleLogic";
		
		/**  添加用户部门关系的处理类 ---必填参数:部门ID--depId,用户ID--userId ---可填参数:角色ID--roleId ---请求data:UserDeptRelRequestData ---返回data:ResponseData */
		public static const USER_ADDUSERDEPTREL : String ="user.AddUserDeptRelLogic";
		
		/**  添加用户的处理类 ---必填参数:用户名--loginName,用户密码:loginPwd ---可填参数:用户名称--userName,用户电话--userPhone,地址--userAddress,邮箱--userEmail,用户编号--userNo ---请求data:UserRequestData ---返回data:ResponseData */
		public static const USER_ADDUSER : String ="user.AddUserLogic";
		
		/**  添加用户角色关系的处理类 ---必填参数:角色ID--roleId,用户ID--userId ---可填参数: ---请求data:UserRoleRequestData ---返回data:ResponseData */
		public static const USER_ADDUSERROLEREL : String ="user.AddUserRoleRelLogic";
		
		/**  删除用户部门关系的处理类 ---必填参数: ---可填参数:部门ID--depId,用户ID--userId ---请求data:UserDeptRelRequestData ---返回data:ResponseData */
		public static const USER_DELETEUSERDEPTREL : String ="user.DeleteUserDeptRelLogic";
		
		/**  删除用户的处理类 ---必填参数:用户ID--userId ---可填参数: ---请求data:UserRequestData ---返回data:ResponseData */
		public static const USER_DELETEUSER : String ="user.DeleteUserLogic";
		
		/**  删除用户角色关系的处理类 ---必填参数: ---可填参数:角色ID--roleId,用户Id--userId ---请求data:UserRoleRequestData ---返回data:ResponseData */
		public static const USER_DELETEUSERROLEREL : String ="user.DeleteUserRoleRelLogic";
		
		/**  import java.util.ArrayList;import java.util.List;import cn.gov.mwr.common.organizationmanage.dao.OrganizationMngDao;import cn.gov.mwr.common.usermanage.bean.UserInfo;import com.alibaba.fastjson.JSONObject;import com.supermap.wegis.dao.privileges.MdsDsDepartmentDao;import com.supermap.wegis.daodata.privileges.MdsDsDepartmentDaoData;import com.supermap.wegis.login.logic.SynCAOrganizationLogic;import com.supermap.wegis.services.data.ResponseData;import com.supermap.wegis.services.logic.PropagationRequiredEvent; */
		public static const USER_GETCAUSER : String ="user.GetCAUserLogic";
		
		/**  根据用户所在部门ID返回用户以及用户信息(该处理logic已经废除，请使用GetUserLogic处理类) ---必填参数:部门--depId ---可填参数: ---请求data:UserRequestData ---返回data:UserResponseData */
		public static const USER_GETUSERBYDEPTID : String ="user.GetUserByDeptIDLogic";
		
		/**  查询用户部门关系的处理类 ---必填参数:用户Id--userId ---可填参数: ---请求data:UserDeptRelRequestData ---返回data:UserDeptRelResponseData */
		public static const USER_GETUSERDEPTREL : String ="user.GetUserDeptRelLogic";
		
		/**  得到用户初始化信息的处理类(该处理logic已经废除，请使用GetUserLogic处理类) ---必填参数: ---可填参数: ---请求data:UserInitRequestData ---返回data:UserInitResponseData */
		public static const USER_GETUSERINITIAL : String ="user.GetUserInitialLogic";
		
		/**  返回用户所需信息 ---必填参数: ---可填参数:用户ID--userId,用户名--userName,登陆名--loginName ---请求data:UserRequestData ---返回data:UserResponseData */
		public static const USER_GETUSER : String ="user.GetUserLogic";
		
		/**  查询用户角色关系的处理类 ---必填参数: ---可填参数:用户ID--userId,角色ID--roleId ---请求data:UserRoleRequestData ---返回data:UserRoleResponseData */
		public static const USER_GETUSERROLEREL : String ="user.GetUserRoleRelLogic";
		
		/**  用户授权 界面初始化类 ---必填参数:用户ID--userId ---可填参数: ---请求data:InitUserRoleAndFunctionRequestData ---返回data:InitUserRoleAndFunctionResponseData */
		public static const USER_INITUSERROLEANDFUNCTION : String ="user.InitUserRoleAndFunctionLogic";
		
		/**  用户授权处理类 包括用户角色和用户权限 ---必填参数:用户ID--userId,角色ID--roleId, ---可填参数: ---请求data:SaveUserRoleAndFunctionRequestData ---返回data:ResponseData */
		public static const USER_SAVEUSERROLEANDFUNCTION : String ="user.SaveUserRoleAndFunctionLogic";
		
		/**  更新用户部门关系的处理类 ---必填参数:用户ID--userId ---可填参数: ---请求data:UserDeptRelRequestData ---返回data:ResponseData */
		public static const USER_UPDATEUSERDEPTREL : String ="user.UpdateUserDeptRelLogic";
		
		/**  更新用户的处理类 ---必填参数:用户ID--userId ---可填参数: ---请求data:UserRequestData ---返回data:ResponseData */
		public static const USER_UPDATEUSER : String ="user.UpdateUserLogic";
		
		/**  更新用户角色关系的处理类 ---必填参数:用户ID--userId ---可填参数: ---请求data:UserRoleRequestData ---返回data:ResponseData */
		public static const USER_UPDATEUSERROLEREL : String ="user.UpdateUserRoleRelLogic";
		
		/**  返回用户消息信息的处理类 ---必填参数: ---可填参数:记录Id--number,开始时间--startTime(时间的小时位必须为两位数),结束时间--endTime(时间的小时位必须为两位数),消息名称--title,消息状态--status ---请求data:UserSpaceRequestData ---返回data:UserSpaceResponseData */
		public static const USERSPACE_GETUSERSPACEMESSAGE : String ="userSpace.GetUserSpaceMessageLogic";
		
		/**  添加服务信息的处理类 ---必填参数: ---可填参数: ---请求data:CheckRequestData ---返回data:ResponseData */
		public static const SERVICE_ADDSERVICE : String ="service.AddServiceLogic";
		
		/**  删除注册的服务信息处理类 ---必填参数:服务对应的地图ID--mapId ---可填参数: ---请求data:RegServiceRequestData ---返回data:ResponseData */
		public static const SERVICE_DELETEREGSERVICEBYMAPID : String ="service.DeleteRegServiceByMapIDLogic";
		
		/**  删除注册的服务信息处理类 ---必填参数:服务ID--SERVICE_ID ---可填参数: ---请求data:RegServiceRequestData ---返回data:ResponseData */
		public static const SERVICE_DELETEREGSERVICE : String ="service.DeleteRegServiceLogic";
		
		/**  删除服务的处理类 ---必填参数:服务ID--SERVICE_ID ---可填参数: ---请求data:ServiceRequestData ---返回data:ResponseData */
		public static const SERVICE_DELETESERVICE : String ="service.DeleteServiceLogic";
		
		/**  取得注册的服务信息处理类 ---必填参数: ---可填参数:服务能力--SERVICE_CAPABILITY,服务ID--SERVICE_ID,服务对应的地图ID--MAP_ID,发布用户ID--USER_ID, 服务别名--SERVICE_ALIAS,服务来源--SERVICE_SOURCE,服务状态--SERVICE_STATUS,更新时间--UPDATE_DT,服务类型--SERVICE_TYPE ---请求data:ServiceRequestData ---返回data:GetServiceResponseData */
		public static const SERVICE_GETREGSERVICEBYMAPID : String ="service.GetRegServiceByMapIDLogic";
		
		/**  注册服务信息的处理类 ---必填参数: ---可填参数: ---请求data:RegServiceRequestData ---返回data:ResponseData */
		public static const SERVICE_REGISTSERVICE : String ="service.RegistServiceLogic";
		
		/**  更新注册服务信息的处理类 ---必填参数:服务ID--serviceId,服务状态--serviceStatus ---可填参数: ---请求data:ServiceRequestData ---返回data:ResponseData */
		public static const SERVICE_UPDATESERVICE : String ="service.UpdateServiceLogic";
		
		/**  全文检索和空间检索的处理类 */
		public static const LUCENE_EMERGENCYSEARCH : String ="lucene.EmergencySearchLogic";
		
		/**  全文检索和空间检索的处理类 */
		public static const LUCENE_LUCENESEARCH : String ="lucene.LuceneSearchLogic";
		
		/**  添加自定义查询历史记录 ---必填参数:查询名称--searchName ---可填参数:无 ---请求data:GetSearchCustomRequestData ---返回data:GetSearchCustomResponseData */
		public static const ADVANCEDSEARCH_ADDSEARCHCUSTOM : String ="advancedsearch.AddSearchCustomLogic";
		
		/**  删除自定义查询历史记录 ---必填参数:查询ID--searchId ---可填参数:无 ---请求data:GetSearchCustomRequestData ---返回data:GetSearchCustomResponseData */
		public static const ADVANCEDSEARCH_DELETESEARCHCUSTOM : String ="advancedsearch.DeleteSearchCustomLogic";
		
		/**  取得指定表全部的字典项信息 ---必填参数:searchDicTableName---字典表名 ---可填参数:无 ---请求data:GetSearchCustomDicInfoRequestData ---返回data:GetSearchCustomFieldsInfoResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHCUSTOMDICINFO : String ="advancedsearch.GetSearchCustomDicInfoLogic";
		
		/**  取得自定义查询单个要素的字段信息 ---必填参数:服务ID--serviceId(当前为middletype值) ---可填参数:无 ---请求data:GetSearchCustomFieldsInfoRequestData ---返回data:GetSearchCustomFieldsInfoResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHCUSTOMFIELDSINFO : String ="advancedsearch.GetSearchCustomFieldsInfoLogic";
		
		/**  取得自定义查询历史记录 ---必填参数:无 ---可填参数:查询ID--searchId,查询名称--searchName,用户ID--userId,服务ID--serviceId ---请求data:GetSearchCustomRequestData ---返回data:GetSearchCustomResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHCUSTOM : String ="advancedsearch.GetSearchCustomLogic";
		
		/**  取得自定义查询结果记录集 ---必填参数: ---可填参数:无 ---请求data:GetSearchCustomResultsRequestData ---返回data:GetSearchCustomResultsResponseData */
		public static const ADVANCEDSEARCH_GETSEARCHCUSTOMRESULTS : String ="advancedsearch.GetSearchCustomResultsLogic";
		
		/**  处理空间数据类 索引不进行分组 */
		public static const LUCENE_LUCENE0010SEARCH : String ="lucene.Lucene0010SearchLogic";
		
		/**  二级数据查询类 */
		public static const LUCENE_LUCENE0010SURVEYSEARCH : String ="lucene.Lucene0010SurveySearchLogic";
		
		/**  实时信息详情类 */
		public static const REALTIME_REALTIMEINFO : String ="realtime.RealTimeInfoLogic";
		
		/**  取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:GetSearchPropertiesRequestData ---返回data:GetSearchPropertiesResponseData */
		public static const SEARCH_GETDEFAULTCONDITIONS : String ="search.GetDefaultConditionsLogic";
		
		/**  取得文档资料查询的目录 ---必填参数: ---可填参数:无 ---请求data:GetDocCatalogRequestData ---返回data:GetDocCatalogResponsetData */
		public static const SEARCH_GETDOCCATALOG : String ="search.GetDocCatalogLogic";
		
		/**  取得文档资料查询的具体列表 ---必填参数: ---可填参数:无 ---请求data: ---返回data: */
		public static const SEARCH_GETDOCINFOLIST : String ="search.GetDocInfoListLogic";
		
		/**  获取主题数据 */
		public static const SEARCH_GETTHEMEINFODATA : String ="search.GetThemeInfoDataLogic";
		
		/**  获取基本主题条件查询 ---必填参数:基本主题表--themeTable ---可填参数:无 ---请求data:GetThemeConditionsRequestData ---返回data:GetThemeConditionsResponseData */
		public static const SUBJECT_GETSUBJECTBASICCONDITIONS : String ="subject.GetSubjectBasicConditionsLogic";
		
		/**  获取基本主题查询结果 ---必填参数: ---可填参数:无 ---请求data:GetThemeBasicRequestData ---返回data:GetThemeBasicResponseData */
		public static const SUBJECT_GETSUBJECTBASIC : String ="subject.GetSubjectBasicLogic";
		
		/**  获取深度主题(单独为河湖)查询结果 ---必填参数: ---可填参数:无 ---请求data:GetSubjectDepth4RLRequestData ---返回data:SearchResponseData */
		public static const SUBJECT_GETSUBJECTDEPTH4RL : String ="subject.GetSubjectDepth4RLLogic";
		
		/**  获取深度主题河流及其他对象定位信息。 */
		public static const SUBJECT_GETSUBJECTDEPTHLOCATE : String ="subject.GetSubjectDepthLocateLogic";
		
		/**  获取深度主题查询结果 ---必填参数: ---可填参数:无 ---请求data:GetSubjectDepthRequestData ---返回data:GetSubjectDepthResponseData */
		public static const SUBJECT_GETSUBJECTDEPTH : String ="subject.GetSubjectDepthLogic";
		
		/**  获取深度主题查询具体对象信息 ---必填参数:专题对应id值--subjectId,数据源对应的键值--tableKey,当前的钻取的级别--deepLevel ,行对应的主键--rowCode,列对应的类型--colCode,附属信息 --otherInfo ---可填参数:无 ---请求data:GetSubjectDepthObjectsRequestData ---返回data:GetSubjectDepthObjectsResponseData */
		public static const SUBJECT_GETSUBJECTDEPTHOBJECTS : String ="subject.GetSubjectDepthObjectsLogic";
		
		/**  获取专题分析列表 ---必填参数:专题分析类型--themeAnalyType ---可填参数:无 ---请求data:GetThemeAnalysisRequestData ---返回data:GetThemeAnalysisResponseData */
		public static const THEMEANALYSIS_DELETETHEMEANALYLIST : String ="themeanalysis.DeleteThemeAnalyListLogic";
		
		/**  获取专题分析列表 ---必填参数:专题分析类型--themeAnalyType ---可填参数:无 ---请求data:GetThemeAnalysisRequestData ---返回data:GetThemeAnalysisResponseData */
		public static const THEMEANALYSIS_GETTHEMEANALYLIST : String ="themeanalysis.GetThemeAnalyListLogic";
		
		/**  获取专题分析列表 ---必填参数:专题分析类型--themeAnalyType ---可填参数:无 ---请求data:GetThemeAnalysisRequestData ---返回data:GetThemeAnalysisResponseData */
		public static const THEMEANALYSIS_INSERTGETTHEMEANALY : String ="themeanalysis.InsertGetThemeAnalyLogic";
		
		/**  处理空间数据类 索引不进行分组 */
		public static const VECTOR_VECTOR0010SEARCH : String ="vector.Vector0010SearchLogic";
		
		/**空间分析子系统高亮*/
		public static const  VECTOR_SPATIALSEARCHLOGIC:String = "vector.SpatialSearchLogic";
		
		/**水资源，文件上传*/
		public static const  CHECK_GETEXECLINFODATALOGIC:String="check.GetExcelInfoDataLogic";
		
		/**  查询选中要素信息 */
		public static const  WRZ_GETWRZINFODATA:String = "wrz.GetWrzInfoDataLogic";
		
		/**  添加要素信息 */
		public static const  WRZ_ADDWRZINFODATA:String = "wrz.AddWrzInfoDataLogic";
		
		/**  删除要素信息要素信息 */
		public static const  WRZ_DELETEWRZINFODATA:String = "wrz.DeleteWrzInfoDataLogic";
		
		/**  查询选中要素信息 */
		public static  const WRZ_UPDATEWRZINFODATA:String = "wrz.UpdateWrzInfoDataLogic";
		
		/**  ---注册申请服务处理类 ---必填参数: ---可填参数:申请服务信息 ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPACCESSLOG_ADDSMPACESSLOG : String ="smpAccessLog.AddSmpAcessLogLogic";
		
		/**  ---保存每天AccessLog信息 ---必填参数: ---可填参数: ---请求data: ---返回data:SmpAccessKeyResponseData */
		public static const SMPACCESSLOG_GETSMPACCESSLOGLISTBYDAY : String ="smpAccessLog.GetSmpAccessLogListByDayLogic";
		
		/**  ---注册申请服务处理类 ---必填参数: ---可填参数:申请服务信息 ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPACCESSLOG_GETSMPSERVICEMAXROWSCAN : String ="smpAccessLog.GetSmpServiceMaxRowScanLogic";
		
		/**  ---查询服务处理类 ---必填参数: ---可填参数:服务type等服务信息 ---请求data:SmpDbServiceRequestData ---返回data:SmpDbServiceResponseData */
		public static const SMPDBSERVICE_GETSMPDBSERVICE : String ="smpDbService.GetSmpDbServiceLogic";
		
		/**  ---查询服务所有记录处理类 ---必填参数: ---可填参数:服务type等服务信息 ---请求data:SmpDbServiceRequestData ---返回data:SmpDbServiceResponseData */
		public static const SMPDBSERVICE_GETALLSMPDBSERVICELIST : String ="smpDbService.GetALLSmpDbServiceListLogic";
		
		/**  ---查询服务所有记录处理类 ---必填参数: ---可填参数:服务type等服务信息 ---请求data:SmpDbServiceRequestData ---返回data:SmpDbServiceResponseData */
		public static const SMPDBSERVICE_GETDBSERVICERESULT : String ="smpDbService.GetDbServiceResultLogic";
		
		/**  ---查询服务处理类 ---必填参数: ---可填参数:服务type等服务信息 ---请求data:SmpDbServiceRequestData ---返回data:SmpDbServiceResponseData */
		public static const SMPDBSERVICE_ADDSMPDBSERVICE : String ="smpDbService.AddSmpDbServiceLogic";
		
		/**  ---更新服务处理类 ---必填参数: ---可填参数:服务type等服务信息 ---请求data:SmpDbServiceRequestData ---返回data:SmpDbServiceResponseData */
		public static const SMPDBSERVICE_UPDATESMPDBSERVICE : String ="smpDbService.UpdateSmpDbServiceLogic";
		
		/**获取水功能区要素坐标*/
		public static  const WRZ_GETPOINTS:String = "wrz.GetPointsLogic";
		
		/**获取水资源要素变更统计信息*/
		public static const WRZ_GETSTATISTICSINFODATA:String = "wrz.GetStatisticsInfoDataLogic";
		
		/**根据区域code，获取区域空间属性相关信息*/
		public static const CATALOG_GETAREAINFOBYCODE:String = "catalog.GetAreaInfoByCodeLogic";
		
		/**根据区域code，获取区域附近的相关信息*/
		public static const  MAP_GETAREABYPOINT:String = "map.GetAreaByPointLogic";
		
		/**  根据点查询河流信息 */
		public static const  WRZ_GETRIVERINFOBYPOINTS:String = "wrz.GetRiverInfoByPointsLogic";
		
		/**  根据点查询行政边界信息 */
		public static const WRZ_GETAREAINFOBYPOINTS:String = "wrz.GetAreaInfoByPointsLogic";
		
		
		
		
		/**  ---获取状态列表信息 ---必填参数: ---可填参数:分类类型--codeType ---请求data:SmpCodeNamesRequestData ---返回data:SmpCodeNamesResponseData */
		public static const SMP_GETSMPCODENAMES : String ="smp.GetSmpCodeNamesLogic";
		
		/**  公用的数据库处理方法类（例如获取序列、取得 Node Path ID、更新子树Path） ---必填参数: ---可填参数: ---请求data: ---返回data: */
		public static const SMP_SMPCOMMONDB : String ="smp.SmpCommonDBLogic";
		
		/**   */
		public static const SMPDISALLOW_ADDSMPDISALLOW : String ="smpDisallow.AddSmpDisallowLogic";
		
		/**   */
		public static const SMPDISALLOW_DELETESMPDISALLOW : String ="smpDisallow.DeleteSmpDisallowLogic";
		
		/**   */
		public static const SMPDISALLOW_GETSMPDISALLOW : String ="smpDisallow.GetSmpDisallowLogic";
		
		/**  ---注册服务处理类 ---必填参数:服务ID--serviceID ---可填参数:服务详细信息 ---请求data:SmpServiceRequestData ---返回data:SmpServiceResponseData */
		public static const SMPSERVICE_ADDSMPSERVICE : String ="smpService.AddSmpServiceLogic";
		
		/**  ---删除服务处理类 ---必填参数:服务ID--serviceID ---可填参数: ---请求data:SmpServiceRequestData ---返回data:SmpServiceResponseData */
		public static const SMPSERVICE_DELETESMPSERVICE : String ="smpService.DeleteSmpServiceLogic";
		
		/**  ---查询可用服务处理类 ---必填参数: ---可填参数:服务ID--serviceID等服务信息 ---请求data:SmpServiceRequestData ---返回data:SmpServiceResponseData */
		public static const SMPSERVICE_GETSMPAVAILABLESERVICE : String ="smpService.GetSmpAvailableServiceLogic";
		
		/**  ---查询服务处理类 ---必填参数: ---可填参数:服务ID--serviceID等服务信息 ---请求data:SmpServiceRequestData ---返回data:SmpServiceResponseData */
		public static const SMPSERVICE_GETSMPSERVICE : String ="smpService.GetSmpServiceLogic";
		
		/**  ---更新服务处理类 ---必填参数:服务Id--serviceId ---可填参数:服务详细信息 ---请求data:SmpServiceRequestData ---返回data:SmpServiceResponseData */
		public static const SMPSERVICE_UPDATESMPSERVICE : String ="smpService.UpdateSmpServiceLogic";
		
		/**  删除连表查询信息 ---可填参数: ---请求data:SmpServiceCheckRequestData ---返回data:SmpServiceCheckResponseData */
		public static const SMPSERVICECHECK_DELETESMPSERVICECHECK : String ="smpServiceCheck.DeleteSmpServiceCheckLogic";
		
		/**  查看详情信息 ---可填参数: ---请求SmpServiceCheckRequestData ---返回data:SmpServiceCheckResponseData */
		public static const SMPSERVICECHECK_GETDETIAL : String ="smpServiceCheck.GetDetialLogic";
		
		/**  @(#)GetSmpServiceCheckLogic.java       2014-9-12 Copyright(C) 2012 supermap-wsdsap. All rights reserved. */
		public static const SMPSERVICECHECK_GETSMPSERVICECHECK : String ="smpServiceCheck.GetSmpServiceCheckLogic";
		
		/**  通过信息 ---可填参数: ---请求SmpServiceCheckRequestData ---返回data:SmpServiceCheckResponseData */
		public static const SMPSERVICECHECK_UPDATESMPSERVICECHECKPASS : String ="smpServiceCheck.UpdateSmpServiceCheckPassLogic";
		
		/**  驳回信息 ---可填参数: ---请求SmpServiceCheckRequestData ---返回data:SmpServiceCheckResponseData */
		public static const SMPSERVICECHECK_UPDATESMPSERVICECHECKREJECT : String ="smpServiceCheck.UpdateSmpServiceCheckRejectLogic";
		
		/**   */
		public static const SMPSERVICEUSE_ADDSMPSERVICEUSE : String ="smpServiceUse.AddSmpServiceUseLogic";
		
		/**   */
		public static const SMPSERVICEUSE_DELETESMPSERVICEUSELY : String ="smpServiceUse.DeleteSmpServiceUselyLogic";
		
		/**   */
		public static const SMPSERVICEUSE_GETSMPSERVICEUSE : String ="smpServiceUse.GetSmpServiceUseLogic";
		
		/**   */
		public static const SMPSERVICEUSE_UPDATESMPSERVICEUSE : String ="smpServiceUse.UpdateSmpServiceUseLogic";
		
		/**  新建系统管理查息 ---请求data:SmpSystemRequestData ---返回data:SmpSystemResponseData */
		public static const SMPSYSTEM_ADDSMPSYSTEM : String ="smpSystem.AddSmpSystemLogic";
		
		/**  ---删除系统处理类 ---必填参数:系统Code--SYSTEM_CODE ---可填参数: ---请求data:SmpSystemRequestData ---返回data:SmpSystemResponseData */
		public static const SMPSYSTEM_DELETESMPSYSTEM : String ="smpSystem.DeleteSmpSystemLogic";
		
		/**  获取已审核过系统列表 ---可填参数: ---请求data:SmpSystemRequestData ---返回data:SmpSystemResponseData */
		public static const SMPSYSTEM_GETSMPCHECKEDSYSTEM : String ="smpSystem.GetSmpCheckedSystemLogic";
		
		/**  系统管理查询信息 ---请求data:SmpSystemRequestData ---返回data:SmpSystemResponseData */
		public static const SMPSYSTEM_GETSMPSYSTEM : String ="smpSystem.GetSmpSystemLogic";
		
		/**  系统管理更新操作 ---请求data:SmpSystemRequestData ---返回data:SmpSystemResponseData */
		public static const SMPSYSTEM_UPDATESMPSYSTEM : String ="smpSystem.UpdateSmpSystemLogic";
		
		/**   */
		public static const SMPSYSTEMKEY_ADDSMPSYSTEMKEY : String ="smpSystemKey.AddSmpSystemKeyLogic";
		
		/**   */
		public static const SMPSYSTEMKEY_DELETESMPSYSTEMKEY : String ="smpSystemKey.DeleteSmpSystemKeyLogic";
		
		/**   */
		public static const SMPSYSTEMKEY_GETSMPSYSTEMKEY : String ="smpSystemKey.GetSmpSystemKeyLogic";
		
		/**   */
		public static const SMPSYSTEMKEY_UPDATESYSTEMKEY : String ="smpSystemKey.UpdateSystemKeyLogic";
		
		/**  ---注册申请服务处理类 ---必填参数: ---可填参数:申请服务信息 ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPUSEAPPLY_ADDSMPUSEAPPLY : String ="smpUseApply.AddSmpUseApplyLogic";
		
		/**  ---删除申请服务处理类 ---必填参数:申请ID--applyId ---可填参数:申请服务信息 ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPUSEAPPLY_DELETESMPUSEAPPLY : String ="smpUseApply.DeleteSmpUseApplyLogic";
		
		/**  ---查询申请服务信息处理类 ---必填参数:申请ID--applyId ---可填参数: ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPUSEAPPLY_GETSMPUSEAPPLY : String ="smpUseApply.GetSmpUseApplyLogic";
		
		/**  ---更新申请服务处理类 ---必填参数: ---可填参数:申请服务信息 ---请求data:SmpUseApplyRequestData ---返回data:SmpUseApplyResponseData */
		public static const SMPUSEAPPLY_UPDATESMPUSEAPPLY : String ="smpUseApply.UpdateSmpUseApplyLogic";
		
		/**  ---获取服务申请key----接受Data：SmpSystemRequestData,参数 传 code 跟IP*/
		public static const  SMP_GETSMPACCESSKEY:String = "smp.GetSmpAccessKeyLogic";
		
		/**河湖高亮GetRvLkInfoDataLogic*/
		public static const WRRVLK_GETRVLKVECTORPOINTS:String = "wrRvLk.GetRvLkVectorPointsLogic";
		
		//管理单位
		public static const WRRVLK_AddWrManageUnitInfoDataLogic:String = "wrRvLk.AddWrManageUnitInfoDataLogic";
		
		public static const WRRVLK_DeleteWrManageUnitInfoDataLogic:String = "wrRvLk.DeleteWrManageUnitInfoDataLogic";
		
		public static const WRRVLK_GetWrManageUnitInfoDataLogic:String = "wrRvLk.GetWrManageUnitInfoDataLogic";
		
		public static const WRRVLK_UpdateWrManageUnitInfoDataLogic:String = "wrRvLk.UpdateWrManageUnitInfoDataLogic";
		
		//管理单位2
		public static const WRRVLK_AddWrWaterAdmUnitInfoDataLogic:String = "wrRvLk.AddWrWaterAdmUnitInfoDataLogic";
		
		public static const WRRVLK_DeleteWrWaterAdmUnitInfoDataLogic:String = "wrRvLk.DeleteWrWaterAdmUnitInfoDataLogic";
		
		public static const WRRVLK_GetWrWaterAdmUnitInfoDataLogic:String = "wrRvLk.GetWrWaterAdmUnitInfoDataLogic";
		
		public static const WRRVLK_UpdateWrWaterAdmUnitInfoDataLogic:String = "wrRvLk.UpdateWrWaterAdmUnitInfoDataLogic";
		
		/**获取河流管理单位列表数据*/
		public static const WRRVLK_GetRvLkInfoDataLogic:String = "wrRvLk.GetRvLkInfoDataLogic";
		
		/**河流段更新，删除*/
		public static const WRRVLKSEC_UPDATEWRRVLKSECINFODATALOGIC:String = "wrRvLkSec.UpdateWrRvLkSecInfoDataLogic";
		
		public static const WRRVLKSEC_DELETEWRRVLKSECINFODATALOGIC:String = "wrRvLkSec.DeleteWrRvLkSecInfoDataLogic";
		
		/**  添加管理单位表信息 */
		public static const  WRMANAGEUNIT_ADDWRMANAGEUNITINFODATA:String = "wrManageUnit.AddWrManageUnitInfoDataLogic";
		
		/**  删除管理单位信息 */
		public static const  WRMANAGEUNIT_DELETEWRMANAGEUNITINFODATA:String = "wrManageUnit.DeleteWrManageUnitInfoDataLogic";
		
		/**  获取管理单位信息 */
		public static const  WRMANAGEUNIT_GETWRMANAGEUNITINFODATA:String = "wrManageUnit.GetWrManageUnitInfoDataLogic";
		
		/**  更新管理单位信息 */
		public static const  WRMANAGEUNIT_UPDATEWRMANAGEUNITINFODATA:String = "wrManageUnit.UpdateWrManageUnitInfoDataLogic";
		
		/**  添加水行政主管部门表信息 */
		public static const  WRWATERADMUNIT_ADDWRWATERADMUNITINFODATA:String = "wrWaterAdmUnit.AddWrWaterAdmUnitInfoDataLogic";
		
		/**  删除管理单位信息 */
		public static const  WRWATERADMUNIT_DELETEWRWATERADMUNITINFODATA:String = "wrWaterAdmUnit.DeleteWrWaterAdmUnitInfoDataLogic";
		
		/**  获取管理单位信息 */
		public static const  WRWATERADMUNIT_GETWRWATERADMUNITINFODATA:String = "wrWaterAdmUnit.GetWrWaterAdmUnitInfoDataLogic";
		
		/**  更新单位信息 */
		public static const  WRWATERADMUNIT_UPDATEWRWATERADMUNITINFODATA:String = "wrWaterAdmUnit.UpdateWrWaterAdmUnitInfoDataLogic";
		/**  获取在线人数 */
		public static const  WRWATERUSER_GETONLINEUSERS: String = "user.GetOnlineUsersLogic";
	}
}
