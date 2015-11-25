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
public class AppVectorResponseData extends ResponseData {

    /**  影像申请详细信息 */
    private var _appVectorInfoList : Array;

    /** 
     *  影像申请详细信息曉夞丅
     * 
     * @return 影像申请详细信息
     */
    public function get appVectorInfoList():Array {
        return this._appVectorInfoList;
    }

    /** 
     *  影像申请详细信息
     * 
     * @param appVectorInfoList 影像申请详细信息
     */
    public function set appVectorInfoList(appVectorInfoList : Array):void {
        this._appVectorInfoList = appVectorInfoList
    }

}
}
