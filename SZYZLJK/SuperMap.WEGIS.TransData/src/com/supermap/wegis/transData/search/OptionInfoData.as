package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 默认查询要素条件字典表TransData
 * 
 * 高级查询要素条件字典表TransData
 * 
 * @author supermap
 */
public class OptionInfoData extends BaseData {

    /**  optionValue */
    private var _optionValue : String;

    /**  optionName */
    private var _optionName : String;

    /**  排序索引 */
    private var _dicOrder : String;

    /** 
     *  optionValue曉夞丅
     * 
     * @return optionValue
     */
    public function get optionValue():String {
        return this._optionValue;
    }

    /** 
     *  optionValue
     * 
     * @param optionValue optionValue
     */
    public function set optionValue(optionValue : String):void {
        this._optionValue = optionValue
    }

    /** 
     *  optionName曉夞丅
     * 
     * @return optionName
     */
    public function get optionName():String {
        return this._optionName;
    }

    /** 
     *  optionName
     * 
     * @param optionName optionName
     */
    public function set optionName(optionName : String):void {
        this._optionName = optionName
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
