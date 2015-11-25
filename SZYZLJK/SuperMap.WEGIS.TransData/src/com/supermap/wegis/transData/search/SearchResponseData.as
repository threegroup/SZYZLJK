package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class SearchResponseData extends ResponseData {

    /**  查询结果Header */
    private var _resultHeaderList : Array;

    /**  查询结果详情List */
    private var _resultDetailList : Array;

    /**  统计信息Header */
    private var _statisticHeaderList : Array;

    /**  统计信息详细List */
    private var _statisticDetailList : Array;

    /**  统计图显示形式 */
    private var _statisticChartStyle : String;

    /**  二级详细信息 */
    private var _surveyData : Array;

    /**  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询 */
    private var _queryType : String;

    /**  矢量点串 */
    private var _vectorPointsList : Array;

    /** 
     *  查询结果Header曉夞丅
     * 
     * @return 查询结果Header
     */
    public function get resultHeaderList():Array {
        return this._resultHeaderList;
    }

    /** 
     *  查询结果Header
     * 
     * @param resultHeaderList 查询结果Header
     */
    public function set resultHeaderList(resultHeaderList : Array):void {
        this._resultHeaderList = resultHeaderList
    }

    /** 
     *  查询结果详情List曉夞丅
     * 
     * @return 查询结果详情List
     */
    public function get resultDetailList():Array {
        return this._resultDetailList;
    }

    /** 
     *  查询结果详情List
     * 
     * @param resultDetailList 查询结果详情List
     */
    public function set resultDetailList(resultDetailList : Array):void {
        this._resultDetailList = resultDetailList
    }

    /** 
     *  统计信息Header曉夞丅
     * 
     * @return 统计信息Header
     */
    public function get statisticHeaderList():Array {
        return this._statisticHeaderList;
    }

    /** 
     *  统计信息Header
     * 
     * @param statisticHeaderList 统计信息Header
     */
    public function set statisticHeaderList(statisticHeaderList : Array):void {
        this._statisticHeaderList = statisticHeaderList
    }

    /** 
     *  统计信息详细List曉夞丅
     * 
     * @return 统计信息详细List
     */
    public function get statisticDetailList():Array {
        return this._statisticDetailList;
    }

    /** 
     *  统计信息详细List
     * 
     * @param statisticDetailList 统计信息详细List
     */
    public function set statisticDetailList(statisticDetailList : Array):void {
        this._statisticDetailList = statisticDetailList
    }

    /** 
     *  统计图显示形式曉夞丅
     * 
     * @return 统计图显示形式
     */
    public function get statisticChartStyle():String {
        return this._statisticChartStyle;
    }

    /** 
     *  统计图显示形式
     * 
     * @param statisticChartStyle 统计图显示形式
     */
    public function set statisticChartStyle(statisticChartStyle : String):void {
        this._statisticChartStyle = statisticChartStyle
    }

    /** 
     *  二级详细信息曉夞丅
     * 
     * @return 二级详细信息
     */
    public function get surveyData():Array {
        return this._surveyData;
    }

    /** 
     *  二级详细信息
     * 
     * @param surveyData 二级详细信息
     */
    public function set surveyData(surveyData : Array):void {
        this._surveyData = surveyData
    }

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询曉夞丅
     * 
     * @return 查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     * 
     * @param queryType 查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  矢量点串曉夞丅
     * 
     * @return 矢量点串
     */
    public function get vectorPointsList():Array {
        return this._vectorPointsList;
    }

    /** 
     *  矢量点串
     * 
     * @param vectorPointsList 矢量点串
     */
    public function set vectorPointsList(vectorPointsList : Array):void {
        this._vectorPointsList = vectorPointsList
    }

}
}
