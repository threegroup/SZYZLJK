package com.supermap.wegis.transData.smpAccessLog
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * AccessLog日志TransData
 * 
 * AccessLog日志TransData
 * 
 * @author supermap
 */
public class SmpAccessLogResponseData extends ResponseData {

    /**  请求成功统计结果 */
    private var _okList : Array;

    /**  自己看 */
    private var _requestErrorList : Array;

    /**  自己看 */
    private var _noFilterList : Array;

    /**  自己看 */
    private var _noServiceList : Array;

    /**  自己看 */
    private var _keyErrotList : Array;

    /** 
     *  请求成功统计结果曉夞丅
     * 
     * @return 请求成功统计结果
     */
    public function get okList():Array {
        return this._okList;
    }

    /** 
     *  请求成功统计结果
     * 
     * @param okList 请求成功统计结果
     */
    public function set okList(okList : Array):void {
        this._okList = okList
    }

    /** 
     *  自己看曉夞丅
     * 
     * @return 自己看
     */
    public function get requestErrorList():Array {
        return this._requestErrorList;
    }

    /** 
     *  自己看
     * 
     * @param requestErrorList 自己看
     */
    public function set requestErrorList(requestErrorList : Array):void {
        this._requestErrorList = requestErrorList
    }

    /** 
     *  自己看曉夞丅
     * 
     * @return 自己看
     */
    public function get noFilterList():Array {
        return this._noFilterList;
    }

    /** 
     *  自己看
     * 
     * @param noFilterList 自己看
     */
    public function set noFilterList(noFilterList : Array):void {
        this._noFilterList = noFilterList
    }

    /** 
     *  自己看曉夞丅
     * 
     * @return 自己看
     */
    public function get noServiceList():Array {
        return this._noServiceList;
    }

    /** 
     *  自己看
     * 
     * @param noServiceList 自己看
     */
    public function set noServiceList(noServiceList : Array):void {
        this._noServiceList = noServiceList
    }

    /** 
     *  自己看曉夞丅
     * 
     * @return 自己看
     */
    public function get keyErrotList():Array {
        return this._keyErrotList;
    }

    /** 
     *  自己看
     * 
     * @param keyErrotList 自己看
     */
    public function set keyErrotList(keyErrotList : Array):void {
        this._keyErrotList = keyErrotList
    }

}
}
