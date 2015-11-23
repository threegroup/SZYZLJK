package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.user.UserInfoData;

/** 
 * 用户授权请求信息TransData
 * 
 * 用户授权请求信息TransData
 * 
 * @author supermap
 */
public class InitUserRoleAndFunctionRequestData extends RequestData {

    /**  用户列表 */
    private var _userInfo : UserInfoData;

    /** 
     *  用户列表曉夞丅
     * 
     * @return 用户列表
     */
    public function get userInfo():UserInfoData {
        return this._userInfo;
    }

    /** 
     *  用户列表
     * 
     * @param userInfo 用户列表
     */
    public function set userInfo(userInfo : UserInfoData):void {
        this._userInfo = userInfo
    }

}
}
