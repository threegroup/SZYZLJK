package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务使用管理表TransData
 * 
 * 服务使用管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceUseInfoData extends BaseData {

    /**  申请ID */
    private var _applyId : String;

    /**  服务ID */
    private var _serviceId : String;

    /**  访问Key */
    private var _accessKey : String;

    /**  状态 */
    private var _serviceStatus : String;

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
     *  状态曉夞丅
     * 
     * @return 状态
     */
    public function get serviceStatus():String {
        return this._serviceStatus;
    }

    /** 
     *  状态
     * 
     * @param serviceStatus 状态
     */
    public function set serviceStatus(serviceStatus : String):void {
        this._serviceStatus = serviceStatus
    }

}
}
