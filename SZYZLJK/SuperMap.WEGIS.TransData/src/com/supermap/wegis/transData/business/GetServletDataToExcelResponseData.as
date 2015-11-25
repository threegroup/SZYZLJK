package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得ResponseData
 * 
 * 取得ResponseData
 * 
 * @author supermap
 */
public class GetServletDataToExcelResponseData extends ResponseData {

    /**  取得url地址 */
    private var _url : String;

    /**  文件名 */
    private var _fileName : String;

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

    /** 
     *  文件名曉夞丅
     * 
     * @return 文件名
     */
    public function get fileName():String {
        return this._fileName;
    }

    /** 
     *  文件名
     * 
     * @param fileName 文件名
     */
    public function set fileName(fileName : String):void {
        this._fileName = fileName
    }

}
}
