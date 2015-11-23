package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.lucene.utility.LuceneQueryOutputData;

/** 
 * 雨量检索的信息 EmergencyResponseData
 * 
 * 雨量检索的信息 LuceneResponseData
 * 
 * @author supermap
 */
public class EmergencyResponseData extends ResponseData {

    /**  雨量标题 */
    private var _emergencyTitle : String;

    /**  雨量指标设定情报List */
    private var _quotaSettingList : Array;

    /**  雨量单位 */
    private var _quotaUnit : String;

    /**  雨量点串情报List */
    private var _emergencySharpList : Array;

    /**  指标Header情报 */
    private var _quotaHeaderList : Array;

    /**  统计信息Header情报 */
    private var _statisticHeaderList : Array;

    /**  统计信息详细情报 */
    private var _statisticDetailList : Array;

    /**  详细情报Header */
    private var _detailHeaderList : Array;

    /**  信息信息List */
    private var _detailList : Array;

    /**  件数查询结果 */
    private var _luceneQueryResultData : LuceneQueryOutputData;

    /**  获取树列表 */
    private var _nodeList : Array;

    /** 
     *  雨量标题曉夞丅
     * 
     * @return 雨量标题
     */
    public function get emergencyTitle():String {
        return this._emergencyTitle;
    }

    /** 
     *  雨量标题
     * 
     * @param emergencyTitle 雨量标题
     */
    public function set emergencyTitle(emergencyTitle : String):void {
        this._emergencyTitle = emergencyTitle
    }

    /** 
     *  雨量指标设定情报List曉夞丅
     * 
     * @return 雨量指标设定情报List
     */
    public function get quotaSettingList():Array {
        return this._quotaSettingList;
    }

    /** 
     *  雨量指标设定情报List
     * 
     * @param quotaSettingList 雨量指标设定情报List
     */
    public function set quotaSettingList(quotaSettingList : Array):void {
        this._quotaSettingList = quotaSettingList
    }

    /** 
     *  雨量单位曉夞丅
     * 
     * @return 雨量单位
     */
    public function get quotaUnit():String {
        return this._quotaUnit;
    }

    /** 
     *  雨量单位
     * 
     * @param quotaUnit 雨量单位
     */
    public function set quotaUnit(quotaUnit : String):void {
        this._quotaUnit = quotaUnit
    }

    /** 
     *  雨量点串情报List曉夞丅
     * 
     * @return 雨量点串情报List
     */
    public function get emergencySharpList():Array {
        return this._emergencySharpList;
    }

    /** 
     *  雨量点串情报List
     * 
     * @param emergencySharpList 雨量点串情报List
     */
    public function set emergencySharpList(emergencySharpList : Array):void {
        this._emergencySharpList = emergencySharpList
    }

    /** 
     *  指标Header情报曉夞丅
     * 
     * @return 指标Header情报
     */
    public function get quotaHeaderList():Array {
        return this._quotaHeaderList;
    }

    /** 
     *  指标Header情报
     * 
     * @param quotaHeaderList 指标Header情报
     */
    public function set quotaHeaderList(quotaHeaderList : Array):void {
        this._quotaHeaderList = quotaHeaderList
    }

    /** 
     *  统计信息Header情报曉夞丅
     * 
     * @return 统计信息Header情报
     */
    public function get statisticHeaderList():Array {
        return this._statisticHeaderList;
    }

    /** 
     *  统计信息Header情报
     * 
     * @param statisticHeaderList 统计信息Header情报
     */
    public function set statisticHeaderList(statisticHeaderList : Array):void {
        this._statisticHeaderList = statisticHeaderList
    }

    /** 
     *  统计信息详细情报曉夞丅
     * 
     * @return 统计信息详细情报
     */
    public function get statisticDetailList():Array {
        return this._statisticDetailList;
    }

    /** 
     *  统计信息详细情报
     * 
     * @param statisticDetailList 统计信息详细情报
     */
    public function set statisticDetailList(statisticDetailList : Array):void {
        this._statisticDetailList = statisticDetailList
    }

    /** 
     *  详细情报Header曉夞丅
     * 
     * @return 详细情报Header
     */
    public function get detailHeaderList():Array {
        return this._detailHeaderList;
    }

    /** 
     *  详细情报Header
     * 
     * @param detailHeaderList 详细情报Header
     */
    public function set detailHeaderList(detailHeaderList : Array):void {
        this._detailHeaderList = detailHeaderList
    }

    /** 
     *  信息信息List曉夞丅
     * 
     * @return 信息信息List
     */
    public function get detailList():Array {
        return this._detailList;
    }

    /** 
     *  信息信息List
     * 
     * @param detailList 信息信息List
     */
    public function set detailList(detailList : Array):void {
        this._detailList = detailList
    }

    /** 
     *  件数查询结果曉夞丅
     * 
     * @return 件数查询结果
     */
    public function get luceneQueryResultData():LuceneQueryOutputData {
        return this._luceneQueryResultData;
    }

    /** 
     *  件数查询结果
     * 
     * @param luceneQueryResultData 件数查询结果
     */
    public function set luceneQueryResultData(luceneQueryResultData : LuceneQueryOutputData):void {
        this._luceneQueryResultData = luceneQueryResultData
    }

    /** 
     *  获取树列表曉夞丅
     * 
     * @return 获取树列表
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  获取树列表
     * 
     * @param nodeList 获取树列表
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
