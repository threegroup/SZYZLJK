package com.supermap.wegis.transData.mjp
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class MjpResponseData extends ResponseData {

    /**  查询结果Header */
    private var _resultHeaderList : Array;

    /**  查询结果详情List */
    private var _resultDetailList : Array;

    /**  统计信息Header */
    private var _statisticHeaderList : Array;

    /**  统计信息详细List */
    private var _statisticDetailList : Array;

    /**  二级详细信息 */
    private var _surveyData : Array;

    /**  矢量点串 */
    private var _vectorPointsList : Array;

    /**  区域条件 */
    private var _admDivConditions : Array;

    /**  状态条件 */
    private var _statusConditions : Array;

    /**  分类条件 */
    private var _typeConditions : Array;

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

    /** 
     *  区域条件曉夞丅
     * 
     * @return 区域条件
     */
    public function get admDivConditions():Array {
        return this._admDivConditions;
    }

    /** 
     *  区域条件
     * 
     * @param admDivConditions 区域条件
     */
    public function set admDivConditions(admDivConditions : Array):void {
        this._admDivConditions = admDivConditions
    }

    /** 
     *  状态条件曉夞丅
     * 
     * @return 状态条件
     */
    public function get statusConditions():Array {
        return this._statusConditions;
    }

    /** 
     *  状态条件
     * 
     * @param statusConditions 状态条件
     */
    public function set statusConditions(statusConditions : Array):void {
        this._statusConditions = statusConditions
    }

    /** 
     *  分类条件曉夞丅
     * 
     * @return 分类条件
     */
    public function get typeConditions():Array {
        return this._typeConditions;
    }

    /** 
     *  分类条件
     * 
     * @param typeConditions 分类条件
     */
    public function set typeConditions(typeConditions : Array):void {
        this._typeConditions = typeConditions
    }

}
}
