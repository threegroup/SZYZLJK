package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 系统管理表TransData
 * 
 * 系统管理表TransData
 * 
 * @author supermap
 */
public class SmpSystemInfoData extends BaseData {

    /**  系统代码 */
    private var _systemCode : String;

    /**  系统名称 */
    private var _systemName : String;

    /**  系统ip列表 */
    private var _ipList : String;

    /**  描述 */
    private var _descInfo : String;

    /**  关键信息 */
    private var _keyWord : String;

    /**  创建用户ID */
    private var _createUserId : String;

    /**  创建时间 */
    private var _createDt : String;

    /**  系统运行状态 */
    private var _runStatus : String;

    /**  系统审核状态 */
    private var _checkStatus : String;

    /**  驳回ID */
    private var _disallowId : String;

    /**  父系统ID */
    private var _parentId : String;

    /**  起时间 */
    private var _startTime : String;

    /**  终时间 */
    private var _endTime : String;

    /**  方法类型 */
    private var _type : String;

    /**  驳回理由 */
    private var _disallowReasion : String;

    /**  系统运行状态名称 */
    private var _runStatusName : String;

    /**  系统审核状态名称 */
    private var _checkStatusName : String;

    /** 
     *  系统代码曉夞丅
     * 
     * @return 系统代码
     */
    public function get systemCode():String {
        return this._systemCode;
    }

    /** 
     *  系统代码
     * 
     * @param systemCode 系统代码
     */
    public function set systemCode(systemCode : String):void {
        this._systemCode = systemCode
    }

    /** 
     *  系统名称曉夞丅
     * 
     * @return 系统名称
     */
    public function get systemName():String {
        return this._systemName;
    }

    /** 
     *  系统名称
     * 
     * @param systemName 系统名称
     */
    public function set systemName(systemName : String):void {
        this._systemName = systemName
    }

    /** 
     *  系统ip列表曉夞丅
     * 
     * @return 系统ip列表
     */
    public function get ipList():String {
        return this._ipList;
    }

    /** 
     *  系统ip列表
     * 
     * @param ipList 系统ip列表
     */
    public function set ipList(ipList : String):void {
        this._ipList = ipList
    }

    /** 
     *  描述曉夞丅
     * 
     * @return 描述
     */
    public function get descInfo():String {
        return this._descInfo;
    }

    /** 
     *  描述
     * 
     * @param descInfo 描述
     */
    public function set descInfo(descInfo : String):void {
        this._descInfo = descInfo
    }

    /** 
     *  关键信息曉夞丅
     * 
     * @return 关键信息
     */
    public function get keyWord():String {
        return this._keyWord;
    }

    /** 
     *  关键信息
     * 
     * @param keyWord 关键信息
     */
    public function set keyWord(keyWord : String):void {
        this._keyWord = keyWord
    }

    /** 
     *  创建用户ID曉夞丅
     * 
     * @return 创建用户ID
     */
    public function get createUserId():String {
        return this._createUserId;
    }

    /** 
     *  创建用户ID
     * 
     * @param createUserId 创建用户ID
     */
    public function set createUserId(createUserId : String):void {
        this._createUserId = createUserId
    }

    /** 
     *  创建时间曉夞丅
     * 
     * @return 创建时间
     */
    public function get createDt():String {
        return this._createDt;
    }

    /** 
     *  创建时间
     * 
     * @param createDt 创建时间
     */
    public function set createDt(createDt : String):void {
        this._createDt = createDt
    }

    /** 
     *  系统运行状态曉夞丅
     * 
     * @return 系统运行状态
     */
    public function get runStatus():String {
        return this._runStatus;
    }

    /** 
     *  系统运行状态
     * 
     * @param runStatus 系统运行状态
     */
    public function set runStatus(runStatus : String):void {
        this._runStatus = runStatus
    }

    /** 
     *  系统审核状态曉夞丅
     * 
     * @return 系统审核状态
     */
    public function get checkStatus():String {
        return this._checkStatus;
    }

    /** 
     *  系统审核状态
     * 
     * @param checkStatus 系统审核状态
     */
    public function set checkStatus(checkStatus : String):void {
        this._checkStatus = checkStatus
    }

    /** 
     *  驳回ID曉夞丅
     * 
     * @return 驳回ID
     */
    public function get disallowId():String {
        return this._disallowId;
    }

    /** 
     *  驳回ID
     * 
     * @param disallowId 驳回ID
     */
    public function set disallowId(disallowId : String):void {
        this._disallowId = disallowId
    }

    /** 
     *  父系统ID曉夞丅
     * 
     * @return 父系统ID
     */
    public function get parentId():String {
        return this._parentId;
    }

    /** 
     *  父系统ID
     * 
     * @param parentId 父系统ID
     */
    public function set parentId(parentId : String):void {
        this._parentId = parentId
    }

    /** 
     *  起时间曉夞丅
     * 
     * @return 起时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  起时间
     * 
     * @param startTime 起时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  终时间曉夞丅
     * 
     * @return 终时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  终时间
     * 
     * @param endTime 终时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

    /** 
     *  方法类型曉夞丅
     * 
     * @return 方法类型
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  方法类型
     * 
     * @param type 方法类型
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  驳回理由曉夞丅
     * 
     * @return 驳回理由
     */
    public function get disallowReasion():String {
        return this._disallowReasion;
    }

    /** 
     *  驳回理由
     * 
     * @param disallowReasion 驳回理由
     */
    public function set disallowReasion(disallowReasion : String):void {
        this._disallowReasion = disallowReasion
    }

    /** 
     *  系统运行状态名称曉夞丅
     * 
     * @return 系统运行状态名称
     */
    public function get runStatusName():String {
        return this._runStatusName;
    }

    /** 
     *  系统运行状态名称
     * 
     * @param runStatusName 系统运行状态名称
     */
    public function set runStatusName(runStatusName : String):void {
        this._runStatusName = runStatusName
    }

    /** 
     *  系统审核状态名称曉夞丅
     * 
     * @return 系统审核状态名称
     */
    public function get checkStatusName():String {
        return this._checkStatusName;
    }

    /** 
     *  系统审核状态名称
     * 
     * @param checkStatusName 系统审核状态名称
     */
    public function set checkStatusName(checkStatusName : String):void {
        this._checkStatusName = checkStatusName
    }

}
}
