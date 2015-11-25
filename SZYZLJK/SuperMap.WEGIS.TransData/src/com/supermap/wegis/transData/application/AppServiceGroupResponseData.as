package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * AppServiceGroupResponseData
 * 
 * AppServiceGroupResponseData
 * 
 * @author supermap
 */
public class AppServiceGroupResponseData extends ResponseData {

    /**  服务申请详情 */
    private var _appServiceGroupListData : Array;

    /** 
     *  服务申请详情曉夞丅
     * 
     * @return 服务申请详情
     */
    public function get appServiceGroupListData():Array {
        return this._appServiceGroupListData;
    }

    /** 
     *  服务申请详情
     * 
     * @param appServiceGroupListData 服务申请详情
     */
    public function set appServiceGroupListData(appServiceGroupListData : Array):void {
        this._appServiceGroupListData = appServiceGroupListData
    }

}
}
