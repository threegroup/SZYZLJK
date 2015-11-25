package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MapServiceLegendRelData;

/** 
 * 服务图例信息RequestData
 * 
 * 服务图例信息RequestData
 * 
 * @author supermap
 */
public class MapServiceLegendRelRequestData extends RequestData {

    /**  服务图例信息 */
    private var _mapServiceLegendInfo : MapServiceLegendRelData;

    /** 
     *  服务图例信息曉夞丅
     * 
     * @return 服务图例信息
     */
    public function get mapServiceLegendInfo():MapServiceLegendRelData {
        return this._mapServiceLegendInfo;
    }

    /** 
     *  服务图例信息
     * 
     * @param mapServiceLegendInfo 服务图例信息
     */
    public function set mapServiceLegendInfo(mapServiceLegendInfo : MapServiceLegendRelData):void {
        this._mapServiceLegendInfo = mapServiceLegendInfo
    }

}
}
