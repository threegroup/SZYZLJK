package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 服务图例信息ResponseData
 * 
 * 服务图例信息ResponseData
 * 
 * @author supermap
 */
public class MapServiceLegendRelResponseData extends ResponseData {

    /**  服务图例信息 */
    private var _mapServiceLegendRelDataList : Array;

    /** 
     *  服务图例信息曉夞丅
     * 
     * @return 服务图例信息
     */
    public function get mapServiceLegendRelDataList():Array {
        return this._mapServiceLegendRelDataList;
    }

    /** 
     *  服务图例信息
     * 
     * @param mapServiceLegendRelDataList 服务图例信息
     */
    public function set mapServiceLegendRelDataList(mapServiceLegendRelDataList : Array):void {
        this._mapServiceLegendRelDataList = mapServiceLegendRelDataList
    }

}
}
