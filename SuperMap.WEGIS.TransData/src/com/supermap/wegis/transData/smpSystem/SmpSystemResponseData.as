package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 系统管理表TransData
 * 
 * 系统管理表TransData
 * 
 * @author supermap
 */
public class SmpSystemResponseData extends ResponseData {

    /**  系统管理列表 */
    private var _systemList : Array;

    /**  页码 */
    private var _pageIndex : String;

    /** 
     *  系统管理列表曉夞丅
     * 
     * @return 系统管理列表
     */
    public function get systemList():Array {
        return this._systemList;
    }

    /** 
     *  系统管理列表
     * 
     * @param systemList 系统管理列表
     */
    public function set systemList(systemList : Array):void {
        this._systemList = systemList
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

}
}
