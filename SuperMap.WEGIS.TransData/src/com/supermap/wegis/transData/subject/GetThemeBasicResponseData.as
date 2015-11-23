package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.transData.search.SearchResponseData;

/** 
 * 取得基本主题查询结果
 * 
 * 取得基本主题查询结果
 * 
 * @author supermap
 */
public class GetThemeBasicResponseData extends SearchResponseData {

    /**  专题信息详细List */
    private var _themeDetailList : Array;

    /**  能否下钻 */
    private var _hasDeep : String;

    /**  是否有详细对象信息 */
    private var _hasDetailData : String;

    /**  统计指标单位 */
    private var _quotaUnit : String;

    /** 
     *  专题信息详细List曉夞丅
     * 
     * @return 专题信息详细List
     */
    public function get themeDetailList():Array {
        return this._themeDetailList;
    }

    /** 
     *  专题信息详细List
     * 
     * @param themeDetailList 专题信息详细List
     */
    public function set themeDetailList(themeDetailList : Array):void {
        this._themeDetailList = themeDetailList
    }

    /** 
     *  能否下钻曉夞丅
     * 
     * @return 能否下钻
     */
    public function get hasDeep():String {
        return this._hasDeep;
    }

    /** 
     *  能否下钻
     * 
     * @param hasDeep 能否下钻
     */
    public function set hasDeep(hasDeep : String):void {
        this._hasDeep = hasDeep
    }

    /** 
     *  是否有详细对象信息曉夞丅
     * 
     * @return 是否有详细对象信息
     */
    public function get hasDetailData():String {
        return this._hasDetailData;
    }

    /** 
     *  是否有详细对象信息
     * 
     * @param hasDetailData 是否有详细对象信息
     */
    public function set hasDetailData(hasDetailData : String):void {
        this._hasDetailData = hasDetailData
    }

    /** 
     *  统计指标单位曉夞丅
     * 
     * @return 统计指标单位
     */
    public function get quotaUnit():String {
        return this._quotaUnit;
    }

    /** 
     *  统计指标单位
     * 
     * @param quotaUnit 统计指标单位
     */
    public function set quotaUnit(quotaUnit : String):void {
        this._quotaUnit = quotaUnit
    }

}
}
