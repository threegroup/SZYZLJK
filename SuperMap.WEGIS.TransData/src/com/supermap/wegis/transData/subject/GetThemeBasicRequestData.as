package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得基本主题结果RequestData
 * 
 * 取得基本主题结果RequestData
 * 
 * @author supermap
 */
public class GetThemeBasicRequestData extends RequestData {

    /**  专题对应表 */
    private var _themeTable : String;

    /**  区域划分 */
    private var _areaType : String;

    /**  统计指标 */
    private var _statisQuota : String;

    /**  统计分类 */
    private var _statisType : String;

    /**  统计分类值 */
    private var _statisTypeValue : String;

    /**  下钻级别 */
    private var _deepLevel : String;

    /**  区域code */
    private var _areaCode : String;

    /**  查询类型:1、主题统计信息 2、主题个体信息 */
    private var _queryType : String;

    /**  排序字段 */
    private var _sortField : String;

    /**  降序字段 */
    private var _isAsc : String;

    /** 
     *  专题对应表曉夞丅
     * 
     * @return 专题对应表
     */
    public function get themeTable():String {
        return this._themeTable;
    }

    /** 
     *  专题对应表
     * 
     * @param themeTable 专题对应表
     */
    public function set themeTable(themeTable : String):void {
        this._themeTable = themeTable
    }

    /** 
     *  区域划分曉夞丅
     * 
     * @return 区域划分
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域划分
     * 
     * @param areaType 区域划分
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  统计指标曉夞丅
     * 
     * @return 统计指标
     */
    public function get statisQuota():String {
        return this._statisQuota;
    }

    /** 
     *  统计指标
     * 
     * @param statisQuota 统计指标
     */
    public function set statisQuota(statisQuota : String):void {
        this._statisQuota = statisQuota
    }

    /** 
     *  统计分类曉夞丅
     * 
     * @return 统计分类
     */
    public function get statisType():String {
        return this._statisType;
    }

    /** 
     *  统计分类
     * 
     * @param statisType 统计分类
     */
    public function set statisType(statisType : String):void {
        this._statisType = statisType
    }

    /** 
     *  统计分类值曉夞丅
     * 
     * @return 统计分类值
     */
    public function get statisTypeValue():String {
        return this._statisTypeValue;
    }

    /** 
     *  统计分类值
     * 
     * @param statisTypeValue 统计分类值
     */
    public function set statisTypeValue(statisTypeValue : String):void {
        this._statisTypeValue = statisTypeValue
    }

    /** 
     *  下钻级别曉夞丅
     * 
     * @return 下钻级别
     */
    public function get deepLevel():String {
        return this._deepLevel;
    }

    /** 
     *  下钻级别
     * 
     * @param deepLevel 下钻级别
     */
    public function set deepLevel(deepLevel : String):void {
        this._deepLevel = deepLevel
    }

    /** 
     *  区域code曉夞丅
     * 
     * @return 区域code
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域code
     * 
     * @param areaCode 区域code
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  查询类型:1、主题统计信息 2、主题个体信息曉夞丅
     * 
     * @return 查询类型:1、主题统计信息 2、主题个体信息
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询类型:1、主题统计信息 2、主题个体信息
     * 
     * @param queryType 查询类型:1、主题统计信息 2、主题个体信息
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  排序字段曉夞丅
     * 
     * @return 排序字段
     */
    public function get sortField():String {
        return this._sortField;
    }

    /** 
     *  排序字段
     * 
     * @param sortField 排序字段
     */
    public function set sortField(sortField : String):void {
        this._sortField = sortField
    }

    /** 
     *  降序字段曉夞丅
     * 
     * @return 降序字段
     */
    public function get isAsc():String {
        return this._isAsc;
    }

    /** 
     *  降序字段
     * 
     * @param isAsc 降序字段
     */
    public function set isAsc(isAsc : String):void {
        this._isAsc = isAsc
    }

}
}
