package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * AppServiceResponseData
 * 
 * AppServiceResponseData
 * 
 * @author supermap
 */
public class AppServiceResponseData extends ResponseData {

    /**  服务申请详情 */
    private var _appServiceListData : Array;

    /** 
     *  服务申请详情曉夞丅
     * 
     * @return 服务申请详情
     */
    public function get appServiceListData():Array {
        return this._appServiceListData;
    }

    /** 
     *  服务申请详情
     * 
     * @param appServiceListData 服务申请详情
     */
    public function set appServiceListData(appServiceListData : Array):void {
        this._appServiceListData = appServiceListData
    }

}
}
