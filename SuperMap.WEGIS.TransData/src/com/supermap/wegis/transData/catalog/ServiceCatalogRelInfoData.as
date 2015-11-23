package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务资源目录表TransData
 * 
 * 服务资源目录表TransData
 * 
 * @author supermap
 */
public class ServiceCatalogRelInfoData extends BaseData {

    /**  服务目录ID */
    private var _catalogId : String;

    /**  服务ID */
    private var _serviceId : String;

    /**  底图ID */
    private var _baseMapId : String;

    /**  排序字段 */
    private var _orderIndex : String;

    /** 
     *  服务目录ID曉夞丅
     * 
     * @return 服务目录ID
     */
    public function get catalogId():String {
        return this._catalogId;
    }

    /** 
     *  服务目录ID
     * 
     * @param catalogId 服务目录ID
     */
    public function set catalogId(catalogId : String):void {
        this._catalogId = catalogId
    }

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  底图ID曉夞丅
     * 
     * @return 底图ID
     */
    public function get baseMapId():String {
        return this._baseMapId;
    }

    /** 
     *  底图ID
     * 
     * @param baseMapId 底图ID
     */
    public function set baseMapId(baseMapId : String):void {
        this._baseMapId = baseMapId
    }

    /** 
     *  排序字段曉夞丅
     * 
     * @return 排序字段
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序字段
     * 
     * @param orderIndex 排序字段
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

}
}
