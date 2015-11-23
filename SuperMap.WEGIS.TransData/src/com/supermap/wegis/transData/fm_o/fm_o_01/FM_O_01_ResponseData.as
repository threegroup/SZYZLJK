package com.supermap.wegis.transData.fm_o.fm_o_01
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class FM_O_01_ResponseData extends ResponseData {

    /**  信息 */
    private var _dataList : Array;

    /** 
     *  信息曉夞丅
     * 
     * @return 信息
     */
    public function get dataList():Array {
        return this._dataList;
    }

    /** 
     *  信息
     * 
     * @param dataList 信息
     */
    public function set dataList(dataList : Array):void {
        this._dataList = dataList
    }

}
}
