package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.user.UserDeptRelInfoData;

/** 
 * UserDeptRelRequestData
 * 
 * UserDeptRelRequestData
 * 
 * @author supermap
 */
public class UserDeptRelRequestData extends RequestData {

    /**  用户部门关系 */
    private var _userDeptRelInfo : UserDeptRelInfoData;

    /** 
     *  用户部门关系曉夞丅
     * 
     * @return 用户部门关系
     */
    public function get userDeptRelInfo():UserDeptRelInfoData {
        return this._userDeptRelInfo;
    }

    /** 
     *  用户部门关系
     * 
     * @param userDeptRelInfo 用户部门关系
     */
    public function set userDeptRelInfo(userDeptRelInfo : UserDeptRelInfoData):void {
        this._userDeptRelInfo = userDeptRelInfo
    }

}
}
