package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.search.QueryAreaData;
import com.supermap.wegis.transData.search.QueryStatisticData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class SearchRequestData extends RequestData {

    /**  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询 */
    private var _queryType : String;

    /**  要素中分类:空间，属性，常用共用。6+2要素中分类（P201等）。 */
    private var _middleTypeList : Array;

    /**  选中记录ID:查询二级索引时设定 */
    private var _objectCode : String;

    /**  查询区域Data */
    private var _queryAreaData : QueryAreaData;

    /**  统计区域Data */
    private var _queryStatisticData : QueryStatisticData;

    /**  常用检索条件 */
    private var _conditonList : Array;

    /**  常用合计条件 */
    private var _sumConditions : String;

    /**  关键字 */
    private var _keyWords : String;

    /**  空间查询类型:空间查询时设定。0：点，1：面 */
    private var _spatialQueryType : String;

    /**  比例尺:空间查询时设定。比例尺 */
    private var _scale : String;

    /**  地图的范围:空间查询时设定。地图的范围 */
    private var _mapBounds : String;

    /**  点串:空间查询时设定。点串 */
    private var _pointsArray : Array;

    /**  是否取得统计信息:0：不取得，1：取得 */
    private var _fetchStatistic : String;

    /**  专题分析面对象的范围:空间查询时设定。地图的范围 */
    private var _mapBoundsList : Array;

    /**  比例尺:空间查询时设定。比例尺 */
    private var _lucenelevel : String;

    /**  查询结果类型:1:详情，2：统计 */
    private var _fitchResultType : String;

    /**  是否只查询显示要素:空或者0：全部查询，1:只查询显示 */
    private var _queryShowItemsOnly : String;

    /**  记录IDList */
    private var _objectCodeList : Array;

    /**  排序字段 */
    private var _sortField : String;

    /**  降序字段 */
    private var _isAsc : String;
	
	private var  _spatialId:String;

	/**  空间分析Id */
	public function get spatialId():String
	{
		return _spatialId;
	}

	/**
	 * @private
	 */
	public function set spatialId(value:String):void
	{
		_spatialId = value;
	}

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询曉夞丅
     * 
     * @return 查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     * 
     * @param queryType 查询的类型:0：一级索引，1：二级索引，2：空间索引，3：常用查询
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  要素中分类:空间，属性，常用共用。6+2要素中分类（P201等）。曉夞丅
     * 
     * @return 要素中分类:空间，属性，常用共用。6+2要素中分类（P201等）。
     */
    public function get middleTypeList():Array {
        return this._middleTypeList;
    }

    /** 
     *  要素中分类:空间，属性，常用共用。6+2要素中分类（P201等）。
     * 
     * @param middleTypeList 要素中分类:空间，属性，常用共用。6+2要素中分类（P201等）。
     */
    public function set middleTypeList(middleTypeList : Array):void {
        this._middleTypeList = middleTypeList
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
     *  查询区域Data曉夞丅
     * 
     * @return 查询区域Data
     */
    public function get queryAreaData():QueryAreaData {
        return this._queryAreaData;
    }

    /** 
     *  查询区域Data
     * 
     * @param queryAreaData 查询区域Data
     */
    public function set queryAreaData(queryAreaData : QueryAreaData):void {
        this._queryAreaData = queryAreaData
    }

    /** 
     *  统计区域Data曉夞丅
     * 
     * @return 统计区域Data
     */
    public function get queryStatisticData():QueryStatisticData {
        return this._queryStatisticData;
    }

    /** 
     *  统计区域Data
     * 
     * @param queryStatisticData 统计区域Data
     */
    public function set queryStatisticData(queryStatisticData : QueryStatisticData):void {
        this._queryStatisticData = queryStatisticData
    }

    /** 
     *  常用检索条件曉夞丅
     * 
     * @return 常用检索条件
     */
    public function get conditonList():Array {
        return this._conditonList;
    }

    /** 
     *  常用检索条件
     * 
     * @param conditonList 常用检索条件
     */
    public function set conditonList(conditonList : Array):void {
        this._conditonList = conditonList
    }

    /** 
     *  常用合计条件曉夞丅
     * 
     * @return 常用合计条件
     */
    public function get sumConditions():String {
        return this._sumConditions;
    }

    /** 
     *  常用合计条件
     * 
     * @param sumConditions 常用合计条件
     */
    public function set sumConditions(sumConditions : String):void {
        this._sumConditions = sumConditions
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
     *  比例尺:空间查询时设定。比例尺曉夞丅
     * 
     * @return 比例尺:空间查询时设定。比例尺
     */
    public function get scale():String {
        return this._scale;
    }

    /** 
     *  比例尺:空间查询时设定。比例尺
     * 
     * @param scale 比例尺:空间查询时设定。比例尺
     */
    public function set scale(scale : String):void {
        this._scale = scale
    }

    /** 
     *  地图的范围:空间查询时设定。地图的范围曉夞丅
     * 
     * @return 地图的范围:空间查询时设定。地图的范围
     */
    public function get mapBounds():String {
        return this._mapBounds;
    }

    /** 
     *  地图的范围:空间查询时设定。地图的范围
     * 
     * @param mapBounds 地图的范围:空间查询时设定。地图的范围
     */
    public function set mapBounds(mapBounds : String):void {
        this._mapBounds = mapBounds
    }

    /** 
     *  点串:空间查询时设定。点串曉夞丅
     * 
     * @return 点串:空间查询时设定。点串
     */
    public function get pointsArray():Array {
        return this._pointsArray;
    }

    /** 
     *  点串:空间查询时设定。点串
     * 
     * @param pointsArray 点串:空间查询时设定。点串
     */
    public function set pointsArray(pointsArray : Array):void {
        this._pointsArray = pointsArray
    }

    /** 
     *  是否取得统计信息:0：不取得，1：取得曉夞丅
     * 
     * @return 是否取得统计信息:0：不取得，1：取得
     */
    public function get fetchStatistic():String {
        return this._fetchStatistic;
    }

    /** 
     *  是否取得统计信息:0：不取得，1：取得
     * 
     * @param fetchStatistic 是否取得统计信息:0：不取得，1：取得
     */
    public function set fetchStatistic(fetchStatistic : String):void {
        this._fetchStatistic = fetchStatistic
    }

    /** 
     *  专题分析面对象的范围:空间查询时设定。地图的范围曉夞丅
     * 
     * @return 专题分析面对象的范围:空间查询时设定。地图的范围
     */
    public function get mapBoundsList():Array {
        return this._mapBoundsList;
    }

    /** 
     *  专题分析面对象的范围:空间查询时设定。地图的范围
     * 
     * @param mapBoundsList 专题分析面对象的范围:空间查询时设定。地图的范围
     */
    public function set mapBoundsList(mapBoundsList : Array):void {
        this._mapBoundsList = mapBoundsList
    }

    /** 
     *  比例尺:空间查询时设定。比例尺曉夞丅
     * 
     * @return 比例尺:空间查询时设定。比例尺
     */
    public function get lucenelevel():String {
        return this._lucenelevel;
    }

    /** 
     *  比例尺:空间查询时设定。比例尺
     * 
     * @param lucenelevel 比例尺:空间查询时设定。比例尺
     */
    public function set lucenelevel(lucenelevel : String):void {
        this._lucenelevel = lucenelevel
    }

    /** 
     *  查询结果类型:1:详情，2：统计曉夞丅
     * 
     * @return 查询结果类型:1:详情，2：统计
     */
    public function get fitchResultType():String {
        return this._fitchResultType;
    }

    /** 
     *  查询结果类型:1:详情，2：统计
     * 
     * @param fitchResultType 查询结果类型:1:详情，2：统计
     */
    public function set fitchResultType(fitchResultType : String):void {
        this._fitchResultType = fitchResultType
    }

    /** 
     *  是否只查询显示要素:空或者0：全部查询，1:只查询显示曉夞丅
     * 
     * @return 是否只查询显示要素:空或者0：全部查询，1:只查询显示
     */
    public function get queryShowItemsOnly():String {
        return this._queryShowItemsOnly;
    }

    /** 
     *  是否只查询显示要素:空或者0：全部查询，1:只查询显示
     * 
     * @param queryShowItemsOnly 是否只查询显示要素:空或者0：全部查询，1:只查询显示
     */
    public function set queryShowItemsOnly(queryShowItemsOnly : String):void {
        this._queryShowItemsOnly = queryShowItemsOnly
    }

    /** 
     *  记录IDList曉夞丅
     * 
     * @return 记录IDList
     */
    public function get objectCodeList():Array {
        return this._objectCodeList;
    }

    /** 
     *  记录IDList
     * 
     * @param objectCodeList 记录IDList
     */
    public function set objectCodeList(objectCodeList : Array):void {
        this._objectCodeList = objectCodeList
    }

    /** 
     *  排序字段曉夞丅
     * 
     * @return 排序字段
     */
    public function get sortField():String {
        return this._sortField;
    }

    /** 
     *  排序字段
     * 
     * @param sortField 排序字段
     */
    public function set sortField(sortField : String):void {
        this._sortField = sortField
    }

    /** 
     *  降序字段曉夞丅
     * 
     * @return 降序字段
     */
    public function get isAsc():String {
        return this._isAsc;
    }

    /** 
     *  降序字段
     * 
     * @param isAsc 降序字段
     */
    public function set isAsc(isAsc : String):void {
        this._isAsc = isAsc
    }

}
}
