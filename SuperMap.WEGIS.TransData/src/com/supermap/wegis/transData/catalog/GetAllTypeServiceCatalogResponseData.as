package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.transData.catalog.GetServiceCatalogResponseData;

/** 
 * 取得服务树ResponseData
 * 
 * 取得服务树ResponseData
 * 
 * @author supermap
 */
public class GetAllTypeServiceCatalogResponseData extends GetServiceCatalogResponseData {

    /**  服务类型名称 */
    private var _typeName : String;

    /**  服务类型CODE */
    private var _typeCode : String;

    /** 
     *  服务类型名称曉夞丅
     * 
     * @return 服务类型名称
     */
    public function get typeName():String {
        return this._typeName;
    }

    /** 
     *  服务类型名称
     * 
     * @param typeName 服务类型名称
     */
    public function set typeName(typeName : String):void {
        this._typeName = typeName
    }

    /** 
     *  服务类型CODE曉夞丅
     * 
     * @return 服务类型CODE
     */
    public function get typeCode():String {
        return this._typeCode;
    }

    /** 
     *  服务类型CODE
     * 
     * @param typeCode 服务类型CODE
     */
    public function set typeCode(typeCode : String):void {
        this._typeCode = typeCode
    }

}
}
