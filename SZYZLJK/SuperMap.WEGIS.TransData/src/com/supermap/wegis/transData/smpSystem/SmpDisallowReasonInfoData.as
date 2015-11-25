package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 驳回理由表TransData
 * 
 * 驳回理由表TransData
 * 
 * @author supermap
 */
public class SmpDisallowReasonInfoData extends BaseData {

    /**  驳回ID */
    private var _disallowId : String;

    /**  驳回理由 */
    private var _disallowReasion : String;

    /** 
     *  驳回ID曉夞丅
     * 
     * @return 驳回ID
     */
    public function get disallowId():String {
        return this._disallowId;
    }

    /** 
     *  驳回ID
     * 
     * @param disallowId 驳回ID
     */
    public function set disallowId(disallowId : String):void {
        this._disallowId = disallowId
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

}
}
