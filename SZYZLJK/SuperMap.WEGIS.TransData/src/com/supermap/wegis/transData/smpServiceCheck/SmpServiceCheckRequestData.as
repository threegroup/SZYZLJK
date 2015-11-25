package com.supermap.wegis.transData.smpServiceCheck
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpServiceCheck.SmpServiceCheckInfoData;
import com.supermap.wegis.transData.smpServiceCheck.DetailInfoData;

/** 
 * 服务审核表信息RequestData
 * 
 * 服务审核表信息RequestData
 * 
 * @author supermap
 */
public class SmpServiceCheckRequestData extends RequestData {

    /**  服务审核表信息 */
    private var _smpServiceCheckInfo : SmpServiceCheckInfoData;

    /**  更新服务审核表信息 */
    private var _idList : Array;

    /**  详情信息 */
    private var _detail : DetailInfoData;

    /**  驳回服务审核表信息 */
    private var _infoList : Array;

    /**  驳回理由 */
    private var _disallowReasion : String;

    /**  申请id列表 */
    private var _appLyIdList : String;

    /** 
     *  服务审核表信息曉夞丅
     * 
     * @return 服务审核表信息
     */
    public function get smpServiceCheckInfo():SmpServiceCheckInfoData {
        return this._smpServiceCheckInfo;
    }

    /** 
     *  服务审核表信息
     * 
     * @param smpServiceCheckInfo 服务审核表信息
     */
    public function set smpServiceCheckInfo(smpServiceCheckInfo : SmpServiceCheckInfoData):void {
        this._smpServiceCheckInfo = smpServiceCheckInfo
    }

    /** 
     *  更新服务审核表信息曉夞丅
     * 
     * @return 更新服务审核表信息
     */
    public function get idList():Array {
        return this._idList;
    }

    /** 
     *  更新服务审核表信息
     * 
     * @param idList 更新服务审核表信息
     */
    public function set idList(idList : Array):void {
        this._idList = idList
    }

    /** 
     *  详情信息曉夞丅
     * 
     * @return 详情信息
     */
    public function get detail():DetailInfoData {
        return this._detail;
    }

    /** 
     *  详情信息
     * 
     * @param detail 详情信息
     */
    public function set detail(detail : DetailInfoData):void {
        this._detail = detail
    }

    /** 
     *  驳回服务审核表信息曉夞丅
     * 
     * @return 驳回服务审核表信息
     */
    public function get infoList():Array {
        return this._infoList;
    }

    /** 
     *  驳回服务审核表信息
     * 
     * @param infoList 驳回服务审核表信息
     */
    public function set infoList(infoList : Array):void {
        this._infoList = infoList
    }

    /** 
     *  驳回理由曉夞丅
     * 
     * @return 驳回理由
     */
    public function get disallowReasion():String {
        return this._disallowReasion;
    }

    /** 
     *  驳回理由
     * 
     * @param disallowReasion 驳回理由
     */
    public function set disallowReasion(disallowReasion : String):void {
        this._disallowReasion = disallowReasion
    }

    /** 
     *  申请id列表曉夞丅
     * 
     * @return 申请id列表
     */
    public function get appLyIdList():String {
        return this._appLyIdList;
    }

    /** 
     *  申请id列表
     * 
     * @param appLyIdList 申请id列表
     */
    public function set appLyIdList(appLyIdList : String):void {
        this._appLyIdList = appLyIdList
    }

}
}
