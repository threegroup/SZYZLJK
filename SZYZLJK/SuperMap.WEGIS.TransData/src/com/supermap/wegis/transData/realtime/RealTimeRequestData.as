package com.supermap.wegis.transData.realtime
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class RealTimeRequestData extends RequestData {

    /**  代码 */
    private var _stcd : String;

    /**  测站名称 */
    private var _stnm : String;

    /**  测站类型 */
    private var _sttp : String;

    /**  起始时间 */
    private var _tms : String;

    /**  结束时间 */
    private var _tme : String;

    /** 
     *  代码曉夞丅
     * 
     * @return 代码
     */
    public function get stcd():String {
        return this._stcd;
    }

    /** 
     *  代码
     * 
     * @param stcd 代码
     */
    public function set stcd(stcd : String):void {
        this._stcd = stcd
    }

    /** 
     *  测站名称曉夞丅
     * 
     * @return 测站名称
     */
    public function get stnm():String {
        return this._stnm;
    }

    /** 
     *  测站名称
     * 
     * @param stnm 测站名称
     */
    public function set stnm(stnm : String):void {
        this._stnm = stnm
    }

    /** 
     *  测站类型曉夞丅
     * 
     * @return 测站类型
     */
    public function get sttp():String {
        return this._sttp;
    }

    /** 
     *  测站类型
     * 
     * @param sttp 测站类型
     */
    public function set sttp(sttp : String):void {
        this._sttp = sttp
    }

    /** 
     *  起始时间曉夞丅
     * 
     * @return 起始时间
     */
    public function get tms():String {
        return this._tms;
    }

    /** 
     *  起始时间
     * 
     * @param tms 起始时间
     */
    public function set tms(tms : String):void {
        this._tms = tms
    }

    /** 
     *  结束时间曉夞丅
     * 
     * @return 结束时间
     */
    public function get tme():String {
        return this._tme;
    }

    /** 
     *  结束时间
     * 
     * @param tme 结束时间
     */
    public function set tme(tme : String):void {
        this._tme = tme
    }

}
}
