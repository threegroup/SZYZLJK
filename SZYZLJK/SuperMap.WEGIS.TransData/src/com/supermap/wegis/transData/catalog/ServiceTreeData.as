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
public class ServiceTreeData extends ServiceCatalogData {

    /**  服务名称 */
    private var _serviceName : String;

    /**  服务能力 */
    private var _serviceCapability : String;

    /**  服务接口类型 */
    private var _serviceInterfaceType : String;

    /**  服务分类 */
    private var _serviceClass : String;

    /**  服务对应的图层 */
    private var _layerName : String;

    /**  数据服务代理URL */
    private var _dataServiceUrl : String;

    /**  代理原始服务地址 */
    private var _originUrl : String;

    /**  图标符号url */
    private var _legendUrl : String;

    /**  是否选中树的节点 */
    private var _checked : String;

    /**  middleType */
    private var _middleType : String;

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名称
     * 
     * @param serviceName 服务名称
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
    }

    /** 
     *  服务能力曉夞丅
     * 
     * @return 服务能力
     */
    public function get serviceCapability():String {
        return this._serviceCapability;
    }

    /** 
     *  服务能力
     * 
     * @param serviceCapability 服务能力
     */
    public function set serviceCapability(serviceCapability : String):void {
        this._serviceCapability = serviceCapability
    }

    /** 
     *  服务接口类型曉夞丅
     * 
     * @return 服务接口类型
     */
    public function get serviceInterfaceType():String {
        return this._serviceInterfaceType;
    }

    /** 
     *  服务接口类型
     * 
     * @param serviceInterfaceType 服务接口类型
     */
    public function set serviceInterfaceType(serviceInterfaceType : String):void {
        this._serviceInterfaceType = serviceInterfaceType
    }

    /** 
     *  服务分类曉夞丅
     * 
     * @return 服务分类
     */
    public function get serviceClass():String {
        return this._serviceClass;
    }

    /** 
     *  服务分类
     * 
     * @param serviceClass 服务分类
     */
    public function set serviceClass(serviceClass : String):void {
        this._serviceClass = serviceClass
    }

    /** 
     *  服务对应的图层曉夞丅
     * 
     * @return 服务对应的图层
     */
    public function get layerName():String {
        return this._layerName;
    }

    /** 
     *  服务对应的图层
     * 
     * @param layerName 服务对应的图层
     */
    public function set layerName(layerName : String):void {
        this._layerName = layerName
    }

    /** 
     *  数据服务代理URL曉夞丅
     * 
     * @return 数据服务代理URL
     */
    public function get dataServiceUrl():String {
        return this._dataServiceUrl;
    }

    /** 
     *  数据服务代理URL
     * 
     * @param dataServiceUrl 数据服务代理URL
     */
    public function set dataServiceUrl(dataServiceUrl : String):void {
        this._dataServiceUrl = dataServiceUrl
    }

    /** 
     *  代理原始服务地址曉夞丅
     * 
     * @return 代理原始服务地址
     */
    public function get originUrl():String {
        return this._originUrl;
    }

    /** 
     *  代理原始服务地址
     * 
     * @param originUrl 代理原始服务地址
     */
    public function set originUrl(originUrl : String):void {
        this._originUrl = originUrl
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
     *  middleType曉夞丅
     * 
     * @return middleType
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  middleType
     * 
     * @param middleType middleType
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
