package com.supermap.wegis.transData.service
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务InfoData
 * 
 * 服务InfoData
 * 
 * @author supermap
 */
public class ServiceInfoData extends BaseData {

    /**  服务ID */
    private var _serviceId : String;

    /**  服务名称 */
    private var _serviceName : String;

    /**  服务别名 */
    private var _serviceAlias : String;

    /**  服务能力 */
    private var _serviceCapability : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  服务接口类型 */
    private var _serviceInterfaceType : String;

    /**  服务分类 */
    private var _serviceClass : String;

    /**  服务对应的图层 */
    private var _layerName : String;

    /**  数据服务代理URL */
    private var _dataServiceUrl : String;

    /**  代理原始服务地址 */
    private var _originUrl : String;

    /**  服务参数 */
    private var _serviceParameter : String;

    /**  聚合服务流名称 */
    private var _taskFlowName : String;

    /**  发布部门ID */
    private var _departId : String;

    /**  发布用户ID */
    private var _userId : String;

    /**  更新时间 */
    private var _updateDt : String;

    /**  版本信息 */
    private var _version : String;

    /**  摘要 */
    private var _summary : String;

    /**  关键信息 */
    private var _keyWord : String;

    /**  范围 */
    private var _bbox : String;

    /**  服务坐标系 */
    private var _coordinate : String;

    /**  服务操作格式 */
    private var _imageFormat : String;

    /**  服务发布源（是否本地发布） */
    private var _servicePubSource : String;

    /**  服务状态 */
    private var _serviceStatus : String;

    /**  服务审核状态 */
    private var _checkStatus : String;

    /**  服务审核信息 */
    private var _checkInfo : String;

    /**  服务预览图片 */
    private var _servicePreviewImage : String;

    /**  服务来源 */
    private var _serviceSource : String;

    /**  服务群ID */
    private var _serviceClusterId : String;

    /**  服务总体评价 */
    private var _serviceEval : String;

    /**  平均响应时间 */
    private var _serviceResponseTime : String;

    /**  访问量 */
    private var _hitNumber : String;

    /**  服务有效截止时间 */
    private var _effectiveTime : String;

    /**  序列开始时间 */
    private var _sequenceStart : String;

    /**  序列结束时间 */
    private var _sequenceEnd : String;

    /**  序列状态 */
    private var _sequenceState : String;

    /**  原始序列 */
    private var _sequenceOrgid : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  描述信息 */
    private var _descInfo : String;

    /**  服务对应的地图ID */
    private var _mapId : String;

    /**  节点ID */
    private var _nodeId : String;

    /**  底图ID */
    private var _baseMapId : String;

    /**  数据类型 */
    private var _dataType : String;

    /**  服务查询类型 */
    private var _middleType : String;

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名称
     * 
     * @param serviceName 服务名称
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
    }

    /** 
     *  服务别名曉夞丅
     * 
     * @return 服务别名
     */
    public function get serviceAlias():String {
        return this._serviceAlias;
    }

    /** 
     *  服务别名
     * 
     * @param serviceAlias 服务别名
     */
    public function set serviceAlias(serviceAlias : String):void {
        this._serviceAlias = serviceAlias
    }

    /** 
     *  服务能力曉夞丅
     * 
     * @return 服务能力
     */
    public function get serviceCapability():String {
        return this._serviceCapability;
    }

    /** 
     *  服务能力
     * 
     * @param serviceCapability 服务能力
     */
    public function set serviceCapability(serviceCapability : String):void {
        this._serviceCapability = serviceCapability
    }

    /** 
     *  服务类型曉夞丅
     * 
     * @return 服务类型
     */
    public function get serviceType():String {
        return this._serviceType;
    }

    /** 
     *  服务类型
     * 
     * @param serviceType 服务类型
     */
    public function set serviceType(serviceType : String):void {
        this._serviceType = serviceType
    }

    /** 
     *  服务接口类型曉夞丅
     * 
     * @return 服务接口类型
     */
    public function get serviceInterfaceType():String {
        return this._serviceInterfaceType;
    }

    /** 
     *  服务接口类型
     * 
     * @param serviceInterfaceType 服务接口类型
     */
    public function set serviceInterfaceType(serviceInterfaceType : String):void {
        this._serviceInterfaceType = serviceInterfaceType
    }

    /** 
     *  服务分类曉夞丅
     * 
     * @return 服务分类
     */
    public function get serviceClass():String {
        return this._serviceClass;
    }

    /** 
     *  服务分类
     * 
     * @param serviceClass 服务分类
     */
    public function set serviceClass(serviceClass : String):void {
        this._serviceClass = serviceClass
    }

    /** 
     *  服务对应的图层曉夞丅
     * 
     * @return 服务对应的图层
     */
    public function get layerName():String {
        return this._layerName;
    }

    /** 
     *  服务对应的图层
     * 
     * @param layerName 服务对应的图层
     */
    public function set layerName(layerName : String):void {
        this._layerName = layerName
    }

    /** 
     *  数据服务代理URL曉夞丅
     * 
     * @return 数据服务代理URL
     */
    public function get dataServiceUrl():String {
        return this._dataServiceUrl;
    }

    /** 
     *  数据服务代理URL
     * 
     * @param dataServiceUrl 数据服务代理URL
     */
    public function set dataServiceUrl(dataServiceUrl : String):void {
        this._dataServiceUrl = dataServiceUrl
    }

    /** 
     *  代理原始服务地址曉夞丅
     * 
     * @return 代理原始服务地址
     */
    public function get originUrl():String {
        return this._originUrl;
    }

    /** 
     *  代理原始服务地址
     * 
     * @param originUrl 代理原始服务地址
     */
    public function set originUrl(originUrl : String):void {
        this._originUrl = originUrl
    }

    /** 
     *  服务参数曉夞丅
     * 
     * @return 服务参数
     */
    public function get serviceParameter():String {
        return this._serviceParameter;
    }

    /** 
     *  服务参数
     * 
     * @param serviceParameter 服务参数
     */
    public function set serviceParameter(serviceParameter : String):void {
        this._serviceParameter = serviceParameter
    }

    /** 
     *  聚合服务流名称曉夞丅
     * 
     * @return 聚合服务流名称
     */
    public function get taskFlowName():String {
        return this._taskFlowName;
    }

    /** 
     *  聚合服务流名称
     * 
     * @param taskFlowName 聚合服务流名称
     */
    public function set taskFlowName(taskFlowName : String):void {
        this._taskFlowName = taskFlowName
    }

    /** 
     *  发布部门ID曉夞丅
     * 
     * @return 发布部门ID
     */
    public function get departId():String {
        return this._departId;
    }

    /** 
     *  发布部门ID
     * 
     * @param departId 发布部门ID
     */
    public function set departId(departId : String):void {
        this._departId = departId
    }

    /** 
     *  发布用户ID曉夞丅
     * 
     * @return 发布用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  发布用户ID
     * 
     * @param userId 发布用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  更新时间曉夞丅
     * 
     * @return 更新时间
     */
    public function get updateDt():String {
        return this._updateDt;
    }

    /** 
     *  更新时间
     * 
     * @param updateDt 更新时间
     */
    public function set updateDt(updateDt : String):void {
        this._updateDt = updateDt
    }

    /** 
     *  版本信息曉夞丅
     * 
     * @return 版本信息
     */
    public function get version():String {
        return this._version;
    }

    /** 
     *  版本信息
     * 
     * @param version 版本信息
     */
    public function set version(version : String):void {
        this._version = version
    }

    /** 
     *  摘要曉夞丅
     * 
     * @return 摘要
     */
    public function get summary():String {
        return this._summary;
    }

    /** 
     *  摘要
     * 
     * @param summary 摘要
     */
    public function set summary(summary : String):void {
        this._summary = summary
    }

    /** 
     *  关键信息曉夞丅
     * 
     * @return 关键信息
     */
    public function get keyWord():String {
        return this._keyWord;
    }

    /** 
     *  关键信息
     * 
     * @param keyWord 关键信息
     */
    public function set keyWord(keyWord : String):void {
        this._keyWord = keyWord
    }

    /** 
     *  范围曉夞丅
     * 
     * @return 范围
     */
    public function get bbox():String {
        return this._bbox;
    }

    /** 
     *  范围
     * 
     * @param bbox 范围
     */
    public function set bbox(bbox : String):void {
        this._bbox = bbox
    }

    /** 
     *  服务坐标系曉夞丅
     * 
     * @return 服务坐标系
     */
    public function get coordinate():String {
        return this._coordinate;
    }

    /** 
     *  服务坐标系
     * 
     * @param coordinate 服务坐标系
     */
    public function set coordinate(coordinate : String):void {
        this._coordinate = coordinate
    }

    /** 
     *  服务操作格式曉夞丅
     * 
     * @return 服务操作格式
     */
    public function get imageFormat():String {
        return this._imageFormat;
    }

    /** 
     *  服务操作格式
     * 
     * @param imageFormat 服务操作格式
     */
    public function set imageFormat(imageFormat : String):void {
        this._imageFormat = imageFormat
    }

    /** 
     *  服务发布源（是否本地发布）曉夞丅
     * 
     * @return 服务发布源（是否本地发布）
     */
    public function get servicePubSource():String {
        return this._servicePubSource;
    }

    /** 
     *  服务发布源（是否本地发布）
     * 
     * @param servicePubSource 服务发布源（是否本地发布）
     */
    public function set servicePubSource(servicePubSource : String):void {
        this._servicePubSource = servicePubSource
    }

    /** 
     *  服务状态曉夞丅
     * 
     * @return 服务状态
     */
    public function get serviceStatus():String {
        return this._serviceStatus;
    }

    /** 
     *  服务状态
     * 
     * @param serviceStatus 服务状态
     */
    public function set serviceStatus(serviceStatus : String):void {
        this._serviceStatus = serviceStatus
    }

    /** 
     *  服务审核状态曉夞丅
     * 
     * @return 服务审核状态
     */
    public function get checkStatus():String {
        return this._checkStatus;
    }

    /** 
     *  服务审核状态
     * 
     * @param checkStatus 服务审核状态
     */
    public function set checkStatus(checkStatus : String):void {
        this._checkStatus = checkStatus
    }

    /** 
     *  服务审核信息曉夞丅
     * 
     * @return 服务审核信息
     */
    public function get checkInfo():String {
        return this._checkInfo;
    }

    /** 
     *  服务审核信息
     * 
     * @param checkInfo 服务审核信息
     */
    public function set checkInfo(checkInfo : String):void {
        this._checkInfo = checkInfo
    }

    /** 
     *  服务预览图片曉夞丅
     * 
     * @return 服务预览图片
     */
    public function get servicePreviewImage():String {
        return this._servicePreviewImage;
    }

    /** 
     *  服务预览图片
     * 
     * @param servicePreviewImage 服务预览图片
     */
    public function set servicePreviewImage(servicePreviewImage : String):void {
        this._servicePreviewImage = servicePreviewImage
    }

    /** 
     *  服务来源曉夞丅
     * 
     * @return 服务来源
     */
    public function get serviceSource():String {
        return this._serviceSource;
    }

    /** 
     *  服务来源
     * 
     * @param serviceSource 服务来源
     */
    public function set serviceSource(serviceSource : String):void {
        this._serviceSource = serviceSource
    }

    /** 
     *  服务群ID曉夞丅
     * 
     * @return 服务群ID
     */
    public function get serviceClusterId():String {
        return this._serviceClusterId;
    }

    /** 
     *  服务群ID
     * 
     * @param serviceClusterId 服务群ID
     */
    public function set serviceClusterId(serviceClusterId : String):void {
        this._serviceClusterId = serviceClusterId
    }

    /** 
     *  服务总体评价曉夞丅
     * 
     * @return 服务总体评价
     */
    public function get serviceEval():String {
        return this._serviceEval;
    }

    /** 
     *  服务总体评价
     * 
     * @param serviceEval 服务总体评价
     */
    public function set serviceEval(serviceEval : String):void {
        this._serviceEval = serviceEval
    }

    /** 
     *  平均响应时间曉夞丅
     * 
     * @return 平均响应时间
     */
    public function get serviceResponseTime():String {
        return this._serviceResponseTime;
    }

    /** 
     *  平均响应时间
     * 
     * @param serviceResponseTime 平均响应时间
     */
    public function set serviceResponseTime(serviceResponseTime : String):void {
        this._serviceResponseTime = serviceResponseTime
    }

    /** 
     *  访问量曉夞丅
     * 
     * @return 访问量
     */
    public function get hitNumber():String {
        return this._hitNumber;
    }

    /** 
     *  访问量
     * 
     * @param hitNumber 访问量
     */
    public function set hitNumber(hitNumber : String):void {
        this._hitNumber = hitNumber
    }

    /** 
     *  服务有效截止时间曉夞丅
     * 
     * @return 服务有效截止时间
     */
    public function get effectiveTime():String {
        return this._effectiveTime;
    }

    /** 
     *  服务有效截止时间
     * 
     * @param effectiveTime 服务有效截止时间
     */
    public function set effectiveTime(effectiveTime : String):void {
        this._effectiveTime = effectiveTime
    }

    /** 
     *  序列开始时间曉夞丅
     * 
     * @return 序列开始时间
     */
    public function get sequenceStart():String {
        return this._sequenceStart;
    }

    /** 
     *  序列开始时间
     * 
     * @param sequenceStart 序列开始时间
     */
    public function set sequenceStart(sequenceStart : String):void {
        this._sequenceStart = sequenceStart
    }

    /** 
     *  序列结束时间曉夞丅
     * 
     * @return 序列结束时间
     */
    public function get sequenceEnd():String {
        return this._sequenceEnd;
    }

    /** 
     *  序列结束时间
     * 
     * @param sequenceEnd 序列结束时间
     */
    public function set sequenceEnd(sequenceEnd : String):void {
        this._sequenceEnd = sequenceEnd
    }

    /** 
     *  序列状态曉夞丅
     * 
     * @return 序列状态
     */
    public function get sequenceState():String {
        return this._sequenceState;
    }

    /** 
     *  序列状态
     * 
     * @param sequenceState 序列状态
     */
    public function set sequenceState(sequenceState : String):void {
        this._sequenceState = sequenceState
    }

    /** 
     *  原始序列曉夞丅
     * 
     * @return 原始序列
     */
    public function get sequenceOrgid():String {
        return this._sequenceOrgid;
    }

    /** 
     *  原始序列
     * 
     * @param sequenceOrgid 原始序列
     */
    public function set sequenceOrgid(sequenceOrgid : String):void {
        this._sequenceOrgid = sequenceOrgid
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序索引
     * 
     * @param orderIndex 排序索引
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

    /** 
     *  描述信息曉夞丅
     * 
     * @return 描述信息
     */
    public function get descInfo():String {
        return this._descInfo;
    }

    /** 
     *  描述信息
     * 
     * @param descInfo 描述信息
     */
    public function set descInfo(descInfo : String):void {
        this._descInfo = descInfo
    }

    /** 
     *  服务对应的地图ID曉夞丅
     * 
     * @return 服务对应的地图ID
     */
    public function get mapId():String {
        return this._mapId;
    }

    /** 
     *  服务对应的地图ID
     * 
     * @param mapId 服务对应的地图ID
     */
    public function set mapId(mapId : String):void {
        this._mapId = mapId
    }

    /** 
     *  节点ID曉夞丅
     * 
     * @return 节点ID
     */
    public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  节点ID
     * 
     * @param nodeId 节点ID
     */
    public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  底图ID曉夞丅
     * 
     * @return 底图ID
     */
    public function get baseMapId():String {
        return this._baseMapId;
    }

    /** 
     *  底图ID
     * 
     * @param baseMapId 底图ID
     */
    public function set baseMapId(baseMapId : String):void {
        this._baseMapId = baseMapId
    }

    /** 
     *  数据类型曉夞丅
     * 
     * @return 数据类型
     */
    public function get dataType():String {
        return this._dataType;
    }

    /** 
     *  数据类型
     * 
     * @param dataType 数据类型
     */
    public function set dataType(dataType : String):void {
        this._dataType = dataType
    }

    /** 
     *  服务查询类型曉夞丅
     * 
     * @return 服务查询类型
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  服务查询类型
     * 
     * @param middleType 服务查询类型
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
