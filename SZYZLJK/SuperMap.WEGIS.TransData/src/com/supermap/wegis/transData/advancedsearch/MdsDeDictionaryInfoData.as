package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 高级查询要素条件字典表TransData
 * 
 * 高级查询要素条件字典表TransData
 * 
 * @author supermap
 */
public class MdsDeDictionaryInfoData extends BaseData {

    /**  字典类型 */
    private var _dicType : String;

    /**  字典类型名称 */
    private var _dicTypeName : String;

    /**  字典值 */
    private var _dicValue : String;

    /**  字典名称 */
    private var _dicName : String;

    /**  排序索引 */
    private var _dicOrder : String;

    /** 
     *  字典类型曉夞丅
     * 
     * @return 字典类型
     */
    public function get dicType():String {
        return this._dicType;
    }

    /** 
     *  字典类型
     * 
     * @param dicType 字典类型
     */
    public function set dicType(dicType : String):void {
        this._dicType = dicType
    }

    /** 
     *  字典类型名称曉夞丅
     * 
     * @return 字典类型名称
     */
    public function get dicTypeName():String {
        return this._dicTypeName;
    }

    /** 
     *  字典类型名称
     * 
     * @param dicTypeName 字典类型名称
     */
    public function set dicTypeName(dicTypeName : String):void {
        this._dicTypeName = dicTypeName
    }

    /** 
     *  字典值曉夞丅
     * 
     * @return 字典值
     */
    public function get dicValue():String {
        return this._dicValue;
    }

    /** 
     *  字典值
     * 
     * @param dicValue 字典值
     */
    public function set dicValue(dicValue : String):void {
        this._dicValue = dicValue
    }

    /** 
     *  字典名称曉夞丅
     * 
     * @return 字典名称
     */
    public function get dicName():String {
        return this._dicName;
    }

    /** 
     *  字典名称
     * 
     * @param dicName 字典名称
     */
    public function set dicName(dicName : String):void {
        this._dicName = dicName
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get dicOrder():String {
        return this._dicOrder;
    }

    /** 
     *  排序索引
     * 
     * @param dicOrder 排序索引
     */
    public function set dicOrder(dicOrder : String):void {
        this._dicOrder = dicOrder
    }

}
}
