package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * TransData
 * 
 * TransData
 * 
 * @author supermap
 */
public class MapInfoData extends BaseData {

    /**  地图ID */
    private var _mapId : String;

    /**  地图名称 */
    private var _mapName : String;

    /**  地图别名 */
    private var _mapAlias : String;

    /**  地图创建日期 */
    private var _mapCreateTime : String;

    /**  地图风格 */
    private var _mapStyleXml : String;

    /**  地图类型 */
    private var _mapType : String;

    /**  地图对应的图层 */
    private var _layersName : String;

    /**  用户ID */
    private var _userId : String;

    /**  地图状态 */
    private var _mapStatus : String;

    /**  地图目录 */
    private var _mapDirectoryId : String;

    /**  访问次数 */
    private var _hitCount : String;

    /**  地图描述 */
    private var _maPdesc : String;

    /**  许可次数 */
    private var _accessTimes : String;

    /**  排序索引 */
    private var _orderIndex : String;

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
     *  地图名称曉夞丅
     * 
     * @return 地图名称
     */
    public function get mapName():String {
        return this._mapName;
    }

    /** 
     *  地图名称
     * 
     * @param mapName 地图名称
     */
    public function set mapName(mapName : String):void {
        this._mapName = mapName
    }

    /** 
     *  地图别名曉夞丅
     * 
     * @return 地图别名
     */
    public function get mapAlias():String {
        return this._mapAlias;
    }

    /** 
     *  地图别名
     * 
     * @param mapAlias 地图别名
     */
    public function set mapAlias(mapAlias : String):void {
        this._mapAlias = mapAlias
    }

    /** 
     *  地图创建日期曉夞丅
     * 
     * @return 地图创建日期
     */
    public function get mapCreateTime():String {
        return this._mapCreateTime;
    }

    /** 
     *  地图创建日期
     * 
     * @param mapCreateTime 地图创建日期
     */
    public function set mapCreateTime(mapCreateTime : String):void {
        this._mapCreateTime = mapCreateTime
    }

    /** 
     *  地图风格曉夞丅
     * 
     * @return 地图风格
     */
    public function get mapStyleXml():String {
        return this._mapStyleXml;
    }

    /** 
     *  地图风格
     * 
     * @param mapStyleXml 地图风格
     */
    public function set mapStyleXml(mapStyleXml : String):void {
        this._mapStyleXml = mapStyleXml
    }

    /** 
     *  地图类型曉夞丅
     * 
     * @return 地图类型
     */
    public function get mapType():String {
        return this._mapType;
    }

    /** 
     *  地图类型
     * 
     * @param mapType 地图类型
     */
    public function set mapType(mapType : String):void {
        this._mapType = mapType
    }

    /** 
     *  地图对应的图层曉夞丅
     * 
     * @return 地图对应的图层
     */
    public function get layersName():String {
        return this._layersName;
    }

    /** 
     *  地图对应的图层
     * 
     * @param layersName 地图对应的图层
     */
    public function set layersName(layersName : String):void {
        this._layersName = layersName
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
     *  地图状态曉夞丅
     * 
     * @return 地图状态
     */
    public function get mapStatus():String {
        return this._mapStatus;
    }

    /** 
     *  地图状态
     * 
     * @param mapStatus 地图状态
     */
    public function set mapStatus(mapStatus : String):void {
        this._mapStatus = mapStatus
    }

    /** 
     *  地图目录曉夞丅
     * 
     * @return 地图目录
     */
    public function get mapDirectoryId():String {
        return this._mapDirectoryId;
    }

    /** 
     *  地图目录
     * 
     * @param mapDirectoryId 地图目录
     */
    public function set mapDirectoryId(mapDirectoryId : String):void {
        this._mapDirectoryId = mapDirectoryId
    }

    /** 
     *  访问次数曉夞丅
     * 
     * @return 访问次数
     */
    public function get hitCount():String {
        return this._hitCount;
    }

    /** 
     *  访问次数
     * 
     * @param hitCount 访问次数
     */
    public function set hitCount(hitCount : String):void {
        this._hitCount = hitCount
    }

    /** 
     *  地图描述曉夞丅
     * 
     * @return 地图描述
     */
    public function get maPdesc():String {
        return this._maPdesc;
    }

    /** 
     *  地图描述
     * 
     * @param maPdesc 地图描述
     */
    public function set maPdesc(maPdesc : String):void {
        this._maPdesc = maPdesc
    }

    /** 
     *  许可次数曉夞丅
     * 
     * @return 许可次数
     */
    public function get accessTimes():String {
        return this._accessTimes;
    }

    /** 
     *  许可次数
     * 
     * @param accessTimes 许可次数
     */
    public function set accessTimes(accessTimes : String):void {
        this._accessTimes = accessTimes
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

}
}
