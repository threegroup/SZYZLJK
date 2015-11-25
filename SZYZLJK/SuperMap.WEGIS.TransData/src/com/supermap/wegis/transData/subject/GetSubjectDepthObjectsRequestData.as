package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.transData.subject.GetSubjectDepthRequestData;

/** 
 * 取得深度主题具体对象RequestData
 * 
 * 取得基本主题具体对象RequestData
 * 
 * @author supermap
 */
public class GetSubjectDepthObjectsRequestData extends GetSubjectDepthRequestData {

    /**  排序字段 */
    private var _sortField : String;

    /**  降序字段 */
    private var _isAsc : String;

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
