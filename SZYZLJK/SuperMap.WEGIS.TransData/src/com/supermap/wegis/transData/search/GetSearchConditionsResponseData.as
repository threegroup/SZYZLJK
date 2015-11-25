package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得默认查询条件
 * 
 * 取得默认查询条件
 * 
 * @author supermap
 */
public class GetSearchConditionsResponseData extends ResponseData {

    /**  查询条件对象 */
    private var _nodeListSelect : Array;

    /**  合计条件 */
    private var _sumFieldList : Array;

    /** 
     *  查询条件对象曉夞丅
     * 
     * @return 查询条件对象
     */
    public function get nodeListSelect():Array {
        return this._nodeListSelect;
    }

    /** 
     *  查询条件对象
     * 
     * @param nodeListSelect 查询条件对象
     */
    public function set nodeListSelect(nodeListSelect : Array):void {
        this._nodeListSelect = nodeListSelect
    }

    /** 
     *  合计条件曉夞丅
     * 
     * @return 合计条件
     */
    public function get sumFieldList():Array {
        return this._sumFieldList;
    }

    /** 
     *  合计条件
     * 
     * @param sumFieldList 合计条件
     */
    public function set sumFieldList(sumFieldList : Array):void {
        this._sumFieldList = sumFieldList
    }

}
}
