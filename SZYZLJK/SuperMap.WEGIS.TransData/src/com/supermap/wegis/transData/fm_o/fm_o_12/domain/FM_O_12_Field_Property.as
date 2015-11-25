package com.supermap.wegis.transData.fm_o.fm_o_12.domain
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * TransData
 * 
 * TransData
 * 
 * @author supermap
 */
public class FM_O_12_Field_Property extends BaseData {

    /**  字段名 */
    private var _fields : String;

    /**  字段值 */
    private var _value : String;

    /**  字段类型 */
    private var _type : String;

    /**  字段最大值 */
    private var _maxValue : String;

    /**  字段最小值 */
    private var _minValue : String;

    /**  组件类型 */
    private var _propertyDisplayType : String;

    /**  是否有自定义条件 */
    private var _hasCustom : String;

    /** 
     *  字段名曉夞丅
     * 
     * @return 字段名
     */
    public function get fields():String {
        return this._fields;
    }

    /** 
     *  字段名
     * 
     * @param fields 字段名
     */
    public function set fields(fields : String):void {
        this._fields = fields
    }

    /** 
     *  字段值曉夞丅
     * 
     * @return 字段值
     */
    public function get value():String {
        return this._value;
    }

    /** 
     *  字段值
     * 
     * @param value 字段值
     */
    public function set value(value : String):void {
        this._value = value
    }

    /** 
     *  字段类型曉夞丅
     * 
     * @return 字段类型
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  字段类型
     * 
     * @param type 字段类型
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  字段最大值曉夞丅
     * 
     * @return 字段最大值
     */
    public function get maxValue():String {
        return this._maxValue;
    }

    /** 
     *  字段最大值
     * 
     * @param maxValue 字段最大值
     */
    public function set maxValue(maxValue : String):void {
        this._maxValue = maxValue
    }

    /** 
     *  字段最小值曉夞丅
     * 
     * @return 字段最小值
     */
    public function get minValue():String {
        return this._minValue;
    }

    /** 
     *  字段最小值
     * 
     * @param minValue 字段最小值
     */
    public function set minValue(minValue : String):void {
        this._minValue = minValue
    }

    /** 
     *  组件类型曉夞丅
     * 
     * @return 组件类型
     */
    public function get propertyDisplayType():String {
        return this._propertyDisplayType;
    }

    /** 
     *  组件类型
     * 
     * @param propertyDisplayType 组件类型
     */
    public function set propertyDisplayType(propertyDisplayType : String):void {
        this._propertyDisplayType = propertyDisplayType
    }

    /** 
     *  是否有自定义条件曉夞丅
     * 
     * @return 是否有自定义条件
     */
    public function get hasCustom():String {
        return this._hasCustom;
    }

    /** 
     *  是否有自定义条件
     * 
     * @param hasCustom 是否有自定义条件
     */
    public function set hasCustom(hasCustom : String):void {
        this._hasCustom = hasCustom
    }

}
}
