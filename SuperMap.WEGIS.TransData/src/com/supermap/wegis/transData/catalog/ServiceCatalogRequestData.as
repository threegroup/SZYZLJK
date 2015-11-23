package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.catalog.ServiceCatalogData;

/** 
 * 添加服务节点RequestData
 * 
 * 添加服务节点RequestData
 * 
 * @author supermap
 */
public class ServiceCatalogRequestData extends RequestData {

    /**  结点信息 */
    private var _nodeInfo : ServiceCatalogData;

    /** 
     *  结点信息曉夞丅
     * 
     * @return 结点信息
     */
    public function get nodeInfo():ServiceCatalogData {
        return this._nodeInfo;
    }

    /** 
     *  结点信息
     * 
     * @param nodeInfo 结点信息
     */
    public function set nodeInfo(nodeInfo : ServiceCatalogData):void {
        this._nodeInfo = nodeInfo
    }

}
}
