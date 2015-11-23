package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 雨量图例设定信息
 * 
 * 雨量图例设定信息 
 * 
 * @author supermap
 */
public class IsoLinePropertiesData extends BaseData {

    /**  最小值 */
    private var _minValue : String;

    /**  最大值 */
    private var _maxValue : String;

    /**  级别 */
    private var _level : String;

    /** 
     *  最小值曉夞丅
     * 
     * @return 最小值
     */
    public function get minValue():String {
        return this._minValue;
    }

    /** 
     *  最小值
     * 
     * @param minValue 最小值
     */
    public function set minValue(minValue : String):void {
        this._minValue = minValue
    }

    /** 
     *  最大值曉夞丅
     * 
     * @return 最大值
     */
    public function get maxValue():String {
        return this._maxValue;
    }

    /** 
     *  最大值
     * 
     * @param maxValue 最大值
     */
    public function set maxValue(maxValue : String):void {
        this._maxValue = maxValue
    }

    /** 
     *  级别曉夞丅
     * 
     * @return 级别
     */
    public function get level():String {
        return this._level;
    }

    /** 
     *  级别
     * 
     * @param level 级别
     */
    public function set level(level : String):void {
        this._level = level
    }

}
}
