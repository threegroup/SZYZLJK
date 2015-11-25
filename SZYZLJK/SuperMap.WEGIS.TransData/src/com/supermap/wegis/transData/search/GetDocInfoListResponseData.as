package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 * ResponseData
 * 
 * @author supermap
 */
public class GetDocInfoListResponseData extends ResponseData {

    /**  文档资料列表 */
    private var _nodeList : Array;

    /** 
     *  文档资料列表曉夞丅
     * 
     * @return 文档资料列表
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  文档资料列表
     * 
     * @param nodeList 文档资料列表
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
