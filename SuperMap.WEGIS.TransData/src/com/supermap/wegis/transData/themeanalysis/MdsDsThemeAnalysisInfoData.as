package com.supermap.wegis.transData.themeanalysis
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 专题分析表TransData
 * 
 * 专题分析表TransData
 * 
 * @author supermap
 */
public class MdsDsThemeAnalysisInfoData extends BaseData {

    /**  专题ID */
    private var _themeId : String;

    /**  专题名称 */
    private var _themeName : String;

    /**  创建时间 */
    private var _createDate : String;

    /**  区域类型 */
    private var _areaStatisticAreaType : String;

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
     *  创建时间曉夞丅
     * 
     * @return 创建时间
     */
    public function get createDate():String {
        return this._createDate;
    }

    /** 
     *  创建时间
     * 
     * @param createDate 创建时间
     */
    public function set createDate(createDate : String):void {
        this._createDate = createDate
    }

    /** 
     *  区域类型曉夞丅
     * 
     * @return 区域类型
     */
    public function get areaStatisticAreaType():String {
        return this._areaStatisticAreaType;
    }

    /** 
     *  区域类型
     * 
     * @param areaStatisticAreaType 区域类型
     */
    public function set areaStatisticAreaType(areaStatisticAreaType : String):void {
        this._areaStatisticAreaType = areaStatisticAreaType
    }

}
}
