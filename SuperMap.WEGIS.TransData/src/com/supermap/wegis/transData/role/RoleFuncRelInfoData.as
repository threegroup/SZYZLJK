package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * RoleFuncRelInfoData
 * 
 * RoleFuncRelInfoData
 * 
 * @author supermap
 */
public class RoleFuncRelInfoData extends BaseData {

    /**  功能ID */
    private var _functionId : String;

    /**  角色ID */
    private var _roleId : String;

    /**  功能类型 */
    private var _functionType : String;

    /**  功能KEY */
    private var _functionKey : String;

    /** 
     *  功能ID曉夞丅
     * 
     * @return 功能ID
     */
    public function get functionId():String {
        return this._functionId;
    }

    /** 
     *  功能ID
     * 
     * @param functionId 功能ID
     */
    public function set functionId(functionId : String):void {
        this._functionId = functionId
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
     *  功能类型曉夞丅
     * 
     * @return 功能类型
     */
    public function get functionType():String {
        return this._functionType;
    }

    /** 
     *  功能类型
     * 
     * @param functionType 功能类型
     */
    public function set functionType(functionType : String):void {
        this._functionType = functionType
    }

    /** 
     *  功能KEY曉夞丅
     * 
     * @return 功能KEY
     */
    public function get functionKey():String {
        return this._functionKey;
    }

    /** 
     *  功能KEY
     * 
     * @param functionKey 功能KEY
     */
    public function set functionKey(functionKey : String):void {
        this._functionKey = functionKey
    }

}
}
