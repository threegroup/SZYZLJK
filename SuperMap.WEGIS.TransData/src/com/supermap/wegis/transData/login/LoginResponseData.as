package com.supermap.wegis.transData.login
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.transData.user.UserInfoData;

/** 
 * 用户登录ResponseData
 * 
 *  用户登录ResponseData
 * 
 * @author supermap
 */
public class LoginResponseData extends ResponseData {

    /**  Session ID */
    private var _sessionId : String;

    /**  用户权限列表 */
    private var _functionList : Array;

    /**  用户信息 */
    private var _userInfo : UserInfoData;

    /**  信息 */
    private var _info : Object;

    /**  区域 */
    private var _areaDataList : Array;

    /** 
     *  Session ID曉夞丅
     * 
     * @return Session ID
     */
    public function get sessionId():String {
        return this._sessionId;
    }

    /** 
     *  Session ID
     * 
     * @param sessionId Session ID
     */
    public function set sessionId(sessionId : String):void {
        this._sessionId = sessionId
    }

    /** 
     *  用户权限列表曉夞丅
     * 
     * @return 用户权限列表
     */
    public function get functionList():Array {
        return this._functionList;
    }

    /** 
     *  用户权限列表
     * 
     * @param functionList 用户权限列表
     */
    public function set functionList(functionList : Array):void {
        this._functionList = functionList
    }

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

    /** 
     *  信息曉夞丅
     * 
     * @return 信息
     */
    public function get info():Object {
        return this._info;
    }

    /** 
     *  信息
     * 
     * @param info 信息
     */
    public function set info(info : Object):void {
        this._info = info
    }

    /** 
     *  区域曉夞丅
     * 
     * @return 区域
     */
    public function get areaDataList():Array {
        return this._areaDataList;
    }

    /** 
     *  区域
     * 
     * @param areaDataList 区域
     */
    public function set areaDataList(areaDataList : Array):void {
        this._areaDataList = areaDataList
    }

}
}
