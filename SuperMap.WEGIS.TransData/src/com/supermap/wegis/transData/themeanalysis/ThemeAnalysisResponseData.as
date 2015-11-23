package com.supermap.wegis.transData.themeanalysis
{
import com.supermap.wegis.transData.search.SearchResponseData;

/** 
 * 获取专题分析ResponseData
 * 
 * 获取专题分析ResponseData
 * 
 * @author supermap
 */
public class ThemeAnalysisResponseData extends SearchResponseData {

    /**  专题标题 */
    private var _themeName : String;

    /**  指标设定情报List */
    private var _quotaSettingList : Array;

    /**  专题单位 */
    private var _quotaUnit : String;

    /**  专题点串情报List */
    private var _sharpList : Array;

    /**  指标Header情报 */
    private var _quotaHeaderList : Array;

    /**  默认初期加载服务 */
    private var _defaultAddServices : String;

    /**  灾后影响服务 */
    private var _compareServices : String;

    /**  其他附加服务 */
    private var _otherAddServices : String;

    /**  专题分析历史List */
    private var _historyList : Array;

    /**  专题ID */
    private var _themeId : String;

    /**  中心点 */
    private var _centerXY : String;

    /**  导出文件url */
    private var _exportUrl : String;

    /**  导出文件名称 */
    private var _fileName : String;

    /** 
     *  专题标题曉夞丅
     * 
     * @return 专题标题
     */
    public function get themeName():String {
        return this._themeName;
    }

    /** 
     *  专题标题
     * 
     * @param themeName 专题标题
     */
    public function set themeName(themeName : String):void {
        this._themeName = themeName
    }

    /** 
     *  指标设定情报List曉夞丅
     * 
     * @return 指标设定情报List
     */
    public function get quotaSettingList():Array {
        return this._quotaSettingList;
    }

    /** 
     *  指标设定情报List
     * 
     * @param quotaSettingList 指标设定情报List
     */
    public function set quotaSettingList(quotaSettingList : Array):void {
        this._quotaSettingList = quotaSettingList
    }

    /** 
     *  专题单位曉夞丅
     * 
     * @return 专题单位
     */
    public function get quotaUnit():String {
        return this._quotaUnit;
    }

    /** 
     *  专题单位
     * 
     * @param quotaUnit 专题单位
     */
    public function set quotaUnit(quotaUnit : String):void {
        this._quotaUnit = quotaUnit
    }

    /** 
     *  专题点串情报List曉夞丅
     * 
     * @return 专题点串情报List
     */
    public function get sharpList():Array {
        return this._sharpList;
    }

    /** 
     *  专题点串情报List
     * 
     * @param sharpList 专题点串情报List
     */
    public function set sharpList(sharpList : Array):void {
        this._sharpList = sharpList
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
     *  默认初期加载服务曉夞丅
     * 
     * @return 默认初期加载服务
     */
    public function get defaultAddServices():String {
        return this._defaultAddServices;
    }

    /** 
     *  默认初期加载服务
     * 
     * @param defaultAddServices 默认初期加载服务
     */
    public function set defaultAddServices(defaultAddServices : String):void {
        this._defaultAddServices = defaultAddServices
    }

    /** 
     *  灾后影响服务曉夞丅
     * 
     * @return 灾后影响服务
     */
    public function get compareServices():String {
        return this._compareServices;
    }

    /** 
     *  灾后影响服务
     * 
     * @param compareServices 灾后影响服务
     */
    public function set compareServices(compareServices : String):void {
        this._compareServices = compareServices
    }

    /** 
     *  其他附加服务曉夞丅
     * 
     * @return 其他附加服务
     */
    public function get otherAddServices():String {
        return this._otherAddServices;
    }

    /** 
     *  其他附加服务
     * 
     * @param otherAddServices 其他附加服务
     */
    public function set otherAddServices(otherAddServices : String):void {
        this._otherAddServices = otherAddServices
    }

    /** 
     *  专题分析历史List曉夞丅
     * 
     * @return 专题分析历史List
     */
    public function get historyList():Array {
        return this._historyList;
    }

    /** 
     *  专题分析历史List
     * 
     * @param historyList 专题分析历史List
     */
    public function set historyList(historyList : Array):void {
        this._historyList = historyList
    }

    /** 
     *  专题ID曉夞丅
     * 
     * @return 专题ID
     */
    public function get themeId():String {
        return this._themeId;
    }

    /** 
     *  专题ID
     * 
     * @param themeId 专题ID
     */
    public function set themeId(themeId : String):void {
        this._themeId = themeId
    }

    /** 
     *  中心点曉夞丅
     * 
     * @return 中心点
     */
    public function get centerXY():String {
        return this._centerXY;
    }

    /** 
     *  中心点
     * 
     * @param centerXY 中心点
     */
    public function set centerXY(centerXY : String):void {
        this._centerXY = centerXY
    }

    /** 
     *  导出文件url曉夞丅
     * 
     * @return 导出文件url
     */
    public function get exportUrl():String {
        return this._exportUrl;
    }

    /** 
     *  导出文件url
     * 
     * @param exportUrl 导出文件url
     */
    public function set exportUrl(exportUrl : String):void {
        this._exportUrl = exportUrl
    }

    /** 
     *  导出文件名称曉夞丅
     * 
     * @return 导出文件名称
     */
    public function get fileName():String {
        return this._fileName;
    }

    /** 
     *  导出文件名称
     * 
     * @param fileName 导出文件名称
     */
    public function set fileName(fileName : String):void {
        this._fileName = fileName
    }

}
}
