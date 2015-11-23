package com.supermap.wegis.transData.datashare
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * FieldLanguageData
 * 
 * FieldLanguageData
 * 
 * @author supermap
 */
public class FieldLanguageInfoData extends BaseData {

    /**  字段ID */
    private var _fieldId : String;

    /**  字段名称汉语 */
    private var _fieldNameChs : String;

    /**  字段名称分类ID */
    private var _fieldTypeId : String;

    /**  字段名称分类名称 */
    private var _fieldTypeName : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  图标符号ID */
    private var _legendId : String;

    /**  图标符号URL */
    private var _legendUrl : String;

    /** 
     *  字段ID曉夞丅
     * 
     * @return 字段ID
     */
    public function get fieldId():String {
        return this._fieldId;
    }

    /** 
     *  字段ID
     * 
     * @param fieldId 字段ID
     */
    public function set fieldId(fieldId : String):void {
        this._fieldId = fieldId
    }

    /** 
     *  字段名称汉语曉夞丅
     * 
     * @return 字段名称汉语
     */
    public function get fieldNameChs():String {
        return this._fieldNameChs;
    }

    /** 
     *  字段名称汉语
     * 
     * @param fieldNameChs 字段名称汉语
     */
    public function set fieldNameChs(fieldNameChs : String):void {
        this._fieldNameChs = fieldNameChs
    }

    /** 
     *  字段名称分类ID曉夞丅
     * 
     * @return 字段名称分类ID
     */
    public function get fieldTypeId():String {
        return this._fieldTypeId;
    }

    /** 
     *  字段名称分类ID
     * 
     * @param fieldTypeId 字段名称分类ID
     */
    public function set fieldTypeId(fieldTypeId : String):void {
        this._fieldTypeId = fieldTypeId
    }

    /** 
     *  字段名称分类名称曉夞丅
     * 
     * @return 字段名称分类名称
     */
    public function get fieldTypeName():String {
        return this._fieldTypeName;
    }

    /** 
     *  字段名称分类名称
     * 
     * @param fieldTypeName 字段名称分类名称
     */
    public function set fieldTypeName(fieldTypeName : String):void {
        this._fieldTypeName = fieldTypeName
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序索引
     * 
     * @param orderIndex 排序索引
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

    /** 
     *  图标符号ID曉夞丅
     * 
     * @return 图标符号ID
     */
    public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  图标符号ID
     * 
     * @param legendId 图标符号ID
     */
    public function set legendId(legendId : String):void {
        this._legendId = legendId
    }

    /** 
     *  图标符号URL曉夞丅
     * 
     * @return 图标符号URL
     */
    public function get legendUrl():String {
        return this._legendUrl;
    }

    /** 
     *  图标符号URL
     * 
     * @param legendUrl 图标符号URL
     */
    public function set legendUrl(legendUrl : String):void {
        this._legendUrl = legendUrl
    }

}
}
