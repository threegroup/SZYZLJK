package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.AppServiceGroupInfoData;

/** 
 * AppServiceGroupRequestData
 * 
 * AppServiceGroupRequestData
 * 
 * @author supermap
 */
public class AppServiceGroupRequestData extends RequestData {

    /**  服务聚合申请详情 */
    private var _appServiceGroupInfoData : AppServiceGroupInfoData;

    /** 
     *  服务聚合申请详情曉夞丅
     * 
     * @return 服务聚合申请详情
     */
    public function get appServiceGroupInfoData():AppServiceGroupInfoData {
        return this._appServiceGroupInfoData;
    }

    /** 
     *  服务聚合申请详情
     * 
     * @param appServiceGroupInfoData 服务聚合申请详情
     */
    public function set appServiceGroupInfoData(appServiceGroupInfoData : AppServiceGroupInfoData):void {
        this._appServiceGroupInfoData = appServiceGroupInfoData
    }

}
}
