package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MapMarkCheckInfoData;

/** 
 * 标注审核历史表TransData
 * 
 * 标注审核历史表TransData
 * 
 * @author supermap
 */
public class MapMarkCheckRequestData extends RequestData {

    /**  标注记录信息 */
    private var _mapMarkCheckInfoData : MapMarkCheckInfoData;

    /** 
     *  标注记录信息曉夞丅
     * 
     * @return 标注记录信息
     */
    public function get mapMarkCheckInfoData():MapMarkCheckInfoData {
        return this._mapMarkCheckInfoData;
    }

    /** 
     *  标注记录信息
     * 
     * @param mapMarkCheckInfoData 标注记录信息
     */
    public function set mapMarkCheckInfoData(mapMarkCheckInfoData : MapMarkCheckInfoData):void {
        this._mapMarkCheckInfoData = mapMarkCheckInfoData
    }

}
}
