package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 雨量图例设定信息
 * 
 * 雨量图例设定信息 
 * 
 * @author supermap
 */
public class EmergencyQuotaSettingData extends BaseData {

    /**  雨量指标代码 */
    private var _quota : String;

    /**  雨量指标 */
    private var _quotaValue : String;

    /**  雨量指标名称 */
    private var _quotaName : String;

    /**  雨量指标颜色 */
    private var _quotaColor : String;

    /** 
     *  雨量指标代码曉夞丅
     * 
     * @return 雨量指标代码
     */
    public function get quota():String {
        return this._quota;
    }

    /** 
     *  雨量指标代码
     * 
     * @param quota 雨量指标代码
     */
    public function set quota(quota : String):void {
        this._quota = quota
    }

    /** 
     *  雨量指标曉夞丅
     * 
     * @return 雨量指标
     */
    public function get quotaValue():String {
        return this._quotaValue;
    }

    /** 
     *  雨量指标
     * 
     * @param quotaValue 雨量指标
     */
    public function set quotaValue(quotaValue : String):void {
        this._quotaValue = quotaValue
    }

    /** 
     *  雨量指标名称曉夞丅
     * 
     * @return 雨量指标名称
     */
    public function get quotaName():String {
        return this._quotaName;
    }

    /** 
     *  雨量指标名称
     * 
     * @param quotaName 雨量指标名称
     */
    public function set quotaName(quotaName : String):void {
        this._quotaName = quotaName
    }

    /** 
     *  雨量指标颜色曉夞丅
     * 
     * @return 雨量指标颜色
     */
    public function get quotaColor():String {
        return this._quotaColor;
    }

    /** 
     *  雨量指标颜色
     * 
     * @param quotaColor 雨量指标颜色
     */
    public function set quotaColor(quotaColor : String):void {
        this._quotaColor = quotaColor
    }

}
}
