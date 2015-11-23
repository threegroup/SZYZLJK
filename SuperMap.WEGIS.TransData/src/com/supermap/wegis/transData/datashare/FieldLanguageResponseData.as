package com.supermap.wegis.transData.datashare
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * FieldLanguageResponseData
 * 
 * FieldLanguageResponseData
 * 
 * @author supermap
 */
public class FieldLanguageResponseData extends ResponseData {

    /**  分辨率信息 */
    private var _fblDataList : Array;

    /**  平台卫星信息 */
    private var _ptwxDataList : Array;

    /**  卫星日夜区分信息 */
    private var _wxqfDataList : Array;

    /**  比例尺信息 */
    private var _blcDataList : Array;

    /**  数据保存格式 */
    private var _sjbcgsDataList : Array;

    /** 
     *  分辨率信息曉夞丅
     * 
     * @return 分辨率信息
     */
    public function get fblDataList():Array {
        return this._fblDataList;
    }

    /** 
     *  分辨率信息
     * 
     * @param fblDataList 分辨率信息
     */
    public function set fblDataList(fblDataList : Array):void {
        this._fblDataList = fblDataList
    }

    /** 
     *  平台卫星信息曉夞丅
     * 
     * @return 平台卫星信息
     */
    public function get ptwxDataList():Array {
        return this._ptwxDataList;
    }

    /** 
     *  平台卫星信息
     * 
     * @param ptwxDataList 平台卫星信息
     */
    public function set ptwxDataList(ptwxDataList : Array):void {
        this._ptwxDataList = ptwxDataList
    }

    /** 
     *  卫星日夜区分信息曉夞丅
     * 
     * @return 卫星日夜区分信息
     */
    public function get wxqfDataList():Array {
        return this._wxqfDataList;
    }

    /** 
     *  卫星日夜区分信息
     * 
     * @param wxqfDataList 卫星日夜区分信息
     */
    public function set wxqfDataList(wxqfDataList : Array):void {
        this._wxqfDataList = wxqfDataList
    }

    /** 
     *  比例尺信息曉夞丅
     * 
     * @return 比例尺信息
     */
    public function get blcDataList():Array {
        return this._blcDataList;
    }

    /** 
     *  比例尺信息
     * 
     * @param blcDataList 比例尺信息
     */
    public function set blcDataList(blcDataList : Array):void {
        this._blcDataList = blcDataList
    }

    /** 
     *  数据保存格式曉夞丅
     * 
     * @return 数据保存格式
     */
    public function get sjbcgsDataList():Array {
        return this._sjbcgsDataList;
    }

    /** 
     *  数据保存格式
     * 
     * @param sjbcgsDataList 数据保存格式
     */
    public function set sjbcgsDataList(sjbcgsDataList : Array):void {
        this._sjbcgsDataList = sjbcgsDataList
    }

}
}
