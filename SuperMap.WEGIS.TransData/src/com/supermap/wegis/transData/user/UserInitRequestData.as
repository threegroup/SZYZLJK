package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.user.UserInitInfoData;

/** 
 * 返回用户所需信息RequestData
 * 
 * 返回用户所需信息RequestData
 * 
 * @author supermap
 */
public class UserInitRequestData extends RequestData {

    /**  用户部门信息 */
    private var _userDepartmentInfo : UserInitInfoData;

    /** 
     *  用户部门信息曉夞丅
     * 
     * @return 用户部门信息
     */
    public function get userDepartmentInfo():UserInitInfoData {
        return this._userDepartmentInfo;
    }

    /** 
     *  用户部门信息
     * 
     * @param userDepartmentInfo 用户部门信息
     */
    public function set userDepartmentInfo(userDepartmentInfo : UserInitInfoData):void {
        this._userDepartmentInfo = userDepartmentInfo
    }

}
}
