package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 查询服务参数表TransData
 * 
 * 查询服务参数表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceParamsRequestData extends RequestData {

    /**  参数信息 */
    private var _smpDbServiceParamsInfoDataList : Array;

    /** 
     *  参数信息曉夞丅
     * 
     * @return 参数信息
     */
    public function get smpDbServiceParamsInfoDataList():Array {
        return this._smpDbServiceParamsInfoDataList;
    }

    /** 
     *  参数信息
     * 
     * @param smpDbServiceParamsInfoDataList 参数信息
     */
    public function set smpDbServiceParamsInfoDataList(smpDbServiceParamsInfoDataList : Array):void {
        this._smpDbServiceParamsInfoDataList = smpDbServiceParamsInfoDataList
    }

}
}
