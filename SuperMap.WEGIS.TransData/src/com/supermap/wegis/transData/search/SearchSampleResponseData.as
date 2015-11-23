package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.ResponseData;
import flash.utils.Dictionary;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class SearchSampleResponseData extends ResponseData {

    /**  内容 */
    private var _noodList : Vector;

    /** 
     *  内容曉夞丅
     * 
     * @return 内容
     */
    public function get noodList():Vector {
        return this._noodList;
    }

    /** 
     *  内容
     * 
     * @param noodList 内容
     */
    public function set noodList(noodList : Vector):void {
        this._noodList = noodList
    }

}
}
