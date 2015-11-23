package com.supermap.wegis.transData.themeanalysis
{
import com.supermap.wegis.transData.search.SearchRequestData;

/** 
 * 获取专题分析RequestData
 * 
 * 获取专题分析RequestData
 * 
 * @author supermap
 */
public class ThemeAnalysisRequestData extends SearchRequestData {

    /**  专题ID */
    private var _themeId : String;

    /**  文件ID */
    private var _themeFileId : String;

    /**  文件名称 */
    private var _themeFileName : String;

    /**  专题类型 */
    private var _themeType : String;

    /**  专题名称 */
    private var _themeName : String;

    /**  指标 */
    private var _themeQuota : String;

    /**  统计区域类型 */
    private var _statisticAreaType : String;

    /**  中心点 */
    private var _centerXY : String;

    /**  半径 */
    private var _radius : String;

    /**  半径单位 */
    private var _radiusUnit : String;

    /**  是否导出 */
    private var _exportFlag : String;

    /**  导出sheet名 */
    private var _sheetName : String;

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
     *  文件ID曉夞丅
     * 
     * @return 文件ID
     */
    public function get themeFileId():String {
        return this._themeFileId;
    }

    /** 
     *  文件ID
     * 
     * @param themeFileId 文件ID
     */
    public function set themeFileId(themeFileId : String):void {
        this._themeFileId = themeFileId
    }

    /** 
     *  文件名称曉夞丅
     * 
     * @return 文件名称
     */
    public function get themeFileName():String {
        return this._themeFileName;
    }

    /** 
     *  文件名称
     * 
     * @param themeFileName 文件名称
     */
    public function set themeFileName(themeFileName : String):void {
        this._themeFileName = themeFileName
    }

    /** 
     *  专题类型曉夞丅
     * 
     * @return 专题类型
     */
    public function get themeType():String {
        return this._themeType;
    }

    /** 
     *  专题类型
     * 
     * @param themeType 专题类型
     */
    public function set themeType(themeType : String):void {
        this._themeType = themeType
    }

    /** 
     *  专题名称曉夞丅
     * 
     * @return 专题名称
     */
    public function get themeName():String {
        return this._themeName;
    }

    /** 
     *  专题名称
     * 
     * @param themeName 专题名称
     */
    public function set themeName(themeName : String):void {
        this._themeName = themeName
    }

    /** 
     *  指标曉夞丅
     * 
     * @return 指标
     */
    public function get themeQuota():String {
        return this._themeQuota;
    }

    /** 
     *  指标
     * 
     * @param themeQuota 指标
     */
    public function set themeQuota(themeQuota : String):void {
        this._themeQuota = themeQuota
    }

    /** 
     *  统计区域类型曉夞丅
     * 
     * @return 统计区域类型
     */
    public function get statisticAreaType():String {
        return this._statisticAreaType;
    }

    /** 
     *  统计区域类型
     * 
     * @param statisticAreaType 统计区域类型
     */
    public function set statisticAreaType(statisticAreaType : String):void {
        this._statisticAreaType = statisticAreaType
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
     *  半径曉夞丅
     * 
     * @return 半径
     */
    public function get radius():String {
        return this._radius;
    }

    /** 
     *  半径
     * 
     * @param radius 半径
     */
    public function set radius(radius : String):void {
        this._radius = radius
    }

    /** 
     *  半径单位曉夞丅
     * 
     * @return 半径单位
     */
    public function get radiusUnit():String {
        return this._radiusUnit;
    }

    /** 
     *  半径单位
     * 
     * @param radiusUnit 半径单位
     */
    public function set radiusUnit(radiusUnit : String):void {
        this._radiusUnit = radiusUnit
    }

    /** 
     *  是否导出曉夞丅
     * 
     * @return 是否导出
     */
    public function get exportFlag():String {
        return this._exportFlag;
    }

    /** 
     *  是否导出
     * 
     * @param exportFlag 是否导出
     */
    public function set exportFlag(exportFlag : String):void {
        this._exportFlag = exportFlag
    }

    /** 
     *  导出sheet名曉夞丅
     * 
     * @return 导出sheet名
     */
    public function get sheetName():String {
        return this._sheetName;
    }

    /** 
     *  导出sheet名
     * 
     * @param sheetName 导出sheet名
     */
    public function set sheetName(sheetName : String):void {
        this._sheetName = sheetName
    }

}
}
