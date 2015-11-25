package com.supermap.wegis.transData.themeanalysis
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 雨量点串信息
 * 
 * 雨量点串信息 
 * 
 * @author supermap
 */
public class QuotaSharpData extends BaseData {

    /**  雨量指标 */
    private var _quota : String;

    /**  雨量点串 */
    private var _pointsDataList : Array;

    /** 
     *  雨量指标曉夞丅
     * 
     * @return 雨量指标
     */
    public function get quota():String {
        return this._quota;
    }

    /** 
     *  雨量指标
     * 
     * @param quota 雨量指标
     */
    public function set quota(quota : String):void {
        this._quota = quota
    }

    /** 
     *  雨量点串曉夞丅
     * 
     * @return 雨量点串
     */
    public function get pointsDataList():Array {
        return this._pointsDataList;
    }

    /** 
     *  雨量点串
     * 
     * @param pointsDataList 雨量点串
     */
    public function set pointsDataList(pointsDataList : Array):void {
        this._pointsDataList = pointsDataList
    }

}
}
