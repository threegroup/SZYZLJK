package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpService.SmpServiceInfoData;

/** 
 * 服务管理表TransData
 * 
 * 服务管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceRequestData extends RequestData {

    /**  服务信息 */
    private var _smpServiceInfoData : SmpServiceInfoData;

    /**  服务信息 */
    private var _smpServiceInfoDataList : Array;

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get smpServiceInfoData():SmpServiceInfoData {
        return this._smpServiceInfoData;
    }

    /** 
     *  服务信息
     * 
     * @param smpServiceInfoData 服务信息
     */
    public function set smpServiceInfoData(smpServiceInfoData : SmpServiceInfoData):void {
        this._smpServiceInfoData = smpServiceInfoData
    }

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get smpServiceInfoDataList():Array {
        return this._smpServiceInfoDataList;
    }

    /** 
     *  服务信息
     * 
     * @param smpServiceInfoDataList 服务信息
     */
    public function set smpServiceInfoDataList(smpServiceInfoDataList : Array):void {
        this._smpServiceInfoDataList = smpServiceInfoDataList
    }

}
}
