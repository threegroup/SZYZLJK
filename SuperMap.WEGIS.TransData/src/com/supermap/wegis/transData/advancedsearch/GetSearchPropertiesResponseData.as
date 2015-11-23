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
public class GetSearchPropertiesResponseData extends ResponseData {

    /**  查询条件对象 */
    private var _nodeListSelect : Array;

    /**  查询结果显示对象 */
    private var _nodeListShow : Array;

    /** 
     *  查询条件对象曉夞丅
     * 
     * @return 查询条件对象
     */
    public function get nodeListSelect():Array {
        return this._nodeListSelect;
    }

    /** 
     *  查询条件对象
     * 
     * @param nodeListSelect 查询条件对象
     */
    public function set nodeListSelect(nodeListSelect : Array):void {
        this._nodeListSelect = nodeListSelect
    }

    /** 
     *  查询结果显示对象曉夞丅
     * 
     * @return 查询结果显示对象
     */
    public function get nodeListShow():Array {
        return this._nodeListShow;
    }

    /** 
     *  查询结果显示对象
     * 
     * @param nodeListShow 查询结果显示对象
     */
    public function set nodeListShow(nodeListShow : Array):void {
        this._nodeListShow = nodeListShow
    }

}
}
