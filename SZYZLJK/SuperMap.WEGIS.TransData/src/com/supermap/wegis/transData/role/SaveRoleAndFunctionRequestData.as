package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 用户授权请求信息TransData
 * 
 * 用户授权请求信息TransData
 * 
 * @author supermap
 */
public class SaveRoleAndFunctionRequestData extends RequestData {

    /**  功能权限数据 */
    private var _functionData : Array;

    /**  服务ID */
    private var _serviceId : String;

    /**  角色ID */
    private var _roleId : String;

    /**  区域角色权限数据 */
    private var _areaData : Array;

    /** 
     *  功能权限数据曉夞丅
     * 
     * @return 功能权限数据
     */
    public function get functionData():Array {
        return this._functionData;
    }

    /** 
     *  功能权限数据
     * 
     * @param functionData 功能权限数据
     */
    public function set functionData(functionData : Array):void {
        this._functionData = functionData
    }

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  角色ID曉夞丅
     * 
     * @return 角色ID
     */
    public function get roleId():String {
        return this._roleId;
    }

    /** 
     *  角色ID
     * 
     * @param roleId 角色ID
     */
    public function set roleId(roleId : String):void {
        this._roleId = roleId
    }

    /** 
     *  区域角色权限数据曉夞丅
     * 
     * @return 区域角色权限数据
     */
    public function get areaData():Array {
        return this._areaData;
    }

    /** 
     *  区域角色权限数据
     * 
     * @param areaData 区域角色权限数据
     */
    public function set areaData(areaData : Array):void {
        this._areaData = areaData
    }

}
}
