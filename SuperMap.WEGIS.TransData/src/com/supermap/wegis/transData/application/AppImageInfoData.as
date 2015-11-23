package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class AppImageInfoData extends BaseData {

    /**  申请ID */
    private var _applicationId : String;

    /**  描述 */
    private var _discInfo : String;

    /**  使用目的 */
    private var _popUrse : String;

    /**  负责人区域 */
    private var _chagerArea : String;

    /**  负责人部门 */
    private var _chagerDep : String;

    /**  负责人ID */
    private var _chagerId : String;

    /**  空间范围 */
    private var _spaceRange : String;

    /**  区域类型 */
    private var _areaType : String;

    /**  区域代码 */
    private var _areaCode : String;

    /**  分辨率 */
    private var _resolution : String;

    /**  采集日期 */
    private var _collectionDt : String;

    /**  卫星平台 */
    private var _satellitePlatform : String;

    /**  日夜 */
    private var _dayNight : String;

    /**  云量 */
    private var _cloudiness : String;

    /**  联系人信息ID */
    private var _contactsUerId : String;

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
     *  描述曉夞丅
     * 
     * @return 描述
     */
    public function get discInfo():String {
        return this._discInfo;
    }

    /** 
     *  描述
     * 
     * @param discInfo 描述
     */
    public function set discInfo(discInfo : String):void {
        this._discInfo = discInfo
    }

    /** 
     *  使用目的曉夞丅
     * 
     * @return 使用目的
     */
    public function get popUrse():String {
        return this._popUrse;
    }

    /** 
     *  使用目的
     * 
     * @param popUrse 使用目的
     */
    public function set popUrse(popUrse : String):void {
        this._popUrse = popUrse
    }

    /** 
     *  负责人区域曉夞丅
     * 
     * @return 负责人区域
     */
    public function get chagerArea():String {
        return this._chagerArea;
    }

    /** 
     *  负责人区域
     * 
     * @param chagerArea 负责人区域
     */
    public function set chagerArea(chagerArea : String):void {
        this._chagerArea = chagerArea
    }

    /** 
     *  负责人部门曉夞丅
     * 
     * @return 负责人部门
     */
    public function get chagerDep():String {
        return this._chagerDep;
    }

    /** 
     *  负责人部门
     * 
     * @param chagerDep 负责人部门
     */
    public function set chagerDep(chagerDep : String):void {
        this._chagerDep = chagerDep
    }

    /** 
     *  负责人ID曉夞丅
     * 
     * @return 负责人ID
     */
    public function get chagerId():String {
        return this._chagerId;
    }

    /** 
     *  负责人ID
     * 
     * @param chagerId 负责人ID
     */
    public function set chagerId(chagerId : String):void {
        this._chagerId = chagerId
    }

    /** 
     *  空间范围曉夞丅
     * 
     * @return 空间范围
     */
    public function get spaceRange():String {
        return this._spaceRange;
    }

    /** 
     *  空间范围
     * 
     * @param spaceRange 空间范围
     */
    public function set spaceRange(spaceRange : String):void {
        this._spaceRange = spaceRange
    }

    /** 
     *  区域类型曉夞丅
     * 
     * @return 区域类型
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型
     * 
     * @param areaType 区域类型
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  区域代码曉夞丅
     * 
     * @return 区域代码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域代码
     * 
     * @param areaCode 区域代码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  分辨率曉夞丅
     * 
     * @return 分辨率
     */
    public function get resolution():String {
        return this._resolution;
    }

    /** 
     *  分辨率
     * 
     * @param resolution 分辨率
     */
    public function set resolution(resolution : String):void {
        this._resolution = resolution
    }

    /** 
     *  采集日期曉夞丅
     * 
     * @return 采集日期
     */
    public function get collectionDt():String {
        return this._collectionDt;
    }

    /** 
     *  采集日期
     * 
     * @param collectionDt 采集日期
     */
    public function set collectionDt(collectionDt : String):void {
        this._collectionDt = collectionDt
    }

    /** 
     *  卫星平台曉夞丅
     * 
     * @return 卫星平台
     */
    public function get satellitePlatform():String {
        return this._satellitePlatform;
    }

    /** 
     *  卫星平台
     * 
     * @param satellitePlatform 卫星平台
     */
    public function set satellitePlatform(satellitePlatform : String):void {
        this._satellitePlatform = satellitePlatform
    }

    /** 
     *  日夜曉夞丅
     * 
     * @return 日夜
     */
    public function get dayNight():String {
        return this._dayNight;
    }

    /** 
     *  日夜
     * 
     * @param dayNight 日夜
     */
    public function set dayNight(dayNight : String):void {
        this._dayNight = dayNight
    }

    /** 
     *  云量曉夞丅
     * 
     * @return 云量
     */
    public function get cloudiness():String {
        return this._cloudiness;
    }

    /** 
     *  云量
     * 
     * @param cloudiness 云量
     */
    public function set cloudiness(cloudiness : String):void {
        this._cloudiness = cloudiness
    }

    /** 
     *  联系人信息ID曉夞丅
     * 
     * @return 联系人信息ID
     */
    public function get contactsUerId():String {
        return this._contactsUerId;
    }

    /** 
     *  联系人信息ID
     * 
     * @param contactsUerId 联系人信息ID
     */
    public function set contactsUerId(contactsUerId : String):void {
        this._contactsUerId = contactsUerId
    }

}
}
