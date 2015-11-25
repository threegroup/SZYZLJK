package com.supermap.wegis.transData.smpAccessLog
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 访问信息RequestData
 * 
 * 访问信息RequestData
 * 
 * @author supermap
 */
public class SmpAccessLogRequestData extends RequestData {

    /**  access信息 */
    private var _accessInfo : Array;

    /**  beginTime */
    private var _beginTime : String;

    /**  endTime */
    private var _endTime : String;

    /**  系统id */
    private var _systemId : String;

    /** 
     *  access信息曉夞丅
     * 
     * @return access信息
     */
    public function get accessInfo():Array {
        return this._accessInfo;
    }

    /** 
     *  access信息
     * 
     * @param accessInfo access信息
     */
    public function set accessInfo(accessInfo : Array):void {
        this._accessInfo = accessInfo
    }

    /** 
     *  beginTime曉夞丅
     * 
     * @return beginTime
     */
    public function get beginTime():String {
        return this._beginTime;
    }

    /** 
     *  beginTime
     * 
     * @param beginTime beginTime
     */
    public function set beginTime(beginTime : String):void {
        this._beginTime = beginTime
    }

    /** 
     *  endTime曉夞丅
     * 
     * @return endTime
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  endTime
     * 
     * @param endTime endTime
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

    /** 
     *  系统id曉夞丅
     * 
     * @return 系统id
     */
    public function get systemId():String {
        return this._systemId;
    }

    /** 
     *  系统id
     * 
     * @param systemId 系统id
     */
    public function set systemId(systemId : String):void {
        this._systemId = systemId
    }

}
}
