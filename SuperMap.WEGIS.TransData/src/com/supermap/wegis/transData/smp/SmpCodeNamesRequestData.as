package com.supermap.wegis.transData.smp
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smp.SmpCodeNamesInfoData;

/** 
 * 代码名称表TransData
 * 
 * 代码名称表TransData
 * 
 * @author supermap
 */
public class SmpCodeNamesRequestData extends RequestData {

    /**  code信息 */
    private var _smpCodeNamesInfoData : SmpCodeNamesInfoData;

    /** 
     *  code信息曉夞丅
     * 
     * @return code信息
     */
    public function get smpCodeNamesInfoData():SmpCodeNamesInfoData {
        return this._smpCodeNamesInfoData;
    }

    /** 
     *  code信息
     * 
     * @param smpCodeNamesInfoData code信息
     */
    public function set smpCodeNamesInfoData(smpCodeNamesInfoData : SmpCodeNamesInfoData):void {
        this._smpCodeNamesInfoData = smpCodeNamesInfoData
    }

}
}
