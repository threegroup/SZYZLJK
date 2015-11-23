package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * MarkTypeInfoData
 * 
 * MarkTypeInfoData
 * 
 * @author supermap
 */
public class MarkTypeInfoData extends BaseData {

    /**  标注类型ID */
    private var _markTypeId : String;

    /**  标注名称 */
    private var _markTypeName : String;

    /**  标注名称别名 */
    private var _markTypeAlias : String;

    /**  标注关联数据集ID */
    private var _markDataId : String;

    /**  标注关联数据集名称 */
    private var _markDataName : String;

    /**  标注关联数据集类型ID */
    private var _markDataTypeId : String;

    /**  标注类型分组一ID */
    private var _markTypeGroupOneId : String;

    /**  标注类型分组一名称 */
    private var _markTypeGroupOneName : String;

    /** 
     *  标注类型ID曉夞丅
     * 
     * @return 标注类型ID
     */
    public function get markTypeId():String {
        return this._markTypeId;
    }

    /** 
     *  标注类型ID
     * 
     * @param markTypeId 标注类型ID
     */
    public function set markTypeId(markTypeId : String):void {
        this._markTypeId = markTypeId
    }

    /** 
     *  标注名称曉夞丅
     * 
     * @return 标注名称
     */
    public function get markTypeName():String {
        return this._markTypeName;
    }

    /** 
     *  标注名称
     * 
     * @param markTypeName 标注名称
     */
    public function set markTypeName(markTypeName : String):void {
        this._markTypeName = markTypeName
    }

    /** 
     *  标注名称别名曉夞丅
     * 
     * @return 标注名称别名
     */
    public function get markTypeAlias():String {
        return this._markTypeAlias;
    }

    /** 
     *  标注名称别名
     * 
     * @param markTypeAlias 标注名称别名
     */
    public function set markTypeAlias(markTypeAlias : String):void {
        this._markTypeAlias = markTypeAlias
    }

    /** 
     *  标注关联数据集ID曉夞丅
     * 
     * @return 标注关联数据集ID
     */
    public function get markDataId():String {
        return this._markDataId;
    }

    /** 
     *  标注关联数据集ID
     * 
     * @param markDataId 标注关联数据集ID
     */
    public function set markDataId(markDataId : String):void {
        this._markDataId = markDataId
    }

    /** 
     *  标注关联数据集名称曉夞丅
     * 
     * @return 标注关联数据集名称
     */
    public function get markDataName():String {
        return this._markDataName;
    }

    /** 
     *  标注关联数据集名称
     * 
     * @param markDataName 标注关联数据集名称
     */
    public function set markDataName(markDataName : String):void {
        this._markDataName = markDataName
    }

    /** 
     *  标注关联数据集类型ID曉夞丅
     * 
     * @return 标注关联数据集类型ID
     */
    public function get markDataTypeId():String {
        return this._markDataTypeId;
    }

    /** 
     *  标注关联数据集类型ID
     * 
     * @param markDataTypeId 标注关联数据集类型ID
     */
    public function set markDataTypeId(markDataTypeId : String):void {
        this._markDataTypeId = markDataTypeId
    }

    /** 
     *  标注类型分组一ID曉夞丅
     * 
     * @return 标注类型分组一ID
     */
    public function get markTypeGroupOneId():String {
        return this._markTypeGroupOneId;
    }

    /** 
     *  标注类型分组一ID
     * 
     * @param markTypeGroupOneId 标注类型分组一ID
     */
    public function set markTypeGroupOneId(markTypeGroupOneId : String):void {
        this._markTypeGroupOneId = markTypeGroupOneId
    }

    /** 
     *  标注类型分组一名称曉夞丅
     * 
     * @return 标注类型分组一名称
     */
    public function get markTypeGroupOneName():String {
        return this._markTypeGroupOneName;
    }

    /** 
     *  标注类型分组一名称
     * 
     * @param markTypeGroupOneName 标注类型分组一名称
     */
    public function set markTypeGroupOneName(markTypeGroupOneName : String):void {
        this._markTypeGroupOneName = markTypeGroupOneName
    }

}
}
