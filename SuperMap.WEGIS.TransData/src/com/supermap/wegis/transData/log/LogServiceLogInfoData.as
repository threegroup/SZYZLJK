package com.supermap.wegis.transData.log
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * LogServiceLogInfoData
 * 
 * LogServiceLogInfoData
 * 
 * @author supermap
 */
public class LogServiceLogInfoData extends BaseData {

    /**  记录ID */
    private var _pkId : String;

    /**  日志标题 */
    private var _logTitle : String;

    /**  用户ID */
    private var _userId : String;

    /**  用户名称 */
    private var _userName : String;

    /**  开始时间 */
    private var _beginDatetime : String;

    /**  结束时间 */
    private var _endDatetime : String;

    /**  日志状态 */
    private var _logStatus : String;

    /**  日志信息 */
    private var _logInfo : String;

    /**  访问机器浏览器 */
    private var _logExplore : String;

    /**  日志记录系统 */
    private var _logSystem : String;

    /**  访问机器IP */
    private var _logMacIp : String;

    /**  服务ID */
    private var _serviceId : String;

    /**  服务名称 */
    private var _serviceName : String;

    /**  响应时间（毫秒） */
    private var _responseTime : String;

    /**  服务数据流量（字节） */
    private var _serviceFlow : String;

    /** 
     *  记录ID曉夞丅
     * 
     * @return 记录ID
     */
    public function get pkId():String {
        return this._pkId;
    }

    /** 
     *  记录ID
     * 
     * @param pkId 记录ID
     */
    public function set pkId(pkId : String):void {
        this._pkId = pkId
    }

    /** 
     *  日志标题曉夞丅
     * 
     * @return 日志标题
     */
    public function get logTitle():String {
        return this._logTitle;
    }

    /** 
     *  日志标题
     * 
     * @param logTitle 日志标题
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
     *  用户名称曉夞丅
     * 
     * @return 用户名称
     */
    public function get userName():String {
        return this._userName;
    }

    /** 
     *  用户名称
     * 
     * @param userName 用户名称
     */
    public function set userName(userName : String):void {
        this._userName = userName
    }

    /** 
     *  开始时间曉夞丅
     * 
     * @return 开始时间
     */
    public function get beginDatetime():String {
        return this._beginDatetime;
    }

    /** 
     *  开始时间
     * 
     * @param beginDatetime 开始时间
     */
    public function set beginDatetime(beginDatetime : String):void {
        this._beginDatetime = beginDatetime
    }

    /** 
     *  结束时间曉夞丅
     * 
     * @return 结束时间
     */
    public function get endDatetime():String {
        return this._endDatetime;
    }

    /** 
     *  结束时间
     * 
     * @param endDatetime 结束时间
     */
    public function set endDatetime(endDatetime : String):void {
        this._endDatetime = endDatetime
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
     *  访问机器浏览器曉夞丅
     * 
     * @return 访问机器浏览器
     */
    public function get logExplore():String {
        return this._logExplore;
    }

    /** 
     *  访问机器浏览器
     * 
     * @param logExplore 访问机器浏览器
     */
    public function set logExplore(logExplore : String):void {
        this._logExplore = logExplore
    }

    /** 
     *  日志记录系统曉夞丅
     * 
     * @return 日志记录系统
     */
    public function get logSystem():String {
        return this._logSystem;
    }

    /** 
     *  日志记录系统
     * 
     * @param logSystem 日志记录系统
     */
    public function set logSystem(logSystem : String):void {
        this._logSystem = logSystem
    }

    /** 
     *  访问机器IP曉夞丅
     * 
     * @return 访问机器IP
     */
    public function get logMacIp():String {
        return this._logMacIp;
    }

    /** 
     *  访问机器IP
     * 
     * @param logMacIp 访问机器IP
     */
    public function set logMacIp(logMacIp : String):void {
        this._logMacIp = logMacIp
    }

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名称
     * 
     * @param serviceName 服务名称
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
    }

    /** 
     *  响应时间（毫秒）曉夞丅
     * 
     * @return 响应时间（毫秒）
     */
    public function get responseTime():String {
        return this._responseTime;
    }

    /** 
     *  响应时间（毫秒）
     * 
     * @param responseTime 响应时间（毫秒）
     */
    public function set responseTime(responseTime : String):void {
        this._responseTime = responseTime
    }

    /** 
     *  服务数据流量（字节）曉夞丅
     * 
     * @return 服务数据流量（字节）
     */
    public function get serviceFlow():String {
        return this._serviceFlow;
    }

    /** 
     *  服务数据流量（字节）
     * 
     * @param serviceFlow 服务数据流量（字节）
     */
    public function set serviceFlow(serviceFlow : String):void {
        this._serviceFlow = serviceFlow
    }

}
}
