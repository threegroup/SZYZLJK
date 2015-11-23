package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询服务参数表TransData
 * 
 * 查询服务参数表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceResponseData extends ResponseData {

    /**  服务列表 */
    private var _smpDbServiceInfoDataList : Array;

    /**  服务参数列表 */
    private var _smpDbServiceParamsInfoDataList : Array;

    /**  执行SQL结果 */
    private var _excuteResult : String;

    /** 
     *  服务列表曉夞丅
     * 
     * @return 服务列表
     */
    public function get smpDbServiceInfoDataList():Array {
        return this._smpDbServiceInfoDataList;
    }

    /** 
     *  服务列表
     * 
     * @param smpDbServiceInfoDataList 服务列表
     */
    public function set smpDbServiceInfoDataList(smpDbServiceInfoDataList : Array):void {
        this._smpDbServiceInfoDataList = smpDbServiceInfoDataList
    }

    /** 
     *  服务参数列表曉夞丅
     * 
     * @return 服务参数列表
     */
    public function get smpDbServiceParamsInfoDataList():Array {
        return this._smpDbServiceParamsInfoDataList;
    }

    /** 
     *  服务参数列表
     * 
     * @param smpDbServiceParamsInfoDataList 服务参数列表
     */
    public function set smpDbServiceParamsInfoDataList(smpDbServiceParamsInfoDataList : Array):void {
        this._smpDbServiceParamsInfoDataList = smpDbServiceParamsInfoDataList
    }

    /** 
     *  执行SQL结果曉夞丅
     * 
     * @return 执行SQL结果
     */
    public function get excuteResult():String {
        return this._excuteResult;
    }

    /** 
     *  执行SQL结果
     * 
     * @param excuteResult 执行SQL结果
     */
    public function set excuteResult(excuteResult : String):void {
        this._excuteResult = excuteResult
    }

}
}
