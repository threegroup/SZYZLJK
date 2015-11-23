package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * UserDeptRelInfoData
 * 
 * UserRoleInfoData
 * 
 * @author supermap
 */
public class UserDeptRelInfoData extends BaseData {

    /**  用户ID */
    private var _userId : String;

    /**  部门ID */
    private var _depId : String;

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
     *  部门ID曉夞丅
     * 
     * @return 部门ID
     */
    public function get depId():String {
        return this._depId;
    }

    /** 
     *  部门ID
     * 
     * @param depId 部门ID
     */
    public function set depId(depId : String):void {
        this._depId = depId
    }

}
}
