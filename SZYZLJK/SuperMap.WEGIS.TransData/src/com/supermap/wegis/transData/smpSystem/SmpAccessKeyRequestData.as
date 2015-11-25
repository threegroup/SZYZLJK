package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpSystem.SmpAccessKeyInfoData;

/** 
 * 服务管理表TransData
 * 
 * 服务管理表TransData
 * 
 * @author supermap
 */
public class SmpAccessKeyRequestData extends RequestData {

    /**  key信息 */
    private var _accessKeyInfoData : SmpAccessKeyInfoData;

    /** 
     *  key信息曉夞丅
     * 
     * @return key信息
     */
    public function get accessKeyInfoData():SmpAccessKeyInfoData {
        return this._accessKeyInfoData;
    }

    /** 
     *  key信息
     * 
     * @param accessKeyInfoData key信息
     */
    public function set accessKeyInfoData(accessKeyInfoData : SmpAccessKeyInfoData):void {
        this._accessKeyInfoData = accessKeyInfoData
    }

}
}
