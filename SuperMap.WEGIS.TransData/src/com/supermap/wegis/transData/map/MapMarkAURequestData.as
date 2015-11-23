package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * MapMarkAURequestData
 * 
 * MapMarkAURequestData
 * 
 * @author supermap
 */
public class MapMarkAURequestData extends RequestData {

    /**  标注记录数组信息 */
    private var _mapMarkDataList : Array;

    /** 
     *  标注记录数组信息曉夞丅
     * 
     * @return 标注记录数组信息
     */
    public function get mapMarkDataList():Array {
        return this._mapMarkDataList;
    }

    /** 
     *  标注记录数组信息
     * 
     * @param mapMarkDataList 标注记录数组信息
     */
    public function set mapMarkDataList(mapMarkDataList : Array):void {
        this._mapMarkDataList = mapMarkDataList
    }

}
}
