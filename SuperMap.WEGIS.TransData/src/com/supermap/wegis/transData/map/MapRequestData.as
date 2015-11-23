package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MapInfoData;

/** 
 * 图例记录RequestData
 * 
 * 图例记录RequestData
 * 
 * @author supermap
 */
public class MapRequestData extends RequestData {

    /**  地图信息 */
    private var _mapInfo : MapInfoData;

    /** 
     *  地图信息曉夞丅
     * 
     * @return 地图信息
     */
    public function get mapInfo():MapInfoData {
        return this._mapInfo;
    }

    /** 
     *  地图信息
     * 
     * @param mapInfo 地图信息
     */
    public function set mapInfo(mapInfo : MapInfoData):void {
        this._mapInfo = mapInfo
    }

}
}
