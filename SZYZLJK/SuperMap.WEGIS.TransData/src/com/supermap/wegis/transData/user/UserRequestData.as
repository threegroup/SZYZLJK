package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.user.UserInfoData;

/** 
 * 返回用户所需信息RequestData
 * 
 * 返回用户所需信息RequestData
 * 
 * @author supermap
 */
public class UserRequestData extends RequestData {

    /**  用户信息 */
    private var _userInfo : UserInfoData;

    /** 
     *  用户信息曉夞丅
     * 
     * @return 用户信息
     */
    public function get userInfo():UserInfoData {
        return this._userInfo;
    }

    /** 
     *  用户信息
     * 
     * @param userInfo 用户信息
     */
    public function set userInfo(userInfo : UserInfoData):void {
        this._userInfo = userInfo
    }

}
}
