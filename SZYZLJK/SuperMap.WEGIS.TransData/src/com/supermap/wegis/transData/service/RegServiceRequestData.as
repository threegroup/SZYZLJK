package com.supermap.wegis.transData.service
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.service.ServiceInfoData;
import com.supermap.wegis.transData.catalog.ServiceCatalogData;

/** 
 * 注册服务RequestData
 * 
 * 注册服务RequestData
 * 
 * @author supermap
 */
public class RegServiceRequestData extends RequestData {

    /**  服务信息 */
    private var _serviceInfoData : ServiceInfoData;

    /**  服务树信息 */
    private var _nodeInfo : ServiceCatalogData;

    /**  服务地图Id */
    private var _baseMapIds : Array;

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

    /** 
     *  服务树信息曉夞丅
     * 
     * @return 服务树信息
     */
    public function get nodeInfo():ServiceCatalogData {
        return this._nodeInfo;
    }

    /** 
     *  服务树信息
     * 
     * @param nodeInfo 服务树信息
     */
    public function set nodeInfo(nodeInfo : ServiceCatalogData):void {
        this._nodeInfo = nodeInfo
    }

    /** 
     *  服务地图Id曉夞丅
     * 
     * @return 服务地图Id
     */
    public function get baseMapIds():Array {
        return this._baseMapIds;
    }

    /** 
     *  服务地图Id
     * 
     * @param baseMapIds 服务地图Id
     */
    public function set baseMapIds(baseMapIds : Array):void {
        this._baseMapIds = baseMapIds
    }

}
}
