package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 全文检索的请求类 RequestData
 * 
 * RequestData
 * 
 * @author supermap
 */
public class LuceneRequestData extends RequestData {

    /**  查询的类型:0：一级索引，1：二级索引，2：空间索引 */
    private var _queryType : String;

    /**  关键字 */
    private var _keyWords : String;

    /**  过滤类型:区域类型:0:行政;1: 流域 */
    private var _areaType : String;

    /**  区域编码 */
    private var _areaCode : String;

    /**  区域级别:1：全国，2：省，3：市 */
    private var _areaLevel : String;

    /**  要素大类型:6+2要素分类 */
    private var _elementSuperType : String;

    /**  要素类型 */
    private var _elementType : String;

    /**  子要素类型 */
    private var _elementSubType : String;

    /**  选中记录ID:查询二级索引时设定 */
    private var _objectCode : String;

    /**  空间查询类型:空间查询时设定。0：点，1：面 */
    private var _spatialQueryType : String;

    /**  空间查询要素List:空间查询时，图层ID */
    private var _layerIdList : String;

    /**  比例尺:比例尺 */
    private var _scale : String;

    /**  地图的范围:地图的范围 */
    private var _mapBounds : String;

    /**  点串:点串 */
    private var _pointsArray : Array;

    /**  导出Flag:数据导出Flag */
    private var _exportFlag : String;

    /**  传入分类Flag:传入分类Flag */
    private var _typeFlag : String;

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引曉夞丅
     * 
     * @return 查询的类型:0：一级索引，1：二级索引，2：空间索引
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引
     * 
     * @param queryType 查询的类型:0：一级索引，1：二级索引，2：空间索引
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  关键字曉夞丅
     * 
     * @return 关键字
     */
    public function get keyWords():String {
        return this._keyWords;
    }

    /** 
     *  关键字
     * 
     * @param keyWords 关键字
     */
    public function set keyWords(keyWords : String):void {
        this._keyWords = keyWords
    }

    /** 
     *  过滤类型:区域类型:0:行政;1: 流域曉夞丅
     * 
     * @return 过滤类型:区域类型:0:行政;1: 流域
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  过滤类型:区域类型:0:行政;1: 流域
     * 
     * @param areaType 过滤类型:区域类型:0:行政;1: 流域
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  区域编码曉夞丅
     * 
     * @return 区域编码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域编码
     * 
     * @param areaCode 区域编码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  区域级别:1：全国，2：省，3：市曉夞丅
     * 
     * @return 区域级别:1：全国，2：省，3：市
     */
    public function get areaLevel():String {
        return this._areaLevel;
    }

    /** 
     *  区域级别:1：全国，2：省，3：市
     * 
     * @param areaLevel 区域级别:1：全国，2：省，3：市
     */
    public function set areaLevel(areaLevel : String):void {
        this._areaLevel = areaLevel
    }

    /** 
     *  要素大类型:6+2要素分类曉夞丅
     * 
     * @return 要素大类型:6+2要素分类
     */
    public function get elementSuperType():String {
        return this._elementSuperType;
    }

    /** 
     *  要素大类型:6+2要素分类
     * 
     * @param elementSuperType 要素大类型:6+2要素分类
     */
    public function set elementSuperType(elementSuperType : String):void {
        this._elementSuperType = elementSuperType
    }

    /** 
     *  要素类型曉夞丅
     * 
     * @return 要素类型
     */
    public function get elementType():String {
        return this._elementType;
    }

    /** 
     *  要素类型
     * 
     * @param elementType 要素类型
     */
    public function set elementType(elementType : String):void {
        this._elementType = elementType
    }

    /** 
     *  子要素类型曉夞丅
     * 
     * @return 子要素类型
     */
    public function get elementSubType():String {
        return this._elementSubType;
    }

    /** 
     *  子要素类型
     * 
     * @param elementSubType 子要素类型
     */
    public function set elementSubType(elementSubType : String):void {
        this._elementSubType = elementSubType
    }

    /** 
     *  选中记录ID:查询二级索引时设定曉夞丅
     * 
     * @return 选中记录ID:查询二级索引时设定
     */
    public function get objectCode():String {
        return this._objectCode;
    }

    /** 
     *  选中记录ID:查询二级索引时设定
     * 
     * @param objectCode 选中记录ID:查询二级索引时设定
     */
    public function set objectCode(objectCode : String):void {
        this._objectCode = objectCode
    }

    /** 
     *  空间查询类型:空间查询时设定。0：点，1：面曉夞丅
     * 
     * @return 空间查询类型:空间查询时设定。0：点，1：面
     */
    public function get spatialQueryType():String {
        return this._spatialQueryType;
    }

    /** 
     *  空间查询类型:空间查询时设定。0：点，1：面
     * 
     * @param spatialQueryType 空间查询类型:空间查询时设定。0：点，1：面
     */
    public function set spatialQueryType(spatialQueryType : String):void {
        this._spatialQueryType = spatialQueryType
    }

    /** 
     *  空间查询要素List:空间查询时，图层ID曉夞丅
     * 
     * @return 空间查询要素List:空间查询时，图层ID
     */
    public function get layerIdList():String {
        return this._layerIdList;
    }

    /** 
     *  空间查询要素List:空间查询时，图层ID
     * 
     * @param layerIdList 空间查询要素List:空间查询时，图层ID
     */
    public function set layerIdList(layerIdList : String):void {
        this._layerIdList = layerIdList
    }

    /** 
     *  比例尺:比例尺曉夞丅
     * 
     * @return 比例尺:比例尺
     */
    public function get scale():String {
        return this._scale;
    }

    /** 
     *  比例尺:比例尺
     * 
     * @param scale 比例尺:比例尺
     */
    public function set scale(scale : String):void {
        this._scale = scale
    }

    /** 
     *  地图的范围:地图的范围曉夞丅
     * 
     * @return 地图的范围:地图的范围
     */
    public function get mapBounds():String {
        return this._mapBounds;
    }

    /** 
     *  地图的范围:地图的范围
     * 
     * @param mapBounds 地图的范围:地图的范围
     */
    public function set mapBounds(mapBounds : String):void {
        this._mapBounds = mapBounds
    }

    /** 
     *  点串:点串曉夞丅
     * 
     * @return 点串:点串
     */
    public function get pointsArray():Array {
        return this._pointsArray;
    }

    /** 
     *  点串:点串
     * 
     * @param pointsArray 点串:点串
     */
    public function set pointsArray(pointsArray : Array):void {
        this._pointsArray = pointsArray
    }

    /** 
     *  导出Flag:数据导出Flag曉夞丅
     * 
     * @return 导出Flag:数据导出Flag
     */
    public function get exportFlag():String {
        return this._exportFlag;
    }

    /** 
     *  导出Flag:数据导出Flag
     * 
     * @param exportFlag 导出Flag:数据导出Flag
     */
    public function set exportFlag(exportFlag : String):void {
        this._exportFlag = exportFlag
    }

    /** 
     *  传入分类Flag:传入分类Flag曉夞丅
     * 
     * @return 传入分类Flag:传入分类Flag
     */
    public function get typeFlag():String {
        return this._typeFlag;
    }

    /** 
     *  传入分类Flag:传入分类Flag
     * 
     * @param typeFlag 传入分类Flag:传入分类Flag
     */
    public function set typeFlag(typeFlag : String):void {
        this._typeFlag = typeFlag
    }

}
}
