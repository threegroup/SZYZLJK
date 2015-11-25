package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.smpSystem.SmpSystemInfoData;

/** 
 * 系统管理表TransData
 * 
 * 系统管理表TransData
 * 
 * @author supermap
 */
public class SmpSystemRequestData extends RequestData {

    /**  系统审核表信息 */
    private var _systemInfo : SmpSystemInfoData;

    /**  删除系统审核信息 */
    private var _codeList : Array;

    /** 
     *  系统审核表信息曉夞丅
     * 
     * @return 系统审核表信息
     */
    public function get systemInfo():SmpSystemInfoData {
        return this._systemInfo;
    }

    /** 
     *  系统审核表信息
     * 
     * @param systemInfo 系统审核表信息
     */
    public function set systemInfo(systemInfo : SmpSystemInfoData):void {
        this._systemInfo = systemInfo
    }

    /** 
     *  删除系统审核信息曉夞丅
     * 
     * @return 删除系统审核信息
     */
    public function get codeList():Array {
        return this._codeList;
    }

    /** 
     *  删除系统审核信息
     * 
     * @param codeList 删除系统审核信息
     */
    public function set codeList(codeList : Array):void {
        this._codeList = codeList
    }

}
}
