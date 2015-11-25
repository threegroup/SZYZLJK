package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:ServiceRequestData ---返回data:GetServiceResponseDataResponseData
 * 
 * 取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:ServiceRequestData ---返回data:GetServiceResponseDataResponseData
 * 
 * @author supermap
 */
public class GetSearchDataResponseData extends ResponseData {

    /**  node */
    private var _nodeList : Array;

    /**  field */
    private var _fieldList : Array;

    /**  ExcelUrl */
    private var _url : String;

    /** 
     *  node曉夞丅
     * 
     * @return node
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  node
     * 
     * @param nodeList node
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  field曉夞丅
     * 
     * @return field
     */
    public function get fieldList():Array {
        return this._fieldList;
    }

    /** 
     *  field
     * 
     * @param fieldList field
     */
    public function set fieldList(fieldList : Array):void {
        this._fieldList = fieldList
    }

    /** 
     *  ExcelUrl曉夞丅
     * 
     * @return ExcelUrl
     */
    public function get url():String {
        return this._url;
    }

    /** 
     *  ExcelUrl
     * 
     * @param url ExcelUrl
     */
    public function set url(url : String):void {
        this._url = url
    }

}
}
