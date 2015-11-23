package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * MarkTypeResponseData
 * 
 * MarkTypeResponseData
 * 
 * @author supermap
 */
public class MarkTypeResponseData extends ResponseData {

    /**  标注记录 */
    private var _nodeList : Array;

    /**  属性字段 */
    private var _fieldList : Array;

    /** 
     *  标注记录曉夞丅
     * 
     * @return 标注记录
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  标注记录
     * 
     * @param nodeList 标注记录
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  属性字段曉夞丅
     * 
     * @return 属性字段
     */
    public function get fieldList():Array {
        return this._fieldList;
    }

    /** 
     *  属性字段
     * 
     * @param fieldList 属性字段
     */
    public function set fieldList(fieldList : Array):void {
        this._fieldList = fieldList
    }

}
}
