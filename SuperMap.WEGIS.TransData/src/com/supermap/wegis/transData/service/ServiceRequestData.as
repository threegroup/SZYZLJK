package com.supermap.wegis.transData.service
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.service.ServiceInfoData;

/** 
 * 取得服务RequestData
 * 
 * 取得服务RequestData
 * 
 * @author supermap
 */
public class ServiceRequestData extends RequestData {

    /**  服务信息 */
    private var _serviceInfoData : ServiceInfoData;

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get serviceInfoData():ServiceInfoData {
        return this._serviceInfoData;
    }

    /** 
     *  服务信息
     * 
     * @param serviceInfoData 服务信息
     */
    public function set serviceInfoData(serviceInfoData : ServiceInfoData):void {
        this._serviceInfoData = serviceInfoData
    }

}
}
