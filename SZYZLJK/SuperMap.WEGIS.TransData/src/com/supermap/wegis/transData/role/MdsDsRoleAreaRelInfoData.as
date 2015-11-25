package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 区域角色表TransData
 * 
 * 区域角色表TransData
 * 
 * @author supermap
 */
public class MdsDsRoleAreaRelInfoData extends BaseData {

    /**  区域ID */
    private var _areaId : String;

    /**  区域代码 */
    private var _areaCode : String;

    /**  区域类型 */
    private var _areaType : String;

    /**  角色ID */
    private var _roleId : String;

    /**  名称 */
    private var _nodeName : String;

    /** 
     *  区域ID曉夞丅
     * 
     * @return 区域ID
     */
    public function get areaId():String {
        return this._areaId;
    }

    /** 
     *  区域ID
     * 
     * @param areaId 区域ID
     */
    public function set areaId(areaId : String):void {
        this._areaId = areaId
    }

    /** 
     *  区域代码曉夞丅
     * 
     * @return 区域代码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域代码
     * 
     * @param areaCode 区域代码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  区域类型曉夞丅
     * 
     * @return 区域类型
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型
     * 
     * @param areaType 区域类型
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
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
     *  名称曉夞丅
     * 
     * @return 名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  名称
     * 
     * @param nodeName 名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

}
}
