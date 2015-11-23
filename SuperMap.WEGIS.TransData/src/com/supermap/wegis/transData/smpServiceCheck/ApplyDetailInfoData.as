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
public class ApplyDetailInfoData extends BaseData {

    /**  访问key */
    private var _accessKey : String;

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

    /**  申请审核状态名 */
    private var _applyCheckTypeName : String;

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
     *  申请审核状态名曉夞丅
     * 
     * @return 申请审核状态名
     */
    public function get applyCheckTypeName():String {
        return this._applyCheckTypeName;
    }

    /** 
     *  申请审核状态名
     * 
     * @param applyCheckTypeName 申请审核状态名
     */
    public function set applyCheckTypeName(applyCheckTypeName : String):void {
        this._applyCheckTypeName = applyCheckTypeName
    }

}
}
