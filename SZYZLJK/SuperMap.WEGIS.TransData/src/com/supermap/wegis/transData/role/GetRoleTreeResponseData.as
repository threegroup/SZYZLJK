package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得角色树ResponseData
 * 
 * 取得服务树ResponseData
 * 
 * @author supermap
 */
public class GetRoleTreeResponseData extends ResponseData {

    /**  结点List */
    private var _nodeList : Array;

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
