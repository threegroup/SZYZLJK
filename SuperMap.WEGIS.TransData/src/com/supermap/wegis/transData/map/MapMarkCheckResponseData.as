package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 标注审核历史表TransData
 * 
 * 标注审核历史表TransData
 * 
 * @author supermap
 */
public class MapMarkCheckResponseData extends ResponseData {

    /**  审核记录 */
    private var _mapMarkCheckDataList : Array;

    /** 
     *  审核记录曉夞丅
     * 
     * @return 审核记录
     */
    public function get mapMarkCheckDataList():Array {
        return this._mapMarkCheckDataList;
    }

    /** 
     *  审核记录
     * 
     * @param mapMarkCheckDataList 审核记录
     */
    public function set mapMarkCheckDataList(mapMarkCheckDataList : Array):void {
        this._mapMarkCheckDataList = mapMarkCheckDataList
    }

}
}
