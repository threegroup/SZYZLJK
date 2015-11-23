package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.catalog.AreaCatalogData;

/** 
 * 取得区域树RequestData
 * 
 * 取得区域树RequestData
 * 
 * @author supermap
 */
public class AreaCatalogRequestData extends RequestData {

    /**  结点信息 */
    private var _nodeInfo : AreaCatalogData;

    /** 
     *  结点信息曉夞丅
     * 
     * @return 结点信息
     */
    public function get nodeInfo():AreaCatalogData {
        return this._nodeInfo;
    }

    /** 
     *  结点信息
     * 
     * @param nodeInfo 结点信息
     */
    public function set nodeInfo(nodeInfo : AreaCatalogData):void {
        this._nodeInfo = nodeInfo
    }

}
}
