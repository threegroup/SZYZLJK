package com.supermap.wegis.transData.service
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得服务ResponseData
 * 
 * 取得服务ResponseData
 * 
 * @author supermap
 */
public class GetServiceResponseData extends ResponseData {

    /**  服务列表 */
    private var _serviceList : Array;

    /**  字段名称 */
    private var _fieldDataList : Array;

    /** 
     *  服务列表曉夞丅
     * 
     * @return 服务列表
     */
    public function get serviceList():Array {
        return this._serviceList;
    }

    /** 
     *  服务列表
     * 
     * @param serviceList 服务列表
     */
    public function set serviceList(serviceList : Array):void {
        this._serviceList = serviceList
    }

    /** 
     *  字段名称曉夞丅
     * 
     * @return 字段名称
     */
    public function get fieldDataList():Array {
        return this._fieldDataList;
    }

    /** 
     *  字段名称
     * 
     * @param fieldDataList 字段名称
     */
    public function set fieldDataList(fieldDataList : Array):void {
        this._fieldDataList = fieldDataList
    }

}
}
