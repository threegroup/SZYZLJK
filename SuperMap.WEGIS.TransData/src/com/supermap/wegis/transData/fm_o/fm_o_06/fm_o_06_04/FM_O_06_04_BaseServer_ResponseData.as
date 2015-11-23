package com.supermap.wegis.transData.fm_o.fm_o_06.fm_o_06_04
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class FM_O_06_04_BaseServer_ResponseData extends ResponseData {

    /**  所有结点信息 */
    private var _dataList : Array;

    /** 
     *  所有结点信息曉夞丅
     * 
     * @return 所有结点信息
     */
    public function get dataList():Array {
        return this._dataList;
    }

    /** 
     *  所有结点信息
     * 
     * @param dataList 所有结点信息
     */
    public function set dataList(dataList : Array):void {
        this._dataList = dataList
    }

}
}
