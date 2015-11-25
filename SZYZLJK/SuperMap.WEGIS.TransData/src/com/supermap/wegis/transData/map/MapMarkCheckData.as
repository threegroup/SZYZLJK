package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * MapMarkInfoData
 * 
 * MapMarkCheckData
 * 
 * @author supermap
 */
public class MapMarkCheckData extends BaseData {

    /**  标注ID */
    private var _markId : String;

    /**  标注类型ID */
    private var _markTypeId : String;

    /**  标注名称 */
    private var _markTitle : String;

    /**  标注详情 */
    private var _markContents : String;

    /**  审查状态 */
    private var _checkStatus : String;

    /**  地图ID */
    private var _mapId : String;

    /**  审核ID */
    private var _checkId : String;

    /**  错误内容 */
    private var _markContent : String;

    /**  审核时间 */
    private var _checkDt : String;

    /**  审核内容 */
    private var _approveContent : String;

    /**  用户ID */
    private var _userId : String;

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
     *  标注类型ID曉夞丅
     * 
     * @return 标注类型ID
     */
    public function get markTypeId():String {
        return this._markTypeId;
    }

    /** 
     *  标注类型ID
     * 
     * @param markTypeId 标注类型ID
     */
    public function set markTypeId(markTypeId : String):void {
        this._markTypeId = markTypeId
    }

    /** 
     *  标注名称曉夞丅
     * 
     * @return 标注名称
     */
    public function get markTitle():String {
        return this._markTitle;
    }

    /** 
     *  标注名称
     * 
     * @param markTitle 标注名称
     */
    public function set markTitle(markTitle : String):void {
        this._markTitle = markTitle
    }

    /** 
     *  标注详情曉夞丅
     * 
     * @return 标注详情
     */
    public function get markContents():String {
        return this._markContents;
    }

    /** 
     *  标注详情
     * 
     * @param markContents 标注详情
     */
    public function set markContents(markContents : String):void {
        this._markContents = markContents
    }

    /** 
     *  审查状态曉夞丅
     * 
     * @return 审查状态
     */
    public function get checkStatus():String {
        return this._checkStatus;
    }

    /** 
     *  审查状态
     * 
     * @param checkStatus 审查状态
     */
    public function set checkStatus(checkStatus : String):void {
        this._checkStatus = checkStatus
    }

    /** 
     *  地图ID曉夞丅
     * 
     * @return 地图ID
     */
    public function get mapId():String {
        return this._mapId;
    }

    /** 
     *  地图ID
     * 
     * @param mapId 地图ID
     */
    public function set mapId(mapId : String):void {
        this._mapId = mapId
    }

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
