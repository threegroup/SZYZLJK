package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.role.RoleInfoData;
import com.supermap.wegis.transData.role.RoleTreeData;

/** 
 * 角色信息RequestData
 * 
 * 角色信息RequestData
 * 
 * @author supermap
 */
public class RoleRequestData extends RequestData {

    /**  角色信息 */
    private var _roleInfo : RoleInfoData;

    /**  角色树 */
    private var _roleTree : RoleTreeData;

    /** 
     *  角色信息曉夞丅
     * 
     * @return 角色信息
     */
    public function get roleInfo():RoleInfoData {
        return this._roleInfo;
    }

    /** 
     *  角色信息
     * 
     * @param roleInfo 角色信息
     */
    public function set roleInfo(roleInfo : RoleInfoData):void {
        this._roleInfo = roleInfo
    }

    /** 
     *  角色树曉夞丅
     * 
     * @return 角色树
     */
    public function get roleTree():RoleTreeData {
        return this._roleTree;
    }

    /** 
     *  角色树
     * 
     * @param roleTree 角色树
     */
    public function set roleTree(roleTree : RoleTreeData):void {
        this._roleTree = roleTree
    }

}
}
