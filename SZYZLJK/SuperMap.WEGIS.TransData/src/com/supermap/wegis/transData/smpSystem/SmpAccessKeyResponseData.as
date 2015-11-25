package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.transData.smpSystem.SmpAccessKeyInfoData;

/** 
 * 服务管理表TransData
 * 
 * 服务管理表TransData
 * 
 * @author supermap
 */
public class SmpAccessKeyResponseData extends ResponseData {

    /**  Key信息 */
    private var _accessKeyInfoData : SmpAccessKeyInfoData;

    /**  maxScanRow */
    private var _maxScanRow : String;

    /** 
     *  Key信息曉夞丅
     * 
     * @return Key信息
     */
    public function get accessKeyInfoData():SmpAccessKeyInfoData {
        return this._accessKeyInfoData;
    }

    /** 
     *  Key信息
     * 
     * @param accessKeyInfoData Key信息
     */
    public function set accessKeyInfoData(accessKeyInfoData : SmpAccessKeyInfoData):void {
        this._accessKeyInfoData = accessKeyInfoData
    }

    /** 
     *  maxScanRow曉夞丅
     * 
     * @return maxScanRow
     */
    public function get maxScanRow():String {
        return this._maxScanRow;
    }

    /** 
     *  maxScanRow
     * 
     * @param maxScanRow maxScanRow
     */
    public function set maxScanRow(maxScanRow : String):void {
        this._maxScanRow = maxScanRow
    }

}
}
