package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得自定义查询单个要素的字段信息RequestData
 * 
 * 取得自定义查询单个要素的字段信息RequestData
 * 
 * @author supermap
 */
public class GetSearchCustomFieldsInfoRequestData extends RequestData {

    /**  服务ID:当前为middletype值 */
    private var _serviceId : String;

    /** 
     *  服务ID:当前为middletype值曉夞丅
     * 
     * @return 服务ID:当前为middletype值
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID:当前为middletype值
     * 
     * @param serviceId 服务ID:当前为middletype值
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

}
}
