package com.supermap.wegis.transData.log
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * LogOperateLogInfoData
 * 
 * LogOperateLogInfoData
 * 
 * @author supermap
 */
public class LogOperateLogInfoData extends BaseData {

    /**  记录ID */
    private var _logId : String;

    /**  web服务ID */
    private var _serviceId : String;

    /**  日志名称 */
    private var _logTitle : String;

    /**  用户ID */
    private var _userId : String;

    /**  日志时间 */
    private var _dateTime : String;

    /**  日志状态 */
    private var _logStatus : String;

    /**  日志信息 */
    private var _logInfo : String;

    /**  访问机器屏幕分辨率 */
    private var _clientScreen : String;

    /**  访问机器浏览器 */
    private var _clientExplorer : String;

    /**  日志记录系统 */
    private var _clientSystem : String;

    /**  日志记录IP */
    private var _clientMacIp : String;

    /**  来源类型ID */
    private var _resourceType : String;

    /**  操作类型ID */
    private var _operationType : String;

    /**  部门ID */
    private var _depId : String;

    /**  开始时间 */
    private var _startTime : String;

    /**  结束时间 */
    private var _endTime : String;

    /** 
     *  记录ID曉夞丅
     * 
     * @return 记录ID
     */
    public function get logId():String {
        return this._logId;
    }

    /** 
     *  记录ID
     * 
     * @param logId 记录ID
     */
    public function set logId(logId : String):void {
        this._logId = logId
    }

    /** 
     *  web服务ID曉夞丅
     * 
     * @return web服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  web服务ID
     * 
     * @param serviceId web服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  日志名称曉夞丅
     * 
     * @return 日志名称
     */
    public function get logTitle():String {
        return this._logTitle;
    }

    /** 
     *  日志名称
     * 
     * @param logTitle 日志名称
     */
    public function set logTitle(logTitle : String):void {
        this._logTitle = logTitle
    }

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  日志时间曉夞丅
     * 
     * @return 日志时间
     */
    public function get dateTime():String {
        return this._dateTime;
    }

    /** 
     *  日志时间
     * 
     * @param dateTime 日志时间
     */
    public function set dateTime(dateTime : String):void {
        this._dateTime = dateTime
    }

    /** 
     *  日志状态曉夞丅
     * 
     * @return 日志状态
     */
    public function get logStatus():String {
        return this._logStatus;
    }

    /** 
     *  日志状态
     * 
     * @param logStatus 日志状态
     */
    public function set logStatus(logStatus : String):void {
        this._logStatus = logStatus
    }

    /** 
     *  日志信息曉夞丅
     * 
     * @return 日志信息
     */
    public function get logInfo():String {
        return this._logInfo;
    }

    /** 
     *  日志信息
     * 
     * @param logInfo 日志信息
     */
    public function set logInfo(logInfo : String):void {
        this._logInfo = logInfo
    }

    /** 
     *  访问机器屏幕分辨率曉夞丅
     * 
     * @return 访问机器屏幕分辨率
     */
    public function get clientScreen():String {
        return this._clientScreen;
    }

    /** 
     *  访问机器屏幕分辨率
     * 
     * @param clientScreen 访问机器屏幕分辨率
     */
    public function set clientScreen(clientScreen : String):void {
        this._clientScreen = clientScreen
    }

    /** 
     *  访问机器浏览器曉夞丅
     * 
     * @return 访问机器浏览器
     */
    public function get clientExplorer():String {
        return this._clientExplorer;
    }

    /** 
     *  访问机器浏览器
     * 
     * @param clientExplorer 访问机器浏览器
     */
    public function set clientExplorer(clientExplorer : String):void {
        this._clientExplorer = clientExplorer
    }

    /** 
     *  日志记录系统曉夞丅
     * 
     * @return 日志记录系统
     */
    public function get clientSystem():String {
        return this._clientSystem;
    }

    /** 
     *  日志记录系统
     * 
     * @param clientSystem 日志记录系统
     */
    public function set clientSystem(clientSystem : String):void {
        this._clientSystem = clientSystem
    }

    /** 
     *  日志记录IP曉夞丅
     * 
     * @return 日志记录IP
     */
    public function get clientMacIp():String {
        return this._clientMacIp;
    }

    /** 
     *  日志记录IP
     * 
     * @param clientMacIp 日志记录IP
     */
    public function set clientMacIp(clientMacIp : String):void {
        this._clientMacIp = clientMacIp
    }

    /** 
     *  来源类型ID曉夞丅
     * 
     * @return 来源类型ID
     */
    public function get resourceType():String {
        return this._resourceType;
    }

    /** 
     *  来源类型ID
     * 
     * @param resourceType 来源类型ID
     */
    public function set resourceType(resourceType : String):void {
        this._resourceType = resourceType
    }

    /** 
     *  操作类型ID曉夞丅
     * 
     * @return 操作类型ID
     */
    public function get operationType():String {
        return this._operationType;
    }

    /** 
     *  操作类型ID
     * 
     * @param operationType 操作类型ID
     */
    public function set operationType(operationType : String):void {
        this._operationType = operationType
    }

    /** 
     *  部门ID曉夞丅
     * 
     * @return 部门ID
     */
    public function get depId():String {
        return this._depId;
    }

    /** 
     *  部门ID
     * 
     * @param depId 部门ID
     */
    public function set depId(depId : String):void {
        this._depId = depId
    }

    /** 
     *  开始时间曉夞丅
     * 
     * @return 开始时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  开始时间
     * 
     * @param startTime 开始时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  结束时间曉夞丅
     * 
     * @return 结束时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  结束时间
     * 
     * @param endTime 结束时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

}
}
