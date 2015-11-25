package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * @author supermap
 */
public class MdsDeSearchDataInfoData extends BaseData {

    /**  字段 */
    private var _fields : String;

    /**  字段值 */
    private var _value : String;

    /**  字段最大值 */
    private var _maxValue : String;

    /**  字段类型 */
    private var _type : String;

    /**  属性显示类型 */
    private var _propertyDisplayType : String;

    /**  是否有自定义条件 */
    private var _hasCustom : String;

    /** 
     *  字段曉夞丅
     * 
     * @return 字段
     */
    public function get fields():String {
        return this._fields;
    }

    /** 
     *  字段
     * 
     * @param fields 字段
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
     *  属性显示类型曉夞丅
     * 
     * @return 属性显示类型
     */
    public function get propertyDisplayType():String {
        return this._propertyDisplayType;
    }

    /** 
     *  属性显示类型
     * 
     * @param propertyDisplayType 属性显示类型
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
