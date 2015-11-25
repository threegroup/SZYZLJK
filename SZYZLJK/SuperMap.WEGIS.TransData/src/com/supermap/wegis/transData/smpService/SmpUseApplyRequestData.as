package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpService.SmpUseApplyInfoData;

/** 
 * 使用申请管理表TransData
 * 
 * 使用申请管理表TransData
 * 
 * @author supermap
 */
public class SmpUseApplyRequestData extends RequestData {

    /**  申请信息 */
    private var _smpUseApplyInfoData : SmpUseApplyInfoData;

    /**  访问Key信息 */
    private var _accessKey : String;

    /**  服务IDs */
    private var _serviceIds : Array;

    /** 
     *  申请信息曉夞丅
     * 
     * @return 申请信息
     */
    public function get smpUseApplyInfoData():SmpUseApplyInfoData {
        return this._smpUseApplyInfoData;
    }

    /** 
     *  申请信息
     * 
     * @param smpUseApplyInfoData 申请信息
     */
    public function set smpUseApplyInfoData(smpUseApplyInfoData : SmpUseApplyInfoData):void {
        this._smpUseApplyInfoData = smpUseApplyInfoData
    }

    /** 
     *  访问Key信息曉夞丅
     * 
     * @return 访问Key信息
     */
    public function get accessKey():String {
        return this._accessKey;
    }

    /** 
     *  访问Key信息
     * 
     * @param accessKey 访问Key信息
     */
    public function set accessKey(accessKey : String):void {
        this._accessKey = accessKey
    }

    /** 
     *  服务IDs曉夞丅
     * 
     * @return 服务IDs
     */
    public function get serviceIds():Array {
        return this._serviceIds;
    }

    /** 
     *  服务IDs
     * 
     * @param serviceIds 服务IDs
     */
    public function set serviceIds(serviceIds : Array):void {
        this._serviceIds = serviceIds
    }

}
}
