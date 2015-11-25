package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * UserRoleResponseData
 * 
 * UserRoleResponseData
 * 
 * @author supermap
 */
public class UserRoleResponseData extends ResponseData {

    /**  用户角色关系列表 */
    private var _nodeList : Array;

    /** 
     *  用户角色关系列表曉夞丅
     * 
     * @return 用户角色关系列表
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  用户角色关系列表
     * 
     * @param nodeList 用户角色关系列表
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
