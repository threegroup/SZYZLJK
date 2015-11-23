package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务管理表TransData
 * 
 * 服务管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceInfoData extends BaseData {

    /**  服务ID */
    private var _serviceId : String;

    /**  服务名称 */
    private var _serviceName : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  服务代理URL */
    private var _delegationUrl : String;

    /**  原始服务地址 */
    private var _originUrl : String;

    /**  发布系统ID */
    private var _publishSystemId : String;

    /**  发布时间 */
    private var _publishDt : String;

    /**  描述 */
    private var _descInfo : String;

    /**  关键信息 */
    private var _keyWord : String;

    /**  服务状态 */
    private var _runStatus : String;

    /**  服务审核状态 */
    private var _checkStatus : String;

    /**  驳回ID */
    private var _disallowId : String;

    /**  开始时间 */
    private var _startTime : String;

    /**  结束时间 */
    private var _endTime : String;

    /**  申请ID */
    private var _applyId : String;

    /**  服务状态 */
    private var _serviceTypeName : String;

    /**  运行状态 */
    private var _runStatusName : String;

    /**  审核 */
    private var _checkStatusName : String;

    /**  业务 */
    private var _businessTypeName : String;

    /**  业务状态 */
    private var _businessType : String;

    /**  服务code */
    private var _systemCode : String;

    /**  发布系统名称 */
    private var _publishSystemName : String;

    /**  发布用户id */
    private var _userId : String;

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
     *  服务代理URL曉夞丅
     * 
     * @return 服务代理URL
     */
    public function get delegationUrl():String {
        return this._delegationUrl;
    }

    /** 
     *  服务代理URL
     * 
     * @param delegationUrl 服务代理URL
     */
    public function set delegationUrl(delegationUrl : String):void {
        this._delegationUrl = delegationUrl
    }

    /** 
     *  原始服务地址曉夞丅
     * 
     * @return 原始服务地址
     */
    public function get originUrl():String {
        return this._originUrl;
    }

    /** 
     *  原始服务地址
     * 
     * @param originUrl 原始服务地址
     */
    public function set originUrl(originUrl : String):void {
        this._originUrl = originUrl
    }

    /** 
     *  发布系统ID曉夞丅
     * 
     * @return 发布系统ID
     */
    public function get publishSystemId():String {
        return this._publishSystemId;
    }

    /** 
     *  发布系统ID
     * 
     * @param publishSystemId 发布系统ID
     */
    public function set publishSystemId(publishSystemId : String):void {
        this._publishSystemId = publishSystemId
    }

    /** 
     *  发布时间曉夞丅
     * 
     * @return 发布时间
     */
    public function get publishDt():String {
        return this._publishDt;
    }

    /** 
     *  发布时间
     * 
     * @param publishDt 发布时间
     */
    public function set publishDt(publishDt : String):void {
        this._publishDt = publishDt
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
     *  服务状态曉夞丅
     * 
     * @return 服务状态
     */
    public function get runStatus():String {
        return this._runStatus;
    }

    /** 
     *  服务状态
     * 
     * @param runStatus 服务状态
     */
    public function set runStatus(runStatus : String):void {
        this._runStatus = runStatus
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
     *  驳回ID曉夞丅
     * 
     * @return 驳回ID
     */
    public function get disallowId():String {
        return this._disallowId;
    }

    /** 
     *  驳回ID
     * 
     * @param disallowId 驳回ID
     */
    public function set disallowId(disallowId : String):void {
        this._disallowId = disallowId
    }

    /** 
     *  开始时间曉夞丅
     * 
     * @return 开始时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  开始时间
     * 
     * @param startTime 开始时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  结束时间曉夞丅
     * 
     * @return 结束时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  结束时间
     * 
     * @param endTime 结束时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

    /** 
     *  申请ID曉夞丅
     * 
     * @return 申请ID
     */
    public function get applyId():String {
        return this._applyId;
    }

    /** 
     *  申请ID
     * 
     * @param applyId 申请ID
     */
    public function set applyId(applyId : String):void {
        this._applyId = applyId
    }

    /** 
     *  服务状态曉夞丅
     * 
     * @return 服务状态
     */
    public function get serviceTypeName():String {
        return this._serviceTypeName;
    }

    /** 
     *  服务状态
     * 
     * @param serviceTypeName 服务状态
     */
    public function set serviceTypeName(serviceTypeName : String):void {
        this._serviceTypeName = serviceTypeName
    }

    /** 
     *  运行状态曉夞丅
     * 
     * @return 运行状态
     */
    public function get runStatusName():String {
        return this._runStatusName;
    }

    /** 
     *  运行状态
     * 
     * @param runStatusName 运行状态
     */
    public function set runStatusName(runStatusName : String):void {
        this._runStatusName = runStatusName
    }

    /** 
     *  审核曉夞丅
     * 
     * @return 审核
     */
    public function get checkStatusName():String {
        return this._checkStatusName;
    }

    /** 
     *  审核
     * 
     * @param checkStatusName 审核
     */
    public function set checkStatusName(checkStatusName : String):void {
        this._checkStatusName = checkStatusName
    }

    /** 
     *  业务曉夞丅
     * 
     * @return 业务
     */
    public function get businessTypeName():String {
        return this._businessTypeName;
    }

    /** 
     *  业务
     * 
     * @param businessTypeName 业务
     */
    public function set businessTypeName(businessTypeName : String):void {
        this._businessTypeName = businessTypeName
    }

    /** 
     *  业务状态曉夞丅
     * 
     * @return 业务状态
     */
    public function get businessType():String {
        return this._businessType;
    }

    /** 
     *  业务状态
     * 
     * @param businessType 业务状态
     */
    public function set businessType(businessType : String):void {
        this._businessType = businessType
    }

    /** 
     *  服务code曉夞丅
     * 
     * @return 服务code
     */
    public function get systemCode():String {
        return this._systemCode;
    }

    /** 
     *  服务code
     * 
     * @param systemCode 服务code
     */
    public function set systemCode(systemCode : String):void {
        this._systemCode = systemCode
    }

    /** 
     *  发布系统名称曉夞丅
     * 
     * @return 发布系统名称
     */
    public function get publishSystemName():String {
        return this._publishSystemName;
    }

    /** 
     *  发布系统名称
     * 
     * @param publishSystemName 发布系统名称
     */
    public function set publishSystemName(publishSystemName : String):void {
        this._publishSystemName = publishSystemName
    }

    /** 
     *  发布用户id曉夞丅
     * 
     * @return 发布用户id
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  发布用户id
     * 
     * @param userId 发布用户id
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

}
}
