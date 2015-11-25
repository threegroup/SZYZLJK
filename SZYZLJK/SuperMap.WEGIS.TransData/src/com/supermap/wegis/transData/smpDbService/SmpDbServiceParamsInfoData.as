package com.supermap.wegis.transData.smpDbService
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 查询服务参数表TransData
 * 
 * 查询服务参数表TransData
 * 
 * @author supermap
 */
public class SmpDbServiceParamsInfoData extends BaseData {

    /**  服务编号 */
    private var _serviceId : String;

    /**  数据库类型 */
    private var _dbType : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  参数编号 */
    private var _paramCode : String;

    /**  参数测试值 */
    private var _paramValue : String;

    /**  参数说明 */
    private var _paramComment : String;

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
     *  参数编号曉夞丅
     * 
     * @return 参数编号
     */
    public function get paramCode():String {
        return this._paramCode;
    }

    /** 
     *  参数编号
     * 
     * @param paramCode 参数编号
     */
    public function set paramCode(paramCode : String):void {
        this._paramCode = paramCode
    }

    /** 
     *  参数测试值曉夞丅
     * 
     * @return 参数测试值
     */
    public function get paramValue():String {
        return this._paramValue;
    }

    /** 
     *  参数测试值
     * 
     * @param paramValue 参数测试值
     */
    public function set paramValue(paramValue : String):void {
        this._paramValue = paramValue
    }

    /** 
     *  参数说明曉夞丅
     * 
     * @return 参数说明
     */
    public function get paramComment():String {
        return this._paramComment;
    }

    /** 
     *  参数说明
     * 
     * @param paramComment 参数说明
     */
    public function set paramComment(paramComment : String):void {
        this._paramComment = paramComment
    }

}
}
