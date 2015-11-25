package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.role.RoleFuncRelInfoData;

/** 
 * 用户授权请求信息TransData
 * 
 * 用户授权请求信息TransData
 * 
 * @author supermap
 */
public class InitRoleAndFunctionRequestData extends RequestData {

    /**  角色功能列表 */
    private var _roleFunInfo : RoleFuncRelInfoData;

    /**  功能类型 */
    private var _servicType : String;

    /** 
     *  角色功能列表曉夞丅
     * 
     * @return 角色功能列表
     */
    public function get roleFunInfo():RoleFuncRelInfoData {
        return this._roleFunInfo;
    }

    /** 
     *  角色功能列表
     * 
     * @param roleFunInfo 角色功能列表
     */
    public function set roleFunInfo(roleFunInfo : RoleFuncRelInfoData):void {
        this._roleFunInfo = roleFunInfo
    }

    /** 
     *  功能类型曉夞丅
     * 
     * @return 功能类型
     */
    public function get servicType():String {
        return this._servicType;
    }

    /** 
     *  功能类型
     * 
     * @param servicType 功能类型
     */
    public function set servicType(servicType : String):void {
        this._servicType = servicType
    }

}
}
