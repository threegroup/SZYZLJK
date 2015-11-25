package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询服务参数表TransData
 * 
 * 查询服务参数表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceParamsResponseData extends ResponseData {

    /**  参数列表信息 */
    private var _smpDbServiceParamsInfoDataList : Array;

    /** 
     *  参数列表信息曉夞丅
     * 
     * @return 参数列表信息
     */
    public function get smpDbServiceParamsInfoDataList():Array {
        return this._smpDbServiceParamsInfoDataList;
    }

    /** 
     *  参数列表信息
     * 
     * @param smpDbServiceParamsInfoDataList 参数列表信息
     */
    public function set smpDbServiceParamsInfoDataList(smpDbServiceParamsInfoDataList : Array):void {
        this._smpDbServiceParamsInfoDataList = smpDbServiceParamsInfoDataList
    }

}
}
