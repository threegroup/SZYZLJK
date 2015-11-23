package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 自定义查询字段信息data
 * 
 * 自定义查询字段信息data
 * 
 * @author supermap
 */
public class SearchCustomFieldData extends BaseData {

    /**  字段code */
    private var _filedCode : String;

    /**  字段名称 */
    private var _filedName : String;

    /**  字段类型 */
    private var _filedType : String;

    /**  字段值 */
    private var _filedValue : String;

    /** 
     *  字段code曉夞丅
     * 
     * @return 字段code
     */
    public function get filedCode():String {
        return this._filedCode;
    }

    /** 
     *  字段code
     * 
     * @param filedCode 字段code
     */
    public function set filedCode(filedCode : String):void {
        this._filedCode = filedCode
    }

    /** 
     *  字段名称曉夞丅
     * 
     * @return 字段名称
     */
    public function get filedName():String {
        return this._filedName;
    }

    /** 
     *  字段名称
     * 
     * @param filedName 字段名称
     */
    public function set filedName(filedName : String):void {
        this._filedName = filedName
    }

    /** 
     *  字段类型曉夞丅
     * 
     * @return 字段类型
     */
    public function get filedType():String {
        return this._filedType;
    }

    /** 
     *  字段类型
     * 
     * @param filedType 字段类型
     */
    public function set filedType(filedType : String):void {
        this._filedType = filedType
    }

    /** 
     *  字段值曉夞丅
     * 
     * @return 字段值
     */
    public function get filedValue():String {
        return this._filedValue;
    }

    /** 
     *  字段值
     * 
     * @param filedValue 字段值
     */
    public function set filedValue(filedValue : String):void {
        this._filedValue = filedValue
    }

}
}
