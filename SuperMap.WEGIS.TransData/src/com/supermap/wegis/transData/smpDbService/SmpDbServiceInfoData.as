package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 查询服务表TransData
 * 
 * 查询服务表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceInfoData extends BaseData {

    /**  服务编号 */
    private var _serviceId : String;

    /**  数据库类型 */
    private var _dbType : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  sql文 */
    private var _sqlText : String;

    /**  测试url */
    private var _testUrl : String;

    /**  参数列表信息 */
    private var _smpDbServiceParamsInfoDataList : Array;

    /** 
     *  服务编号曉夞丅
     * 
     * @return 服务编号
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务编号
     * 
     * @param serviceId 服务编号
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  数据库类型曉夞丅
     * 
     * @return 数据库类型
     */
    public function get dbType():String {
        return this._dbType;
    }

    /** 
     *  数据库类型
     * 
     * @param dbType 数据库类型
     */
    public function set dbType(dbType : String):void {
        this._dbType = dbType
    }

    /** 
     *  服务类型曉夞丅
     * 
     * @return 服务类型
     */
    public function get serviceType():String {
        return this._serviceType;
    }

    /** 
     *  服务类型
     * 
     * @param serviceType 服务类型
     */
    public function set serviceType(serviceType : String):void {
        this._serviceType = serviceType
    }

    /** 
     *  sql文曉夞丅
     * 
     * @return sql文
     */
    public function get sqlText():String {
        return this._sqlText;
    }

    /** 
     *  sql文
     * 
     * @param sqlText sql文
     */
    public function set sqlText(sqlText : String):void {
        this._sqlText = sqlText
    }

    /** 
     *  测试url曉夞丅
     * 
     * @return 测试url
     */
    public function get testUrl():String {
        return this._testUrl;
    }

    /** 
     *  测试url
     * 
     * @param testUrl 测试url
     */
    public function set testUrl(testUrl : String):void {
        this._testUrl = testUrl
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

}
}
