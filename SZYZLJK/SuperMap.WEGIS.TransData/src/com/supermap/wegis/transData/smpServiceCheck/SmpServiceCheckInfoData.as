package com.supermap.wegis.transData.smpServiceCheck
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务审核表Dao出参数
 * 
 * 服务审核表Dao出参数
 * 
 * @author supermap
 */
public class SmpServiceCheckInfoData extends BaseData {

    /**  申请id */
    private var _applyId : String;

    /**  申请系统code */
    private var _applySysId : String;

    /**  申请时间 */
    private var _applyDt : String;

    /**  使用目的 */
    private var _applyUseage : String;

    /**  申请审核状态 */
    private var _applyCheckStatus : String;

    /**  驳回id */
    private var _applyDisallowId : String;

    /**  用户id */
    private var _userId : String;

    /**  系统代码 */
    private var _systemCode : String;

    /**  系统名称 */
    private var _systemName : String;

    /**  系统ip列表 */
    private var _ipList : String;

    /**  描述 */
    private var _descInfo : String;

    /**  关键信息 */
    private var _keyWord : String;

    /**  创建用户id */
    private var _createUserId : String;

    /**  创建时间 */
    private var _createDt : String;

    /**  系统运行状态 */
    private var _SystemRunStatus : String;

    /**  系统审核状态 */
    private var _systemCheckStatus : String;

    /**  驳回id */
    private var _systemDisallowId : String;

    /**  父系统id */
    private var _parentId : String;

    /**  起时间 */
    private var _startTime : String;

    /**  终时间 */
    private var _endTime : String;

    /**  方法类型 */
    private var _type : String;

    /**  系统运行状态名 */
    private var _systemRunStatusName : String;

    /**  系统审核状态名 */
    private var _systemCheckStatusName : String;

    /**  服务申请审核状态名 */
    private var _applyCheckStatusName : String;

    /**  服务名 */
    private var _serviceName : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  发布系统id */
    private var _publishSystemId : String;

    /**  代码名 */
    private var _codeName : String;

    /**  服务id */
    private var _serviceId : String;

    /**  代码 */
    private var _Code : String;

    /**  访问key */
    private var _accessKey : String;

    /** 
     *  申请id曉夞丅
     * 
     * @return 申请id
     */
    public function get applyId():String {
        return this._applyId;
    }

    /** 
     *  申请id
     * 
     * @param applyId 申请id
     */
    public function set applyId(applyId : String):void {
        this._applyId = applyId
    }

    /** 
     *  申请系统code曉夞丅
     * 
     * @return 申请系统code
     */
    public function get applySysId():String {
        return this._applySysId;
    }

    /** 
     *  申请系统code
     * 
     * @param applySysId 申请系统code
     */
    public function set applySysId(applySysId : String):void {
        this._applySysId = applySysId
    }

    /** 
     *  申请时间曉夞丅
     * 
     * @return 申请时间
     */
    public function get applyDt():String {
        return this._applyDt;
    }

    /** 
     *  申请时间
     * 
     * @param applyDt 申请时间
     */
    public function set applyDt(applyDt : String):void {
        this._applyDt = applyDt
    }

    /** 
     *  使用目的曉夞丅
     * 
     * @return 使用目的
     */
    public function get applyUseage():String {
        return this._applyUseage;
    }

    /** 
     *  使用目的
     * 
     * @param applyUseage 使用目的
     */
    public function set applyUseage(applyUseage : String):void {
        this._applyUseage = applyUseage
    }

    /** 
     *  申请审核状态曉夞丅
     * 
     * @return 申请审核状态
     */
    public function get applyCheckStatus():String {
        return this._applyCheckStatus;
    }

    /** 
     *  申请审核状态
     * 
     * @param applyCheckStatus 申请审核状态
     */
    public function set applyCheckStatus(applyCheckStatus : String):void {
        this._applyCheckStatus = applyCheckStatus
    }

    /** 
     *  驳回id曉夞丅
     * 
     * @return 驳回id
     */
    public function get applyDisallowId():String {
        return this._applyDisallowId;
    }

    /** 
     *  驳回id
     * 
     * @param applyDisallowId 驳回id
     */
    public function set applyDisallowId(applyDisallowId : String):void {
        this._applyDisallowId = applyDisallowId
    }

    /** 
     *  用户id曉夞丅
     * 
     * @return 用户id
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户id
     * 
     * @param userId 用户id
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  系统代码曉夞丅
     * 
     * @return 系统代码
     */
    public function get systemCode():String {
        return this._systemCode;
    }

    /** 
     *  系统代码
     * 
     * @param systemCode 系统代码
     */
    public function set systemCode(systemCode : String):void {
        this._systemCode = systemCode
    }

    /** 
     *  系统名称曉夞丅
     * 
     * @return 系统名称
     */
    public function get systemName():String {
        return this._systemName;
    }

    /** 
     *  系统名称
     * 
     * @param systemName 系统名称
     */
    public function set systemName(systemName : String):void {
        this._systemName = systemName
    }

    /** 
     *  系统ip列表曉夞丅
     * 
     * @return 系统ip列表
     */
    public function get ipList():String {
        return this._ipList;
    }

    /** 
     *  系统ip列表
     * 
     * @param ipList 系统ip列表
     */
    public function set ipList(ipList : String):void {
        this._ipList = ipList
    }

    /** 
     *  描述曉夞丅
     * 
     * @return 描述
     */
    public function get descInfo():String {
        return this._descInfo;
    }

    /** 
     *  描述
     * 
     * @param descInfo 描述
     */
    public function set descInfo(descInfo : String):void {
        this._descInfo = descInfo
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
     *  创建用户id曉夞丅
     * 
     * @return 创建用户id
     */
    public function get createUserId():String {
        return this._createUserId;
    }

    /** 
     *  创建用户id
     * 
     * @param createUserId 创建用户id
     */
    public function set createUserId(createUserId : String):void {
        this._createUserId = createUserId
    }

    /** 
     *  创建时间曉夞丅
     * 
     * @return 创建时间
     */
    public function get createDt():String {
        return this._createDt;
    }

    /** 
     *  创建时间
     * 
     * @param createDt 创建时间
     */
    public function set createDt(createDt : String):void {
        this._createDt = createDt
    }

    /** 
     *  系统运行状态曉夞丅
     * 
     * @return 系统运行状态
     */
    public function get SystemRunStatus():String {
        return this._SystemRunStatus;
    }

    /** 
     *  系统运行状态
     * 
     * @param SystemRunStatus 系统运行状态
     */
    public function set SystemRunStatus(SystemRunStatus : String):void {
        this._SystemRunStatus = SystemRunStatus
    }

    /** 
     *  系统审核状态曉夞丅
     * 
     * @return 系统审核状态
     */
    public function get systemCheckStatus():String {
        return this._systemCheckStatus;
    }

    /** 
     *  系统审核状态
     * 
     * @param systemCheckStatus 系统审核状态
     */
    public function set systemCheckStatus(systemCheckStatus : String):void {
        this._systemCheckStatus = systemCheckStatus
    }

    /** 
     *  驳回id曉夞丅
     * 
     * @return 驳回id
     */
    public function get systemDisallowId():String {
        return this._systemDisallowId;
    }

    /** 
     *  驳回id
     * 
     * @param systemDisallowId 驳回id
     */
    public function set systemDisallowId(systemDisallowId : String):void {
        this._systemDisallowId = systemDisallowId
    }

    /** 
     *  父系统id曉夞丅
     * 
     * @return 父系统id
     */
    public function get parentId():String {
        return this._parentId;
    }

    /** 
     *  父系统id
     * 
     * @param parentId 父系统id
     */
    public function set parentId(parentId : String):void {
        this._parentId = parentId
    }

    /** 
     *  起时间曉夞丅
     * 
     * @return 起时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  起时间
     * 
     * @param startTime 起时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  终时间曉夞丅
     * 
     * @return 终时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  终时间
     * 
     * @param endTime 终时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

    /** 
     *  方法类型曉夞丅
     * 
     * @return 方法类型
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  方法类型
     * 
     * @param type 方法类型
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  系统运行状态名曉夞丅
     * 
     * @return 系统运行状态名
     */
    public function get systemRunStatusName():String {
        return this._systemRunStatusName;
    }

    /** 
     *  系统运行状态名
     * 
     * @param systemRunStatusName 系统运行状态名
     */
    public function set systemRunStatusName(systemRunStatusName : String):void {
        this._systemRunStatusName = systemRunStatusName
    }

    /** 
     *  系统审核状态名曉夞丅
     * 
     * @return 系统审核状态名
     */
    public function get systemCheckStatusName():String {
        return this._systemCheckStatusName;
    }

    /** 
     *  系统审核状态名
     * 
     * @param systemCheckStatusName 系统审核状态名
     */
    public function set systemCheckStatusName(systemCheckStatusName : String):void {
        this._systemCheckStatusName = systemCheckStatusName
    }

    /** 
     *  服务申请审核状态名曉夞丅
     * 
     * @return 服务申请审核状态名
     */
    public function get applyCheckStatusName():String {
        return this._applyCheckStatusName;
    }

    /** 
     *  服务申请审核状态名
     * 
     * @param applyCheckStatusName 服务申请审核状态名
     */
    public function set applyCheckStatusName(applyCheckStatusName : String):void {
        this._applyCheckStatusName = applyCheckStatusName
    }

    /** 
     *  服务名曉夞丅
     * 
     * @return 服务名
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名
     * 
     * @param serviceName 服务名
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
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
     *  发布系统id曉夞丅
     * 
     * @return 发布系统id
     */
    public function get publishSystemId():String {
        return this._publishSystemId;
    }

    /** 
     *  发布系统id
     * 
     * @param publishSystemId 发布系统id
     */
    public function set publishSystemId(publishSystemId : String):void {
        this._publishSystemId = publishSystemId
    }

    /** 
     *  代码名曉夞丅
     * 
     * @return 代码名
     */
    public function get codeName():String {
        return this._codeName;
    }

    /** 
     *  代码名
     * 
     * @param codeName 代码名
     */
    public function set codeName(codeName : String):void {
        this._codeName = codeName
    }

    /** 
     *  服务id曉夞丅
     * 
     * @return 服务id
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务id
     * 
     * @param serviceId 服务id
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  代码曉夞丅
     * 
     * @return 代码
     */
    public function get Code():String {
        return this._Code;
    }

    /** 
     *  代码
     * 
     * @param Code 代码
     */
    public function set Code(Code : String):void {
        this._Code = Code
    }

    /** 
     *  访问key曉夞丅
     * 
     * @return 访问key
     */
    public function get accessKey():String {
        return this._accessKey;
    }

    /** 
     *  访问key
     * 
     * @param accessKey 访问key
     */
    public function set accessKey(accessKey : String):void {
        this._accessKey = accessKey
    }

}
}
