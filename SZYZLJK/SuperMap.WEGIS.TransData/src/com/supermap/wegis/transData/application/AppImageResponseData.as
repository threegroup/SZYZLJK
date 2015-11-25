package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class AppImageResponseData extends ResponseData {

    /**  影像申请详细信息 */
    private var _appImageInfoList : Array;

    /** 
     *  影像申请详细信息曉夞丅
     * 
     * @return 影像申请详细信息
     */
    public function get appImageInfoList():Array {
        return this._appImageInfoList;
    }

    /** 
     *  影像申请详细信息
     * 
     * @param appImageInfoList 影像申请详细信息
     */
    public function set appImageInfoList(appImageInfoList : Array):void {
        this._appImageInfoList = appImageInfoList
    }

}
}
