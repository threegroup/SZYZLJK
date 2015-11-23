package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得自定义查询单个要素的字段信息ResponseData
 * 
 * 取得自定义查询单个要素的字段信息ResponseData
 * 
 * @author supermap
 */
public class GetSearchCustomFieldsInfoResponseData extends ResponseData {

    /**  记录集合 */
    private var _nodeList : Array;

    /** 
     *  记录集合曉夞丅
     * 
     * @return 记录集合
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  记录集合
     * 
     * @param nodeList 记录集合
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
