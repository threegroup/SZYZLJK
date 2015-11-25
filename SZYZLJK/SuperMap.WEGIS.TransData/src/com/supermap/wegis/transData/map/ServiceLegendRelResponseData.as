package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 服务图例关系表ServiceLegendRelResponseData
 * 
 * 服务图例关系表ServiceLegendRelResponseData
 * 
 * @author supermap
 */
public class ServiceLegendRelResponseData extends ResponseData {

    /**  服务图例关系 */
    private var _serviceLegendRelInfoDataList : Array;

    /** 
     *  服务图例关系曉夞丅
     * 
     * @return 服务图例关系
     */
    public function get serviceLegendRelInfoDataList():Array {
        return this._serviceLegendRelInfoDataList;
    }

    /** 
     *  服务图例关系
     * 
     * @param serviceLegendRelInfoDataList 服务图例关系
     */
    public function set serviceLegendRelInfoDataList(serviceLegendRelInfoDataList : Array):void {
        this._serviceLegendRelInfoDataList = serviceLegendRelInfoDataList
    }

}
}
