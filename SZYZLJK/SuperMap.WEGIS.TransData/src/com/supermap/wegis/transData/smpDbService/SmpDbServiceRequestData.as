package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpDbService.SmpDbServiceInfoData;

/** 
 * 查询服务表TransData
 * 
 * 查询服务表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceRequestData extends RequestData {

    /**  服务信息 */
    private var _smpDbServiceInfoData : SmpDbServiceInfoData;

    /**  可执行SQL */
    private var _excutableSQL : String;

    /**  执行totalCount查询SQL */
    private var _excutableCountSQL : String;

    /**  参数列表信息 */
    private var _smpDbServiceParamsInfoDataList : Array;

    /**  系统 */
    private var _systemCode : String;

    /**  业务类型 */
    private var _businessType : String;

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get smpDbServiceInfoData():SmpDbServiceInfoData {
        return this._smpDbServiceInfoData;
    }

    /** 
     *  服务信息
     * 
     * @param smpDbServiceInfoData 服务信息
     */
    public function set smpDbServiceInfoData(smpDbServiceInfoData : SmpDbServiceInfoData):void {
        this._smpDbServiceInfoData = smpDbServiceInfoData
    }

    /** 
     *  可执行SQL曉夞丅
     * 
     * @return 可执行SQL
     */
    public function get excutableSQL():String {
        return this._excutableSQL;
    }

    /** 
     *  可执行SQL
     * 
     * @param excutableSQL 可执行SQL
     */
    public function set excutableSQL(excutableSQL : String):void {
        this._excutableSQL = excutableSQL
    }

    /** 
     *  执行totalCount查询SQL曉夞丅
     * 
     * @return 执行totalCount查询SQL
     */
    public function get excutableCountSQL():String {
        return this._excutableCountSQL;
    }

    /** 
     *  执行totalCount查询SQL
     * 
     * @param excutableCountSQL 执行totalCount查询SQL
     */
    public function set excutableCountSQL(excutableCountSQL : String):void {
        this._excutableCountSQL = excutableCountSQL
    }

    /** 
     *  参数列表信息曉夞丅
     * 
     * @return 参数列表信息
     */
    public function get smpDbServiceParamsInfoDataList():Array {
        return this._smpDbServiceParamsInfoDataList;
    }

    /** 
     *  参数列表信息
     * 
     * @param smpDbServiceParamsInfoDataList 参数列表信息
     */
    public function set smpDbServiceParamsInfoDataList(smpDbServiceParamsInfoDataList : Array):void {
        this._smpDbServiceParamsInfoDataList = smpDbServiceParamsInfoDataList
    }

    /** 
     *  系统曉夞丅
     * 
     * @return 系统
     */
    public function get systemCode():String {
        return this._systemCode;
    }

    /** 
     *  系统
     * 
     * @param systemCode 系统
     */
    public function set systemCode(systemCode : String):void {
        this._systemCode = systemCode
    }

    /** 
     *  业务类型曉夞丅
     * 
     * @return 业务类型
     */
    public function get businessType():String {
        return this._businessType;
    }

    /** 
     *  业务类型
     * 
     * @param businessType 业务类型
     */
    public function set businessType(businessType : String):void {
        this._businessType = businessType
    }

}
}
