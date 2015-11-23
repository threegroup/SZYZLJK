package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MapMarkInfoData;

/** 
 * MapMarkRequestData
 * 
 *  MapMarkRequestData
 * 
 * @author supermap
 */
public class MapMarkRequestData extends RequestData {

    /**  标注记录信息 */
    private var _mapMarkInfoData : MapMarkInfoData;

    /**  标注记录数组信息 */
    private var _mapMarkDataList : Array;

    /** 
     *  标注记录信息曉夞丅
     * 
     * @return 标注记录信息
     */
    public function get mapMarkInfoData():MapMarkInfoData {
        return this._mapMarkInfoData;
    }

    /** 
     *  标注记录信息
     * 
     * @param mapMarkInfoData 标注记录信息
     */
    public function set mapMarkInfoData(mapMarkInfoData : MapMarkInfoData):void {
        this._mapMarkInfoData = mapMarkInfoData
    }

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
