package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 服务使用管理表TransData
 * 
 * 服务使用管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceUseResponseData extends ResponseData {

    /**  服务使用 */
    private var _nodeList : Array;

    /**  服务IDs */
    private var _serviceIds : Array;

    /** 
     *  服务使用曉夞丅
     * 
     * @return 服务使用
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  服务使用
     * 
     * @param nodeList 服务使用
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  服务IDs曉夞丅
     * 
     * @return 服务IDs
     */
    public function get serviceIds():Array {
        return this._serviceIds;
    }

    /** 
     *  服务IDs
     * 
     * @param serviceIds 服务IDs
     */
    public function set serviceIds(serviceIds : Array):void {
        this._serviceIds = serviceIds
    }

}
}
