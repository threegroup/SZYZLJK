package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.AppImageInfoData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class AppImageRequestData extends RequestData {

    /**  影像申请详细信息 */
    private var _appImageInfoData : AppImageInfoData;

    /** 
     *  影像申请详细信息曉夞丅
     * 
     * @return 影像申请详细信息
     */
    public function get appImageInfoData():AppImageInfoData {
        return this._appImageInfoData;
    }

    /** 
     *  影像申请详细信息
     * 
     * @param appImageInfoData 影像申请详细信息
     */
    public function set appImageInfoData(appImageInfoData : AppImageInfoData):void {
        this._appImageInfoData = appImageInfoData
    }

}
}
