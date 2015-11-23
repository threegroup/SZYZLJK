package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.transData.search.SearchRequestData;

/** 
 * 取得自定义查询结果记录集RequestData
 * 
 * 取得自定义查询结果记录集RequestData
 * 
 * @author supermap
 */
public class GetSearchCustomResultsRequestData extends SearchRequestData {

    /**  中分类类型 */
    private var _middleType : String;

    /**  查询的列字段，以逗号分割，格式如TableA.col1，TableB.col2 */
    private var _fieldNames : String;

    /**  查询条件模板 */
    private var _causeTemplate : String;

    /**  查询的参数信息，以，分割如：1，‘张三’，33 */
    private var _causeParams : String;

    /** 
     *  中分类类型曉夞丅
     * 
     * @return 中分类类型
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  中分类类型
     * 
     * @param middleType 中分类类型
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

    /** 
     *  查询的列字段，以逗号分割，格式如TableA.col1，TableB.col2曉夞丅
     * 
     * @return 查询的列字段，以逗号分割，格式如TableA.col1，TableB.col2
     */
    public function get fieldNames():String {
        return this._fieldNames;
    }

    /** 
     *  查询的列字段，以逗号分割，格式如TableA.col1，TableB.col2
     * 
     * @param fieldNames 查询的列字段，以逗号分割，格式如TableA.col1，TableB.col2
     */
    public function set fieldNames(fieldNames : String):void {
        this._fieldNames = fieldNames
    }

    /** 
     *  查询条件模板曉夞丅
     * 
     * @return 查询条件模板
     */
    public function get causeTemplate():String {
        return this._causeTemplate;
    }

    /** 
     *  查询条件模板
     * 
     * @param causeTemplate 查询条件模板
     */
    public function set causeTemplate(causeTemplate : String):void {
        this._causeTemplate = causeTemplate
    }

    /** 
     *  查询的参数信息，以，分割如：1，‘张三’，33曉夞丅
     * 
     * @return 查询的参数信息，以，分割如：1，‘张三’，33
     */
    public function get causeParams():String {
        return this._causeParams;
    }

    /** 
     *  查询的参数信息，以，分割如：1，‘张三’，33
     * 
     * @param causeParams 查询的参数信息，以，分割如：1，‘张三’，33
     */
    public function set causeParams(causeParams : String):void {
        this._causeParams = causeParams
    }

}
}
