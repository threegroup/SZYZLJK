package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.user.UserRoleInfoData;

/** 
 * UserRoleRequestData
 * 
 * UserRoleRequestData
 * 
 * @author supermap
 */
public class UserRoleRequestData extends RequestData {

    /**  用户角色关系 */
    private var _userRoleInfo : UserRoleInfoData;

    /** 
     *  用户角色关系曉夞丅
     * 
     * @return 用户角色关系
     */
    public function get userRoleInfo():UserRoleInfoData {
        return this._userRoleInfo;
    }

    /** 
     *  用户角色关系
     * 
     * @param userRoleInfo 用户角色关系
     */
    public function set userRoleInfo(userRoleInfo : UserRoleInfoData):void {
        this._userRoleInfo = userRoleInfo
    }

}
}
