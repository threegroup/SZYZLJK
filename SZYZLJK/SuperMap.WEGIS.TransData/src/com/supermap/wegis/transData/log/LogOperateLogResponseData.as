package com.supermap.wegis.transData.log
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class LogOperateLogResponseData extends ResponseData {

    /**  系统服务日志表 */
    private var _nodeList : Array;

    /** 
     *  系统服务日志表曉夞丅
     * 
     * @return 系统服务日志表
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  系统服务日志表
     * 
     * @param nodeList 系统服务日志表
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
