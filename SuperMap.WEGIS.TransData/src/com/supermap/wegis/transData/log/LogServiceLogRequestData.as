package com.supermap.wegis.transData.log
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.log.LogServiceLogInfoData;

/** 
 * LogServiceLogRequestData
 * 
 *  LogServiceLogRequestData
 * 
 * @author supermap
 */
public class LogServiceLogRequestData extends RequestData {

    /**  系统服务日志表 */
    private var _logServiceLogRequestData : LogServiceLogInfoData;

    /** 
     *  系统服务日志表曉夞丅
     * 
     * @return 系统服务日志表
     */
    public function get logServiceLogRequestData():LogServiceLogInfoData {
        return this._logServiceLogRequestData;
    }

    /** 
     *  系统服务日志表
     * 
     * @param logServiceLogRequestData 系统服务日志表
     */
    public function set logServiceLogRequestData(logServiceLogRequestData : LogServiceLogInfoData):void {
        this._logServiceLogRequestData = logServiceLogRequestData
    }

}
}
