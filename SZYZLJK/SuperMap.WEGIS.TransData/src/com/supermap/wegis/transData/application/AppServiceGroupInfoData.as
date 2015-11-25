package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * AppServiceGroupInfoData
 * 
 * AppServiceGroupInfoData
 * 
 * @author supermap
 */
public class AppServiceGroupInfoData extends BaseData {

    /**  申请ID */
    private var _applicateId : String;

    /**  使用目的 */
    private var _popUrse : String;

    /**  聚合服务信息 */
    private var _serviceDetail : String;

    /**  联系人信息 */
    private var _contactsUerId : String;

    /** 
     *  申请ID曉夞丅
     * 
     * @return 申请ID
     */
    public function get applicateId():String {
        return this._applicateId;
    }

    /** 
     *  申请ID
     * 
     * @param applicateId 申请ID
     */
    public function set applicateId(applicateId : String):void {
        this._applicateId = applicateId
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
     *  聚合服务信息曉夞丅
     * 
     * @return 聚合服务信息
     */
    public function get serviceDetail():String {
        return this._serviceDetail;
    }

    /** 
     *  聚合服务信息
     * 
     * @param serviceDetail 聚合服务信息
     */
    public function set serviceDetail(serviceDetail : String):void {
        this._serviceDetail = serviceDetail
    }

    /** 
     *  联系人信息曉夞丅
     * 
     * @return 联系人信息
     */
    public function get contactsUerId():String {
        return this._contactsUerId;
    }

    /** 
     *  联系人信息
     * 
     * @param contactsUerId 联系人信息
     */
    public function set contactsUerId(contactsUerId : String):void {
        this._contactsUerId = contactsUerId
    }

}
}
