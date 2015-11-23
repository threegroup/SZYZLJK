package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.ServiceLegendRelInfoData;

/** 
 * 服务图例关系表ServiceLegendRelRequestData
 * 
 * 服务图例关系表ServiceLegendRelRequestData
 * 
 * @author supermap
 */
public class ServiceLegendRelRequestData extends RequestData {

    /**  服务图例关系表 */
    private var _serviceLegendRelInfoData : ServiceLegendRelInfoData;

    /** 
     *  服务图例关系表曉夞丅
     * 
     * @return 服务图例关系表
     */
    public function get serviceLegendRelInfoData():ServiceLegendRelInfoData {
        return this._serviceLegendRelInfoData;
    }

    /** 
     *  服务图例关系表
     * 
     * @param serviceLegendRelInfoData 服务图例关系表
     */
    public function set serviceLegendRelInfoData(serviceLegendRelInfoData : ServiceLegendRelInfoData):void {
        this._serviceLegendRelInfoData = serviceLegendRelInfoData
    }

}
}
