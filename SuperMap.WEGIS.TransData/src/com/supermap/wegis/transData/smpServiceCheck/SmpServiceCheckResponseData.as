package com.supermap.wegis.transData.smpServiceCheck
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 服务审核列表信息ResponseData
 * 
 * 服务审核列表信息ResponseData
 * 
 * @author supermap
 */
public class SmpServiceCheckResponseData extends ResponseData {

    /**  服务审核列表信息 */
    private var _dataList : Array;

    /**  页码 */
    private var _pageIndex : String;

    /**  服务审核详情列表信息 */
    private var _detailInfoList : Array;

    /**  申请表详情信息 */
    private var _applyDetailInfoDataList : Array;

    /** 
     *  服务审核列表信息曉夞丅
     * 
     * @return 服务审核列表信息
     */
    public function get dataList():Array {
        return this._dataList;
    }

    /** 
     *  服务审核列表信息
     * 
     * @param dataList 服务审核列表信息
     */
    public function set dataList(dataList : Array):void {
        this._dataList = dataList
    }

    /** 
     *  页码曉夞丅
     * 
     * @return 页码
     */
    public function get pageIndex():String {
        return this._pageIndex;
    }

    /** 
     *  页码
     * 
     * @param pageIndex 页码
     */
    public function set pageIndex(pageIndex : String):void {
        this._pageIndex = pageIndex
    }

    /** 
     *  服务审核详情列表信息曉夞丅
     * 
     * @return 服务审核详情列表信息
     */
    public function get detailInfoList():Array {
        return this._detailInfoList;
    }

    /** 
     *  服务审核详情列表信息
     * 
     * @param detailInfoList 服务审核详情列表信息
     */
    public function set detailInfoList(detailInfoList : Array):void {
        this._detailInfoList = detailInfoList
    }

    /** 
     *  申请表详情信息曉夞丅
     * 
     * @return 申请表详情信息
     */
    public function get applyDetailInfoDataList():Array {
        return this._applyDetailInfoDataList;
    }

    /** 
     *  申请表详情信息
     * 
     * @param applyDetailInfoDataList 申请表详情信息
     */
    public function set applyDetailInfoDataList(applyDetailInfoDataList : Array):void {
        this._applyDetailInfoDataList = applyDetailInfoDataList
    }

}
}
