package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 服务管理表TransData
 * 
 * 服务管理表TransData
 * 
 * @author supermap
 */
public class SmpServiceResponseData extends ResponseData {

    /**  服务信息 */
    private var _nodeList : Array;

    /**  页面状态信息 */
    private var _smpCodeNamesList : Array;

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  服务信息
     * 
     * @param nodeList 服务信息
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  页面状态信息曉夞丅
     * 
     * @return 页面状态信息
     */
    public function get smpCodeNamesList():Array {
        return this._smpCodeNamesList;
    }

    /** 
     *  页面状态信息
     * 
     * @param smpCodeNamesList 页面状态信息
     */
    public function set smpCodeNamesList(smpCodeNamesList : Array):void {
        this._smpCodeNamesList = smpCodeNamesList
    }

}
}
