package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.transData.catalog.ServiceCatalogData;

/** 
 * 服务资源目录表TransData
 * 
 * 服务资源目录表TransData
 * 
 * @author supermap
 */
public class BaseMapServiceTreeData extends ServiceCatalogData {

    /**  是否选中树的节点 */
    private var _checked : String;

    /**  服务信息 */
    private var _serviceInfoDataList : Array;

    /**  图标符号url */
    private var _legendUrl : String;

    /** 
     *  是否选中树的节点曉夞丅
     * 
     * @return 是否选中树的节点
     */
    public function get checked():String {
        return this._checked;
    }

    /** 
     *  是否选中树的节点
     * 
     * @param checked 是否选中树的节点
     */
    public function set checked(checked : String):void {
        this._checked = checked
    }

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get serviceInfoDataList():Array {
        return this._serviceInfoDataList;
    }

    /** 
     *  服务信息
     * 
     * @param serviceInfoDataList 服务信息
     */
    public function set serviceInfoDataList(serviceInfoDataList : Array):void {
        this._serviceInfoDataList = serviceInfoDataList
    }

    /** 
     *  图标符号url曉夞丅
     * 
     * @return 图标符号url
     */
    public function get legendUrl():String {
        return this._legendUrl;
    }

    /** 
     *  图标符号url
     * 
     * @param legendUrl 图标符号url
     */
    public function set legendUrl(legendUrl : String):void {
        this._legendUrl = legendUrl
    }

}
}
