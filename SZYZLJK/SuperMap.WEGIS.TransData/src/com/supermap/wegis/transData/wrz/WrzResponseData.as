package com.supermap.wegis.transData.wrz
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class WrzResponseData extends ResponseData {

    /**  取水口信息 */
    private var _wrIntDataList : Array;

    /** 
     *  取水口信息曉夞丅
     * 
     * @return 取水口信息
     */
    public function get wrIntDataList():Array {
        return this._wrIntDataList;
    }

    /** 
     *  取水口信息
     * 
     * @param wrIntDataList 取水口信息
     */
    public function set wrIntDataList(wrIntDataList : Array):void {
        this._wrIntDataList = wrIntDataList
    }

}
}
