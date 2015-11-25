package com.supermap.wegis.transData.userSpace
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 用户空间信息Data
 * 
 * 用户空间信息Data
 * 
 * @author supermap
 */
public class UserSpaceData extends BaseData {

    /**  目录 */
    private var _menuId : String;

    /**  消息编号 */
    private var _noticeId : String;

    /**  日期 */
    private var _noticeDt : String;

    /**  标题 */
    private var _noticeTitle : String;

    /**  内容 */
    private var _noticeContent : String;

    /**  类型 */
    private var _noticetype : String;

    /**  类型编号 */
    private var _cataId : String;

    /**  状态 */
    private var _status : String;

    /**  详情 */
    private var _descinfo : String;

    /**  起始时间 */
    private var _startTime : String;

    /**  截止时间 */
    private var _endTime : String;

    /**  申请ID */
    private var _applicationId : String;

    /**  申请类型 */
    private var _type : String;

    /**  申请时间 */
    private var _applicationDt : String;

    /**  审核时间 */
    private var _checkDt : String;

    /**  申请内容 */
    private var _popUrse : String;

    /** 
     *  目录曉夞丅
     * 
     * @return 目录
     */
    public function get menuId():String {
        return this._menuId;
    }

    /** 
     *  目录
     * 
     * @param menuId 目录
     */
    public function set menuId(menuId : String):void {
        this._menuId = menuId
    }

    /** 
     *  消息编号曉夞丅
     * 
     * @return 消息编号
     */
    public function get noticeId():String {
        return this._noticeId;
    }

    /** 
     *  消息编号
     * 
     * @param noticeId 消息编号
     */
    public function set noticeId(noticeId : String):void {
        this._noticeId = noticeId
    }

    /** 
     *  日期曉夞丅
     * 
     * @return 日期
     */
    public function get noticeDt():String {
        return this._noticeDt;
    }

    /** 
     *  日期
     * 
     * @param noticeDt 日期
     */
    public function set noticeDt(noticeDt : String):void {
        this._noticeDt = noticeDt
    }

    /** 
     *  标题曉夞丅
     * 
     * @return 标题
     */
    public function get noticeTitle():String {
        return this._noticeTitle;
    }

    /** 
     *  标题
     * 
     * @param noticeTitle 标题
     */
    public function set noticeTitle(noticeTitle : String):void {
        this._noticeTitle = noticeTitle
    }

    /** 
     *  内容曉夞丅
     * 
     * @return 内容
     */
    public function get noticeContent():String {
        return this._noticeContent;
    }

    /** 
     *  内容
     * 
     * @param noticeContent 内容
     */
    public function set noticeContent(noticeContent : String):void {
        this._noticeContent = noticeContent
    }

    /** 
     *  类型曉夞丅
     * 
     * @return 类型
     */
    public function get noticetype():String {
        return this._noticetype;
    }

    /** 
     *  类型
     * 
     * @param noticetype 类型
     */
    public function set noticetype(noticetype : String):void {
        this._noticetype = noticetype
    }

    /** 
     *  类型编号曉夞丅
     * 
     * @return 类型编号
     */
    public function get cataId():String {
        return this._cataId;
    }

    /** 
     *  类型编号
     * 
     * @param cataId 类型编号
     */
    public function set cataId(cataId : String):void {
        this._cataId = cataId
    }

    /** 
     *  状态曉夞丅
     * 
     * @return 状态
     */
    public function get status():String {
        return this._status;
    }

    /** 
     *  状态
     * 
     * @param status 状态
     */
    public function set status(status : String):void {
        this._status = status
    }

    /** 
     *  详情曉夞丅
     * 
     * @return 详情
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  详情
     * 
     * @param descinfo 详情
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
    }

    /** 
     *  起始时间曉夞丅
     * 
     * @return 起始时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  起始时间
     * 
     * @param startTime 起始时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  截止时间曉夞丅
     * 
     * @return 截止时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  截止时间
     * 
     * @param endTime 截止时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

    /** 
     *  申请ID曉夞丅
     * 
     * @return 申请ID
     */
    public function get applicationId():String {
        return this._applicationId;
    }

    /** 
     *  申请ID
     * 
     * @param applicationId 申请ID
     */
    public function set applicationId(applicationId : String):void {
        this._applicationId = applicationId
    }

    /** 
     *  申请类型曉夞丅
     * 
     * @return 申请类型
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  申请类型
     * 
     * @param type 申请类型
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  申请时间曉夞丅
     * 
     * @return 申请时间
     */
    public function get applicationDt():String {
        return this._applicationDt;
    }

    /** 
     *  申请时间
     * 
     * @param applicationDt 申请时间
     */
    public function set applicationDt(applicationDt : String):void {
        this._applicationDt = applicationDt
    }

    /** 
     *  审核时间曉夞丅
     * 
     * @return 审核时间
     */
    public function get checkDt():String {
        return this._checkDt;
    }

    /** 
     *  审核时间
     * 
     * @param checkDt 审核时间
     */
    public function set checkDt(checkDt : String):void {
        this._checkDt = checkDt
    }

    /** 
     *  申请内容曉夞丅
     * 
     * @return 申请内容
     */
    public function get popUrse():String {
        return this._popUrse;
    }

    /** 
     *  申请内容
     * 
     * @param popUrse 申请内容
     */
    public function set popUrse(popUrse : String):void {
        this._popUrse = popUrse
    }

}
}
