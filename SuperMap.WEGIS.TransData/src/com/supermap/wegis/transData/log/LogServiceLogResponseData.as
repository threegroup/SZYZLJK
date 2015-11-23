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
public class LogServiceLogResponseData extends ResponseData {

    /**  系统服务日志表 */
    private var _logServiceLogDataList : Array;

    /** 
     *  系统服务日志表曉夞丅
     * 
     * @return 系统服务日志表
     */
    public function get logServiceLogDataList():Array {
        return this._logServiceLogDataList;
    }

    /** 
     *  系统服务日志表
     * 
     * @param logServiceLogDataList 系统服务日志表
     */
    public function set logServiceLogDataList(logServiceLogDataList : Array):void {
        this._logServiceLogDataList = logServiceLogDataList
    }

}
}
