package com.supermap.wegis.transData.fm_o.fm_o_11
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class FM_O_11_ResponseData extends ResponseData {

    /**  所有结点信息 */
    private var _dataList : Array;

    /**  结点List */
    private var _nodeList : Array;

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

    /** 
     *  结点List曉夞丅
     * 
     * @return 结点List
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  结点List
     * 
     * @param nodeList 结点List
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
