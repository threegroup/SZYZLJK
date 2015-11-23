package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 标注审核历史表TransData
 * 
 * 标注审核历史表TransData
 * 
 * @author supermap
 */
public class MapMarkCheckInfoData extends BaseData {

    /**  审核ID */
    private var _checkId : String;

    /**  标注ID */
    private var _markId : String;

    /**  错误内容 */
    private var _markContent : String;

    /**  审核时间 */
    private var _checkDt : String;

    /**  审核内容 */
    private var _approveContent : String;

    /**  用户ID */
    private var _userId : String;

    /** 
     *  审核ID曉夞丅
     * 
     * @return 审核ID
     */
    public function get checkId():String {
        return this._checkId;
    }

    /** 
     *  审核ID
     * 
     * @param checkId 审核ID
     */
    public function set checkId(checkId : String):void {
        this._checkId = checkId
    }

    /** 
     *  标注ID曉夞丅
     * 
     * @return 标注ID
     */
    public function get markId():String {
        return this._markId;
    }

    /** 
     *  标注ID
     * 
     * @param markId 标注ID
     */
    public function set markId(markId : String):void {
        this._markId = markId
    }

    /** 
     *  错误内容曉夞丅
     * 
     * @return 错误内容
     */
    public function get markContent():String {
        return this._markContent;
    }

    /** 
     *  错误内容
     * 
     * @param markContent 错误内容
     */
    public function set markContent(markContent : String):void {
        this._markContent = markContent
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
     *  审核内容曉夞丅
     * 
     * @return 审核内容
     */
    public function get approveContent():String {
        return this._approveContent;
    }

    /** 
     *  审核内容
     * 
     * @param approveContent 审核内容
     */
    public function set approveContent(approveContent : String):void {
        this._approveContent = approveContent
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

}
}
