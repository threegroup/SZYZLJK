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
public class QueryAreaData extends BaseData {

    /**  区域类型:1：行政，2：流域，3：水资源分区 */
    private var _areaType : String;

    /**  区域级别 */
    private var _areaLevelDataList : Array;

    /** 
     *  区域类型:1：行政，2：流域，3：水资源分区曉夞丅
     * 
     * @return 区域类型:1：行政，2：流域，3：水资源分区
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型:1：行政，2：流域，3：水资源分区
     * 
     * @param areaType 区域类型:1：行政，2：流域，3：水资源分区
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  区域级别曉夞丅
     * 
     * @return 区域级别
     */
    public function get areaLevelDataList():Array {
        return this._areaLevelDataList;
    }

    /** 
     *  区域级别
     * 
     * @param areaLevelDataList 区域级别
     */
    public function set areaLevelDataList(areaLevelDataList : Array):void {
        this._areaLevelDataList = areaLevelDataList
    }

}
}
