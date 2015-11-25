package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * SessionRequestData
 * 
 *  SessionRequestData
 * 
 * @author supermap
 */
public class SessionRequestData extends RequestData {

    /**  iserverCheck */
    private var _iserverCheck : String;

    /**  服务URL */
    private var _serviceUrl : String;

    /** 
     *  iserverCheck曉夞丅
     * 
     * @return iserverCheck
     */
    public function get iserverCheck():String {
        return this._iserverCheck;
    }

    /** 
     *  iserverCheck
     * 
     * @param iserverCheck iserverCheck
     */
    public function set iserverCheck(iserverCheck : String):void {
        this._iserverCheck = iserverCheck
    }

    /** 
     *  服务URL曉夞丅
     * 
     * @return 服务URL
     */
    public function get serviceUrl():String {
        return this._serviceUrl;
    }

    /** 
     *  服务URL
     * 
     * @param serviceUrl 服务URL
     */
    public function set serviceUrl(serviceUrl : String):void {
        this._serviceUrl = serviceUrl
    }

}
}
