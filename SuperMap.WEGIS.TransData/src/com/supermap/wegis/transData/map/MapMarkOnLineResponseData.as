package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.transData.map.MapInfoData;

/** 
 * 图例记录RequestData
 * 
 * 图例记录RequestData
 * 
 * @author supermap
 */
public class MapMarkOnLineResponseData extends ResponseData {

    /**  地图信息 */
    private var _mapInfo : MapInfoData;

    /**  标注信息 */
    private var _markList : Array;

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

    /** 
     *  标注信息曉夞丅
     * 
     * @return 标注信息
     */
    public function get markList():Array {
        return this._markList;
    }

    /** 
     *  标注信息
     * 
     * @param markList 标注信息
     */
    public function set markList(markList : Array):void {
        this._markList = markList
    }

}
}
