package com.supermap.wegis.transData.smpAccessLog
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 请求日志表TransData
 * 
 * 请求日志表TransData
 * 
 * @author supermap
 */
public class SmpAccessLogInfoData extends BaseData {

    /**  请求url */
    private var _requestUrl : String;

    /**  访问key值 */
    private var _accessKey : String;

    /**  请求结果 */
    private var _accessResult : String;

    /**  请求时间 */
    private var _requestTime : String;

    /**  总数 */
    private var _totalCount : String;

    /** 
     *  请求url曉夞丅
     * 
     * @return 请求url
     */
    public function get requestUrl():String {
        return this._requestUrl;
    }

    /** 
     *  请求url
     * 
     * @param requestUrl 请求url
     */
    public function set requestUrl(requestUrl : String):void {
        this._requestUrl = requestUrl
    }

    /** 
     *  访问key值曉夞丅
     * 
     * @return 访问key值
     */
    public function get accessKey():String {
        return this._accessKey;
    }

    /** 
     *  访问key值
     * 
     * @param accessKey 访问key值
     */
    public function set accessKey(accessKey : String):void {
        this._accessKey = accessKey
    }

    /** 
     *  请求结果曉夞丅
     * 
     * @return 请求结果
     */
    public function get accessResult():String {
        return this._accessResult;
    }

    /** 
     *  请求结果
     * 
     * @param accessResult 请求结果
     */
    public function set accessResult(accessResult : String):void {
        this._accessResult = accessResult
    }

    /** 
     *  请求时间曉夞丅
     * 
     * @return 请求时间
     */
    public function get requestTime():String {
        return this._requestTime;
    }

    /** 
     *  请求时间
     * 
     * @param requestTime 请求时间
     */
    public function set requestTime(requestTime : String):void {
        this._requestTime = requestTime
    }

    /** 
     *  总数曉夞丅
     * 
     * @return 总数
     */
    public function get totalCount():String {
        return this._totalCount;
    }

    /** 
     *  总数
     * 
     * @param totalCount 总数
     */
    public function set totalCount(totalCount : String):void {
        this._totalCount = totalCount
    }

}
}
