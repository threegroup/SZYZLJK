package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得RequestData
 * 
 * 取得RequestData
 * 
 * @author supermap
 */
public class GetServletDataToExcelRequestData extends RequestData {

    /**  取得url地址 */
    private var _url : String;

    /** 
     *  取得url地址曉夞丅
     * 
     * @return 取得url地址
     */
    public function get url():String {
        return this._url;
    }

    /** 
     *  取得url地址
     * 
     * @param url 取得url地址
     */
    public function set url(url : String):void {
        this._url = url
    }

}
}
