package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 图例记录Data
 * 
 * 图例记录Data
 * 
 * @author supermap
 */
public class MapLegendData extends BaseData {

    /**  图标符号ID */
    private var _legendId : String;

    /**  图标符号类型 */
    private var _legendType : String;

    /**  图标符号类型名称 */
    private var _legendTypeName : String;

    /**  图标符号url */
    private var _legendUrl : String;

    /**  图标符号名称 */
    private var _legendName : String;

    /**  图标符号别名 */
    private var _legendShort : String;

    /**  最大比例尺 */
    private var _maxScale : String;

    /**  最小比例尺 */
    private var _minScale : String;

    /** 
     *  图标符号ID曉夞丅
     * 
     * @return 图标符号ID
     */
    public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  图标符号ID
     * 
     * @param legendId 图标符号ID
     */
    public function set legendId(legendId : String):void {
        this._legendId = legendId
    }

    /** 
     *  图标符号类型曉夞丅
     * 
     * @return 图标符号类型
     */
    public function get legendType():String {
        return this._legendType;
    }

    /** 
     *  图标符号类型
     * 
     * @param legendType 图标符号类型
     */
    public function set legendType(legendType : String):void {
        this._legendType = legendType
    }

    /** 
     *  图标符号类型名称曉夞丅
     * 
     * @return 图标符号类型名称
     */
    public function get legendTypeName():String {
        return this._legendTypeName;
    }

    /** 
     *  图标符号类型名称
     * 
     * @param legendTypeName 图标符号类型名称
     */
    public function set legendTypeName(legendTypeName : String):void {
        this._legendTypeName = legendTypeName
    }

    /** 
     *  图标符号url曉夞丅
     * 
     * @return 图标符号url
     */
    public function get legendUrl():String {
        return this._legendUrl;
    }

    /** 
     *  图标符号url
     * 
     * @param legendUrl 图标符号url
     */
    public function set legendUrl(legendUrl : String):void {
        this._legendUrl = legendUrl
    }

    /** 
     *  图标符号名称曉夞丅
     * 
     * @return 图标符号名称
     */
    public function get legendName():String {
        return this._legendName;
    }

    /** 
     *  图标符号名称
     * 
     * @param legendName 图标符号名称
     */
    public function set legendName(legendName : String):void {
        this._legendName = legendName
    }

    /** 
     *  图标符号别名曉夞丅
     * 
     * @return 图标符号别名
     */
    public function get legendShort():String {
        return this._legendShort;
    }

    /** 
     *  图标符号别名
     * 
     * @param legendShort 图标符号别名
     */
    public function set legendShort(legendShort : String):void {
        this._legendShort = legendShort
    }

    /** 
     *  最大比例尺曉夞丅
     * 
     * @return 最大比例尺
     */
    public function get maxScale():String {
        return this._maxScale;
    }

    /** 
     *  最大比例尺
     * 
     * @param maxScale 最大比例尺
     */
    public function set maxScale(maxScale : String):void {
        this._maxScale = maxScale
    }

    /** 
     *  最小比例尺曉夞丅
     * 
     * @return 最小比例尺
     */
    public function get minScale():String {
        return this._minScale;
    }

    /** 
     *  最小比例尺
     * 
     * @param minScale 最小比例尺
     */
    public function set minScale(minScale : String):void {
        this._minScale = minScale
    }

}
}
