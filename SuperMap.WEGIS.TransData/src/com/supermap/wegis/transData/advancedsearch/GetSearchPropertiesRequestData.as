package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:ServiceRequestData ---返回data:GetServiceResponseDataRequestData
 * 
 * 取得高级查询条件 ---必填参数:服务ID--serviceID ---可填参数:无 ---请求data:ServiceRequestData ---返回data:GetServiceResponseDataRequestData
 * 
 * @author supermap
 */
public class GetSearchPropertiesRequestData extends RequestData {

    /**  服务ID */
    private var _serviceID : String;

    /**  检索字段列表内容是MdsDeSearchPropertyInfoData */
    private var _nodeList : Array;

    /**  服务类型 */
    private var _middleType : String;

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceID():String {
        return this._serviceID;
    }

    /** 
     *  服务ID
     * 
     * @param serviceID 服务ID
     */
    public function set serviceID(serviceID : String):void {
        this._serviceID = serviceID
    }

    /** 
     *  检索字段列表内容是MdsDeSearchPropertyInfoData曉夞丅
     * 
     * @return 检索字段列表内容是MdsDeSearchPropertyInfoData
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  检索字段列表内容是MdsDeSearchPropertyInfoData
     * 
     * @param nodeList 检索字段列表内容是MdsDeSearchPropertyInfoData
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  服务类型曉夞丅
     * 
     * @return 服务类型
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  服务类型
     * 
     * @param middleType 服务类型
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
