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
public class SaveUserRoleAndFunctionRequestData extends RequestData {

    /**  用户列表 */
    private var _userInfo : UserInfoData;

    /**  角色IDs:角色集合,用","分隔 */
    private var _roleIds : String;

    /**  功能IDs:功能集合,用","分隔 */
    private var _functionIds : String;

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

    /** 
     *  角色IDs:角色集合,用","分隔曉夞丅
     * 
     * @return 角色IDs:角色集合,用","分隔
     */
    public function get roleIds():String {
        return this._roleIds;
    }

    /** 
     *  角色IDs:角色集合,用","分隔
     * 
     * @param roleIds 角色IDs:角色集合,用","分隔
     */
    public function set roleIds(roleIds : String):void {
        this._roleIds = roleIds
    }

    /** 
     *  功能IDs:功能集合,用","分隔曉夞丅
     * 
     * @return 功能IDs:功能集合,用","分隔
     */
    public function get functionIds():String {
        return this._functionIds;
    }

    /** 
     *  功能IDs:功能集合,用","分隔
     * 
     * @param functionIds 功能IDs:功能集合,用","分隔
     */
    public function set functionIds(functionIds : String):void {
        this._functionIds = functionIds
    }

}
}
