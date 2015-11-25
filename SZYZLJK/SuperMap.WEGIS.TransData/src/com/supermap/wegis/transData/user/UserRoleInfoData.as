package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * UserRoleInfoData
 * 
 * UserRoleInfoData
 * 
 * @author supermap
 */
public class UserRoleInfoData extends BaseData {

    /**  用户ID */
    private var _userId : String;

    /**  角色ID */
    private var _roleId : String;

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  角色ID曉夞丅
     * 
     * @return 角色ID
     */
    public function get roleId():String {
        return this._roleId;
    }

    /** 
     *  角色ID
     * 
     * @param roleId 角色ID
     */
    public function set roleId(roleId : String):void {
        this._roleId = roleId
    }

}
}
