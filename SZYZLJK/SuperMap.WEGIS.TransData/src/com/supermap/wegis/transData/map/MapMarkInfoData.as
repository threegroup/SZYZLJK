package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * MapMarkInfoData
 * 
 * MapMarkInfoData
 * 
 * @author supermap
 */
public class MapMarkInfoData extends BaseData {

    /**  标注ID */
    private var _markId : String;

    /**  标注类型ID */
    private var _markTypeId : String;

    /**  标注名称 */
    private var _markTitle : String;

    /**  标注时间 */
    private var _markDt : String;

    /**  用户ID */
    private var _userId : String;

    /**  标注详情 */
    private var _markContents : String;

    /**  审查状态 */
    private var _checkStatus : String;

    /**  是否公开 */
    private var _publicStatus : String;

    /**  地图ID */
    private var _mapId : String;

    /**  显示比例级别 */
    private var _displayLevel : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  临时ID */
    private var _tempId : String;

    /**  标注描述 */
    private var _descinfo : String;

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
     *  标注时间曉夞丅
     * 
     * @return 标注时间
     */
    public function get markDt():String {
        return this._markDt;
    }

    /** 
     *  标注时间
     * 
     * @param markDt 标注时间
     */
    public function set markDt(markDt : String):void {
        this._markDt = markDt
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
     *  是否公开曉夞丅
     * 
     * @return 是否公开
     */
    public function get publicStatus():String {
        return this._publicStatus;
    }

    /** 
     *  是否公开
     * 
     * @param publicStatus 是否公开
     */
    public function set publicStatus(publicStatus : String):void {
        this._publicStatus = publicStatus
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
     *  显示比例级别曉夞丅
     * 
     * @return 显示比例级别
     */
    public function get displayLevel():String {
        return this._displayLevel;
    }

    /** 
     *  显示比例级别
     * 
     * @param displayLevel 显示比例级别
     */
    public function set displayLevel(displayLevel : String):void {
        this._displayLevel = displayLevel
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序索引
     * 
     * @param orderIndex 排序索引
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

    /** 
     *  临时ID曉夞丅
     * 
     * @return 临时ID
     */
    public function get tempId():String {
        return this._tempId;
    }

    /** 
     *  临时ID
     * 
     * @param tempId 临时ID
     */
    public function set tempId(tempId : String):void {
        this._tempId = tempId
    }

    /** 
     *  标注描述曉夞丅
     * 
     * @return 标注描述
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  标注描述
     * 
     * @param descinfo 标注描述
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
    }

}
}
