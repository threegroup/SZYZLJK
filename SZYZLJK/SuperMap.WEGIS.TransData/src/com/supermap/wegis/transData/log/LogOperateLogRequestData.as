package com.supermap.wegis.transData.log
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.log.LogOperateLogInfoData;

/** 
 * .LogOperateLogRequestData
 * 
 * .LogOperateLogRequestData
 * 
 * @author supermap
 */
public class LogOperateLogRequestData extends RequestData {

    /**  系统服务日志表 */
    private var _logOperateLogInfoData : LogOperateLogInfoData;

    /** 
     *  系统服务日志表曉夞丅
     * 
     * @return 系统服务日志表
     */
    public function get logOperateLogInfoData():LogOperateLogInfoData {
        return this._logOperateLogInfoData;
    }

    /** 
     *  系统服务日志表
     * 
     * @param logOperateLogInfoData 系统服务日志表
     */
    public function set logOperateLogInfoData(logOperateLogInfoData : LogOperateLogInfoData):void {
        this._logOperateLogInfoData = logOperateLogInfoData
    }

}
}
