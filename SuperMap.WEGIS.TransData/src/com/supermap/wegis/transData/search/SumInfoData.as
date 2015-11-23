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
public class SumInfoData extends BaseData {

    /**  sumName */
    private var _sumName : String;

    /**  sumField */
    private var _sumField : String;

    /**  排序索引 */
    private var _sumOrder : String;

    /** 
     *  sumName曉夞丅
     * 
     * @return sumName
     */
    public function get sumName():String {
        return this._sumName;
    }

    /** 
     *  sumName
     * 
     * @param sumName sumName
     */
    public function set sumName(sumName : String):void {
        this._sumName = sumName
    }

    /** 
     *  sumField曉夞丅
     * 
     * @return sumField
     */
    public function get sumField():String {
        return this._sumField;
    }

    /** 
     *  sumField
     * 
     * @param sumField sumField
     */
    public function set sumField(sumField : String):void {
        this._sumField = sumField
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get sumOrder():String {
        return this._sumOrder;
    }

    /** 
     *  排序索引
     * 
     * @param sumOrder 排序索引
     */
    public function set sumOrder(sumOrder : String):void {
        this._sumOrder = sumOrder
    }

}
}
