package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MapLegendData;

/** 
 * 图例记录RequestData
 * 
 * 图例记录RequestData
 * 
 * @author supermap
 */
public class MapLegendRequestData extends RequestData {

    /**  图例记录 */
    private var _legendInfo : MapLegendData;

    /** 
     *  图例记录曉夞丅
     * 
     * @return 图例记录
     */
    public function get legendInfo():MapLegendData {
        return this._legendInfo;
    }

    /** 
     *  图例记录
     * 
     * @param legendInfo 图例记录
     */
    public function set legendInfo(legendInfo : MapLegendData):void {
        this._legendInfo = legendInfo
    }

}
}
