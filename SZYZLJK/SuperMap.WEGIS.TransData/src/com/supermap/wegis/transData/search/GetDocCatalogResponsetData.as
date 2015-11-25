package com.supermap.wegis.transData.search
{
import com.supermap.wegis.transData.search.SearchResponseData;

/** 
 * ResponseData
 * 
 * ResponseData
 * 
 * @author supermap
 */
public class GetDocCatalogResponsetData extends SearchResponseData {

    /**  文档资料目录 */
    private var _nodeList : Array;

    /** 
     *  文档资料目录曉夞丅
     * 
     * @return 文档资料目录
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  文档资料目录
     * 
     * @param nodeList 文档资料目录
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
