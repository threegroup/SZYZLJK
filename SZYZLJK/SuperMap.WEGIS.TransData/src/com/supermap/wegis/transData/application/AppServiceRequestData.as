package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.AppServiceInfoData;

/** 
 * AppServiceRequestData
 * 
 * AppServiceRequestData
 * 
 * @author supermap
 */
public class AppServiceRequestData extends RequestData {

    /**  服务申请详情 */
    private var _appServiceInfoData : AppServiceInfoData;

    /** 
     *  服务申请详情曉夞丅
     * 
     * @return 服务申请详情
     */
    public function get appServiceInfoData():AppServiceInfoData {
        return this._appServiceInfoData;
    }

    /** 
     *  服务申请详情
     * 
     * @param appServiceInfoData 服务申请详情
     */
    public function set appServiceInfoData(appServiceInfoData : AppServiceInfoData):void {
        this._appServiceInfoData = appServiceInfoData
    }

}
}
