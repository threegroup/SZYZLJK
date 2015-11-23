package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 地图区域代码信息Data
 * 
 * 地图区域代码信息Data
 * 
 * @author supermap
 */
public class MapAreaCodeInfo extends BaseData {

    /**  区域级别 */
    private var _areaLevel : String;

    /**  区域名称 */
    private var _areaName : String;

    /**  区域范围 */
    private var _areaBounds : String;

    /**  区域编码 */
    private var _areaCode : String;

    /** 
     *  区域级别曉夞丅
     * 
     * @return 区域级别
     */
    public function get areaLevel():String {
        return this._areaLevel;
    }

    /** 
     *  区域级别
     * 
     * @param areaLevel 区域级别
     */
    public function set areaLevel(areaLevel : String):void {
        this._areaLevel = areaLevel
    }

    /** 
     *  区域名称曉夞丅
     * 
     * @return 区域名称
     */
    public function get areaName():String {
        return this._areaName;
    }

    /** 
     *  区域名称
     * 
     * @param areaName 区域名称
     */
    public function set areaName(areaName : String):void {
        this._areaName = areaName
    }

    /** 
     *  区域范围曉夞丅
     * 
     * @return 区域范围
     */
    public function get areaBounds():String {
        return this._areaBounds;
    }

    /** 
     *  区域范围
     * 
     * @param areaBounds 区域范围
     */
    public function set areaBounds(areaBounds : String):void {
        this._areaBounds = areaBounds
    }

    /** 
     *  区域编码曉夞丅
     * 
     * @return 区域编码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域编码
     * 
     * @param areaCode 区域编码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

}
}
