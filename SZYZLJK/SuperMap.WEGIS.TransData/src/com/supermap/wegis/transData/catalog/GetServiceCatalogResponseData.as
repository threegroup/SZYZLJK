package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得服务树ResponseData
 * 
 * 取得服务树ResponseData
 * 
 * @author supermap
 */
public class GetServiceCatalogResponseData extends ResponseData {

    /**  结点List */
    private var _nodeList : Array;

    /**  所有服务节点 */
    private var _allList : Array;

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

    /** 
     *  所有服务节点曉夞丅
     * 
     * @return 所有服务节点
     */
    public function get allList():Array {
        return this._allList;
    }

    /** 
     *  所有服务节点
     * 
     * @param allList 所有服务节点
     */
    public function set allList(allList : Array):void {
        this._allList = allList
    }

}
}
