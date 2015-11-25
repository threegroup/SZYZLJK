package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.catalog.ServiceCatalogRelInfoData;

/** 
 * 服务与服务底图关系RequestData
 * 
 * 服务与服务底图关系RequestData
 * 
 * @author supermap
 */
public class ServiceCatalogRelRequestData extends RequestData {

    /**  服务与服务底图关系 */
    private var _serviceCatalogRelInfoData : ServiceCatalogRelInfoData;

    /** 
     *  服务与服务底图关系曉夞丅
     * 
     * @return 服务与服务底图关系
     */
    public function get serviceCatalogRelInfoData():ServiceCatalogRelInfoData {
        return this._serviceCatalogRelInfoData;
    }

    /** 
     *  服务与服务底图关系
     * 
     * @param serviceCatalogRelInfoData 服务与服务底图关系
     */
    public function set serviceCatalogRelInfoData(serviceCatalogRelInfoData : ServiceCatalogRelInfoData):void {
        this._serviceCatalogRelInfoData = serviceCatalogRelInfoData
    }

}
}
