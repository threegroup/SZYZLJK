package com.supermap.wegis.transData.realtime
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class RealTimeResponseData extends ResponseData {

    /**  实时信息结果列表 */
    private var _resultList : Array;

    /**  测站基本信息 */
    private var _stationList : Array;

    /**  结果集Header */
    private var _resultHeaderList : Array;

    /** 
     *  实时信息结果列表曉夞丅
     * 
     * @return 实时信息结果列表
     */
    public function get resultList():Array {
        return this._resultList;
    }

    /** 
     *  实时信息结果列表
     * 
     * @param resultList 实时信息结果列表
     */
    public function set resultList(resultList : Array):void {
        this._resultList = resultList
    }

    /** 
     *  测站基本信息曉夞丅
     * 
     * @return 测站基本信息
     */
    public function get stationList():Array {
        return this._stationList;
    }

    /** 
     *  测站基本信息
     * 
     * @param stationList 测站基本信息
     */
    public function set stationList(stationList : Array):void {
        this._stationList = stationList
    }

    /** 
     *  结果集Header曉夞丅
     * 
     * @return 结果集Header
     */
    public function get resultHeaderList():Array {
        return this._resultHeaderList;
    }

    /** 
     *  结果集Header
     * 
     * @param resultHeaderList 结果集Header
     */
    public function set resultHeaderList(resultHeaderList : Array):void {
        this._resultHeaderList = resultHeaderList
    }

}
}
