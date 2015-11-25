package com.supermap.wegis.transData.login
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * RequestData
 * 
 *  RequestData
 * 
 * @author supermap
 */
public class LoginRequestData extends RequestData {

    /**  用户ID */
    private var _userId : String;

    /**  登录密码 */
    private var _loginPwd : String;

    /**  用户登录名称 */
    private var _loginName : String;

    /**  用户类型 */
    private var _userType : String;

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    override public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    override public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  登录密码曉夞丅
     * 
     * @return 登录密码
     */
    public function get loginPwd():String {
        return this._loginPwd;
    }

    /** 
     *  登录密码
     * 
     * @param loginPwd 登录密码
     */
    public function set loginPwd(loginPwd : String):void {
        this._loginPwd = loginPwd
    }

    /** 
     *  用户登录名称曉夞丅
     * 
     * @return 用户登录名称
     */
    public function get loginName():String {
        return this._loginName;
    }

    /** 
     *  用户登录名称
     * 
     * @param loginName 用户登录名称
     */
    public function set loginName(loginName : String):void {
        this._loginName = loginName
    }

    /** 
     *  用户类型曉夞丅
     * 
     * @return 用户类型
     */
    public function get userType():String {
        return this._userType;
    }

    /** 
     *  用户类型
     * 
     * @param userType 用户类型
     */
    public function set userType(userType : String):void {
        this._userType = userType
    }

}
}
