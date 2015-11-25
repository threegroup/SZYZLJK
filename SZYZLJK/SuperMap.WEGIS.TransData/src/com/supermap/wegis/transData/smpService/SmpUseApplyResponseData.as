package com.supermap.wegis.transData.smpService
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 使用申请管理表TransData
 * 
 * 使用申请管理表TransData
 * 
 * @author supermap
 */
public class SmpUseApplyResponseData extends ResponseData {

    /**  申请信息 */
    private var _smpUseApplyDataList : Array;

    /**  服务列表 */
    private var _smpUseApplyServiceDataList : Array;

    /** 
     *  申请信息曉夞丅
     * 
     * @return 申请信息
     */
    public function get smpUseApplyDataList():Array {
        return this._smpUseApplyDataList;
    }

    /** 
     *  申请信息
     * 
     * @param smpUseApplyDataList 申请信息
     */
    public function set smpUseApplyDataList(smpUseApplyDataList : Array):void {
        this._smpUseApplyDataList = smpUseApplyDataList
    }

    /** 
     *  服务列表曉夞丅
     * 
     * @return 服务列表
     */
    public function get smpUseApplyServiceDataList():Array {
        return this._smpUseApplyServiceDataList;
    }

    /** 
     *  服务列表
     * 
     * @param smpUseApplyServiceDataList 服务列表
     */
    public function set smpUseApplyServiceDataList(smpUseApplyServiceDataList : Array):void {
        this._smpUseApplyServiceDataList = smpUseApplyServiceDataList
    }

}
}
