package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * AppThematicInfoData
 * 
 * AppThematicInfoData
 * 
 * @author supermap
 */
public class AppThematicInfoData extends BaseData {

    /**  专题图ID */
    private var _mapId : String;

    /**  底图服务ID列表 */
    private var _baseMaps : String;

    /**  使用目的 */
    private var _popUrse : String;

    /**  专题图服务ID */
    private var _serviceId : String;

    /**  专题图类型 */
    private var _type : String;

    /**  专题图参数 */
    private var _paramters : String;

    /**  创建日期 */
    private var _creatDt : String;

    /**  制作用户ID */
    private var _creatUserId : String;

    /**  制作状态 */
    private var _status : String;

    /** 
     *  专题图ID曉夞丅
     * 
     * @return 专题图ID
     */
    public function get mapId():String {
        return this._mapId;
    }

    /** 
     *  专题图ID
     * 
     * @param mapId 专题图ID
     */
    public function set mapId(mapId : String):void {
        this._mapId = mapId
    }

    /** 
     *  底图服务ID列表曉夞丅
     * 
     * @return 底图服务ID列表
     */
    public function get baseMaps():String {
        return this._baseMaps;
    }

    /** 
     *  底图服务ID列表
     * 
     * @param baseMaps 底图服务ID列表
     */
    public function set baseMaps(baseMaps : String):void {
        this._baseMaps = baseMaps
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
     *  专题图服务ID曉夞丅
     * 
     * @return 专题图服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  专题图服务ID
     * 
     * @param serviceId 专题图服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  专题图类型曉夞丅
     * 
     * @return 专题图类型
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  专题图类型
     * 
     * @param type 专题图类型
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  专题图参数曉夞丅
     * 
     * @return 专题图参数
     */
    public function get paramters():String {
        return this._paramters;
    }

    /** 
     *  专题图参数
     * 
     * @param paramters 专题图参数
     */
    public function set paramters(paramters : String):void {
        this._paramters = paramters
    }

    /** 
     *  创建日期曉夞丅
     * 
     * @return 创建日期
     */
    public function get creatDt():String {
        return this._creatDt;
    }

    /** 
     *  创建日期
     * 
     * @param creatDt 创建日期
     */
    public function set creatDt(creatDt : String):void {
        this._creatDt = creatDt
    }

    /** 
     *  制作用户ID曉夞丅
     * 
     * @return 制作用户ID
     */
    public function get creatUserId():String {
        return this._creatUserId;
    }

    /** 
     *  制作用户ID
     * 
     * @param creatUserId 制作用户ID
     */
    public function set creatUserId(creatUserId : String):void {
        this._creatUserId = creatUserId
    }

    /** 
     *  制作状态曉夞丅
     * 
     * @return 制作状态
     */
    public function get status():String {
        return this._status;
    }

    /** 
     *  制作状态
     * 
     * @param status 制作状态
     */
    public function set status(status : String):void {
        this._status = status
    }

}
}
