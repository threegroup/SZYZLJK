package com.supermap.wegis.transData.smpServiceCheck
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务审核表Dao出参数
 * 
 * 服务审核表Dao出参数
 * 
 * @author supermap
 */
public class DetailInfoData extends BaseData {

    /**  服务名称 */
    private var _serviceName : String;

    /**  服务类型 */
    private var _serviceType : String;

    /**  发布系统 */
    private var _publishSystem : String;

    /**  申请Id */
    private var _applyId : String;

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名称
     * 
     * @param serviceName 服务名称
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
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
     *  发布系统曉夞丅
     * 
     * @return 发布系统
     */
    public function get publishSystem():String {
        return this._publishSystem;
    }

    /** 
     *  发布系统
     * 
     * @param publishSystem 发布系统
     */
    public function set publishSystem(publishSystem : String):void {
        this._publishSystem = publishSystem
    }

    /** 
     *  申请Id曉夞丅
     * 
     * @return 申请Id
     */
    public function get applyId():String {
        return this._applyId;
    }

    /** 
     *  申请Id
     * 
     * @param applyId 申请Id
     */
    public function set applyId(applyId : String):void {
        this._applyId = applyId
    }

}
}
