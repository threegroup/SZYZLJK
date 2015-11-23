package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 区域选择Data
 * 
 * 区域选择Data
 * 
 * @author supermap
 */
public class QueryAreaLevelData extends BaseData {

    /**  区域级别 */
    private var _areaLevel : String;

    /**  区域编码 */
    private var _areaCodeList : Array;

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
     *  区域编码曉夞丅
     * 
     * @return 区域编码
     */
    public function get areaCodeList():Array {
        return this._areaCodeList;
    }

    /** 
     *  区域编码
     * 
     * @param areaCodeList 区域编码
     */
    public function set areaCodeList(areaCodeList : Array):void {
        this._areaCodeList = areaCodeList
    }

}
}
