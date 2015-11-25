package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得深度主题结果(单独为河湖)RequestData
 * 
 * 取得基本主题结果(单独为河湖)RequestData
 * 
 * @author supermap
 */
public class GetSubjectDepth4RLRequestData extends RequestData {

    /**  专题对应id值 */
    private var _subjectId : String;

    /**  查询的关键词 */
    private var _keyName : String;

    /**  查询的次类型:剖面图中第几次查询 */
    private var _searchSubType : String;

    /** 
     *  专题对应id值曉夞丅
     * 
     * @return 专题对应id值
     */
    public function get subjectId():String {
        return this._subjectId;
    }

    /** 
     *  专题对应id值
     * 
     * @param subjectId 专题对应id值
     */
    public function set subjectId(subjectId : String):void {
        this._subjectId = subjectId
    }

    /** 
     *  查询的关键词曉夞丅
     * 
     * @return 查询的关键词
     */
    public function get keyName():String {
        return this._keyName;
    }

    /** 
     *  查询的关键词
     * 
     * @param keyName 查询的关键词
     */
    public function set keyName(keyName : String):void {
        this._keyName = keyName
    }

    /** 
     *  查询的次类型:剖面图中第几次查询曉夞丅
     * 
     * @return 查询的次类型:剖面图中第几次查询
     */
    public function get searchSubType():String {
        return this._searchSubType;
    }

    /** 
     *  查询的次类型:剖面图中第几次查询
     * 
     * @param searchSubType 查询的次类型:剖面图中第几次查询
     */
    public function set searchSubType(searchSubType : String):void {
        this._searchSubType = searchSubType
    }

}
}
