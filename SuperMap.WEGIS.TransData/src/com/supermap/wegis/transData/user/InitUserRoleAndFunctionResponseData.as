package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 用户授权响应信息TransData
 * 
 * 用户授权响应信息TransData
 * 
 * @author supermap
 */
public class InitUserRoleAndFunctionResponseData extends ResponseData {

    /**  角色树 */
    private var _roleTree : Array;

    /** 
     *  角色树曉夞丅
     * 
     * @return 角色树
     */
    public function get roleTree():Array {
        return this._roleTree;
    }

    /** 
     *  角色树
     * 
     * @param roleTree 角色树
     */
    public function set roleTree(roleTree : Array):void {
        this._roleTree = roleTree
    }

}
}
