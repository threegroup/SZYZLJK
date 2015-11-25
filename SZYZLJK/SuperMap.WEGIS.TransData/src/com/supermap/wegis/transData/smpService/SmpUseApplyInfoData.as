package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 使用申请管理表TransData
 * 
 * 使用申请管理表TransData
 * 
 * @author supermap
 */
public class SmpUseApplyInfoData extends BaseData {

    /**  申请ID */
    private var _applyId : String;

    /**  申请系统CODE */
    private var _applySysId : String;

    /**  申请时间 */
    private var _applyDt : String;

    /**  使用目的 */
    private var _applyUseage : String;

    /**  申请审核状态 */
    private var _checkStatus : String;

    /**  驳回ID */
    private var _disallowId : String;

    /**  用户ID */
    private var _userId : String;

    /**  申请系统名称 */
    private var _systemName : String;

    /**  访问Key */
    private var _accessKey : String;

    /**  原始服务地址 */
    private var _originUrl : String;

    /**  ip列表 */
    private var _ipList : String;

    /**  系统ID */
    private var _publishSystemId : String;

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
     *  申请系统CODE曉夞丅
     * 
     * @return 申请系统CODE
     */
    public function get applySysId():String {
        return this._applySysId;
    }

    /** 
     *  申请系统CODE
     * 
     * @param applySysId 申请系统CODE
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
    public function get checkStatus():String {
        return this._checkStatus;
    }

    /** 
     *  申请审核状态
     * 
     * @param checkStatus 申请审核状态
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
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  申请系统名称曉夞丅
     * 
     * @return 申请系统名称
     */
    public function get systemName():String {
        return this._systemName;
    }

    /** 
     *  申请系统名称
     * 
     * @param systemName 申请系统名称
     */
    public function set systemName(systemName : String):void {
        this._systemName = systemName
    }

    /** 
     *  访问Key曉夞丅
     * 
     * @return 访问Key
     */
    public function get accessKey():String {
        return this._accessKey;
    }

    /** 
     *  访问Key
     * 
     * @param accessKey 访问Key
     */
    public function set accessKey(accessKey : String):void {
        this._accessKey = accessKey
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
     *  ip列表曉夞丅
     * 
     * @return ip列表
     */
    public function get ipList():String {
        return this._ipList;
    }

    /** 
     *  ip列表
     * 
     * @param ipList ip列表
     */
    public function set ipList(ipList : String):void {
        this._ipList = ipList
    }

    /** 
     *  系统ID曉夞丅
     * 
     * @return 系统ID
     */
    public function get publishSystemId():String {
        return this._publishSystemId;
    }

    /** 
     *  系统ID
     * 
     * @param publishSystemId 系统ID
     */
    public function set publishSystemId(publishSystemId : String):void {
        this._publishSystemId = publishSystemId
    }

}
}
