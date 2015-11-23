package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.AppVectorInfoData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class AppVectorRequestData extends RequestData {

    /**  矢量申请详细信息 */
    private var _appVectorInfoData : AppVectorInfoData;

    /** 
     *  矢量申请详细信息曉夞丅
     * 
     * @return 矢量申请详细信息
     */
    public function get appVectorInfoData():AppVectorInfoData {
        return this._appVectorInfoData;
    }

    /** 
     *  矢量申请详细信息
     * 
     * @param appVectorInfoData 矢量申请详细信息
     */
    public function set appVectorInfoData(appVectorInfoData : AppVectorInfoData):void {
        this._appVectorInfoData = appVectorInfoData
    }

}
}
