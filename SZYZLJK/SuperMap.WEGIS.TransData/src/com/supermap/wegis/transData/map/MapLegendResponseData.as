package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class MapLegendResponseData extends ResponseData {

    /**  图例记录 */
    private var _legendDataList : Array;

    /** 
     *  图例记录曉夞丅
     * 
     * @return 图例记录
     */
    public function get legendDataList():Array {
        return this._legendDataList;
    }

    /** 
     *  图例记录
     * 
     * @param legendDataList 图例记录
     */
    public function set legendDataList(legendDataList : Array):void {
        this._legendDataList = legendDataList
    }

}
}
