package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得自定义查询结果记录集ResponseData
 * 
 * 取得自定义查询结果记录集ResponseData
 * 
 * @author supermap
 */
public class GetSearchCustomResultsResponseData extends ResponseData {

    /**  查询结果Header */
    private var _resultHeaderList : Array;

    /**  专题结果记录集合 */
    private var _resultDetailList : Array;

    /**  是否有统计信息:0:无 1:有 */
    private var _hasStatistic : String;

    /** 
     *  查询结果Header曉夞丅
     * 
     * @return 查询结果Header
     */
    public function get resultHeaderList():Array {
        return this._resultHeaderList;
    }

    /** 
     *  查询结果Header
     * 
     * @param resultHeaderList 查询结果Header
     */
    public function set resultHeaderList(resultHeaderList : Array):void {
        this._resultHeaderList = resultHeaderList
    }

    /** 
     *  专题结果记录集合曉夞丅
     * 
     * @return 专题结果记录集合
     */
    public function get resultDetailList():Array {
        return this._resultDetailList;
    }

    /** 
     *  专题结果记录集合
     * 
     * @param resultDetailList 专题结果记录集合
     */
    public function set resultDetailList(resultDetailList : Array):void {
        this._resultDetailList = resultDetailList
    }

    /** 
     *  是否有统计信息:0:无 1:有曉夞丅
     * 
     * @return 是否有统计信息:0:无 1:有
     */
    public function get hasStatistic():String {
        return this._hasStatistic;
    }

    /** 
     *  是否有统计信息:0:无 1:有
     * 
     * @param hasStatistic 是否有统计信息:0:无 1:有
     */
    public function set hasStatistic(hasStatistic : String):void {
        this._hasStatistic = hasStatistic
    }

}
}
