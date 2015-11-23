package com.supermap.wegis.transData.mjp
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class MjpRequestData extends RequestData {

    /**  统计角度 */
    private var _statisticAngel : String;

    /**  统计字段 */
    private var _statisticFields : Array;

    /**  对象ID */
    private var _ObjId : String;

    /**  点串:空间查询时设定。点串 */
    private var _pointsArray : Array;

    /**  常用检索条件:区域条件,状态条件,分类条件 */
    private var _conditonList : Array;

    /** 
     *  统计角度曉夞丅
     * 
     * @return 统计角度
     */
    public function get statisticAngel():String {
        return this._statisticAngel;
    }

    /** 
     *  统计角度
     * 
     * @param statisticAngel 统计角度
     */
    public function set statisticAngel(statisticAngel : String):void {
        this._statisticAngel = statisticAngel
    }

    /** 
     *  统计字段曉夞丅
     * 
     * @return 统计字段
     */
    public function get statisticFields():Array {
        return this._statisticFields;
    }

    /** 
     *  统计字段
     * 
     * @param statisticFields 统计字段
     */
    public function set statisticFields(statisticFields : Array):void {
        this._statisticFields = statisticFields
    }

    /** 
     *  对象ID曉夞丅
     * 
     * @return 对象ID
     */
    public function get ObjId():String {
        return this._ObjId;
    }

    /** 
     *  对象ID
     * 
     * @param ObjId 对象ID
     */
    public function set ObjId(ObjId : String):void {
        this._ObjId = ObjId
    }

    /** 
     *  点串:空间查询时设定。点串曉夞丅
     * 
     * @return 点串:空间查询时设定。点串
     */
    public function get pointsArray():Array {
        return this._pointsArray;
    }

    /** 
     *  点串:空间查询时设定。点串
     * 
     * @param pointsArray 点串:空间查询时设定。点串
     */
    public function set pointsArray(pointsArray : Array):void {
        this._pointsArray = pointsArray
    }

    /** 
     *  常用检索条件:区域条件,状态条件,分类条件曉夞丅
     * 
     * @return 常用检索条件:区域条件,状态条件,分类条件
     */
    public function get conditonList():Array {
        return this._conditonList;
    }

    /** 
     *  常用检索条件:区域条件,状态条件,分类条件
     * 
     * @param conditonList 常用检索条件:区域条件,状态条件,分类条件
     */
    public function set conditonList(conditonList : Array):void {
        this._conditonList = conditonList
    }

}
}
