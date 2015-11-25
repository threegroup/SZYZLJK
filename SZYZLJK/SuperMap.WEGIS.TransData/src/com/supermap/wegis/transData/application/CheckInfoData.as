package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * CheckInfoData
 * 
 * CheckInfoData
 * 
 * @author supermap
 */
public class CheckInfoData extends BaseData {

    /**  申请ID */
    private var _applicationId : String;

    /**  状态 */
    private var _status : String;

    /**  分类 */
    private var _type : String;

    /**  申请时间 */
    private var _applicationDt : String;

    /**  审核时间 */
    private var _checkDt : String;

    /**  申请内容 */
    private var _popUrse : String;

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
     *  状态曉夞丅
     * 
     * @return 状态
     */
    public function get status():String {
        return this._status;
    }

    /** 
     *  状态
     * 
     * @param status 状态
     */
    public function set status(status : String):void {
        this._status = status
    }

    /** 
     *  分类曉夞丅
     * 
     * @return 分类
     */
    public function get type():String {
        return this._type;
    }

    /** 
     *  分类
     * 
     * @param type 分类
     */
    public function set type(type : String):void {
        this._type = type
    }

    /** 
     *  申请时间曉夞丅
     * 
     * @return 申请时间
     */
    public function get applicationDt():String {
        return this._applicationDt;
    }

    /** 
     *  申请时间
     * 
     * @param applicationDt 申请时间
     */
    public function set applicationDt(applicationDt : String):void {
        this._applicationDt = applicationDt
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
     *  申请内容曉夞丅
     * 
     * @return 申请内容
     */
    public function get popUrse():String {
        return this._popUrse;
    }

    /** 
     *  申请内容
     * 
     * @param popUrse 申请内容
     */
    public function set popUrse(popUrse : String):void {
        this._popUrse = popUrse
    }

}
}
