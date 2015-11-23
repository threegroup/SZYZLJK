package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpService.SmpServiceUseInfoData;

/** 
 * 服务使用管理表TransData
 * 
 * 服务使用管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceUseRequestData extends RequestData {

    /**  申请ID */
    private var _smpServiceUseInfoData : SmpServiceUseInfoData;

    /** 
     *  申请ID曉夞丅
     * 
     * @return 申请ID
     */
    public function get smpServiceUseInfoData():SmpServiceUseInfoData {
        return this._smpServiceUseInfoData;
    }

    /** 
     *  申请ID
     * 
     * @param smpServiceUseInfoData 申请ID
     */
    public function set smpServiceUseInfoData(smpServiceUseInfoData : SmpServiceUseInfoData):void {
        this._smpServiceUseInfoData = smpServiceUseInfoData
    }

}
}
