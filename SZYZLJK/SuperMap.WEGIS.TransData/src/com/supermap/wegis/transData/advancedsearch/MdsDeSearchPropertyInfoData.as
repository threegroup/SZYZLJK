package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * @author supermap
 */
public class MdsDeSearchPropertyInfoData extends BaseData {

    /**  服务ID */
    private var _serviceId : String;

    /**  属性ID */
    private var _propertyId : String;

    /**  属性名称 */
    private var _propertyName : String;

    /**  初始是否显示 */
    private var _initialDisplay : String;

    /**  属性值类型 */
    private var _propertyType : String;

    /**  对应台帐表名称 */
    private var _surveyTable : String;

    /**  对应台帐表字段 */
    private var _surveyFields : String;

    /**  是否查询字段 */
    private var _isSelect : String;

    /**  是否显示字段 */
    private var _isShow : String;

    /**  属性满足基本条件 */
    private var _propertyValidationCondition : String;

    /**  属性显示类型 */
    private var _propertyDisplayType : String;

    /**  是否有自定义条件 */
    private var _hasCustom : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  字典表数据内容是MdsDeDictionaryInfoData */
    private var _nodeList : Array;

    /**  showIndex */
    private var _showIndex : String;

    /**  表格中文名 */
    private var _surveyTableZHCN : String;

    /**  字段类型 */
    private var _surveyFieldsType : String;

    /**  MIDDLE_TYPE */
    private var _middleType : String;

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  属性ID曉夞丅
     * 
     * @return 属性ID
     */
    public function get propertyId():String {
        return this._propertyId;
    }

    /** 
     *  属性ID
     * 
     * @param propertyId 属性ID
     */
    public function set propertyId(propertyId : String):void {
        this._propertyId = propertyId
    }

    /** 
     *  属性名称曉夞丅
     * 
     * @return 属性名称
     */
    public function get propertyName():String {
        return this._propertyName;
    }

    /** 
     *  属性名称
     * 
     * @param propertyName 属性名称
     */
    public function set propertyName(propertyName : String):void {
        this._propertyName = propertyName
    }

    /** 
     *  初始是否显示曉夞丅
     * 
     * @return 初始是否显示
     */
    public function get initialDisplay():String {
        return this._initialDisplay;
    }

    /** 
     *  初始是否显示
     * 
     * @param initialDisplay 初始是否显示
     */
    public function set initialDisplay(initialDisplay : String):void {
        this._initialDisplay = initialDisplay
    }

    /** 
     *  属性值类型曉夞丅
     * 
     * @return 属性值类型
     */
    public function get propertyType():String {
        return this._propertyType;
    }

    /** 
     *  属性值类型
     * 
     * @param propertyType 属性值类型
     */
    public function set propertyType(propertyType : String):void {
        this._propertyType = propertyType
    }

    /** 
     *  对应台帐表名称曉夞丅
     * 
     * @return 对应台帐表名称
     */
    public function get surveyTable():String {
        return this._surveyTable;
    }

    /** 
     *  对应台帐表名称
     * 
     * @param surveyTable 对应台帐表名称
     */
    public function set surveyTable(surveyTable : String):void {
        this._surveyTable = surveyTable
    }

    /** 
     *  对应台帐表字段曉夞丅
     * 
     * @return 对应台帐表字段
     */
    public function get surveyFields():String {
        return this._surveyFields;
    }

    /** 
     *  对应台帐表字段
     * 
     * @param surveyFields 对应台帐表字段
     */
    public function set surveyFields(surveyFields : String):void {
        this._surveyFields = surveyFields
    }

    /** 
     *  是否查询字段曉夞丅
     * 
     * @return 是否查询字段
     */
    public function get isSelect():String {
        return this._isSelect;
    }

    /** 
     *  是否查询字段
     * 
     * @param isSelect 是否查询字段
     */
    public function set isSelect(isSelect : String):void {
        this._isSelect = isSelect
    }

    /** 
     *  是否显示字段曉夞丅
     * 
     * @return 是否显示字段
     */
    public function get isShow():String {
        return this._isShow;
    }

    /** 
     *  是否显示字段
     * 
     * @param isShow 是否显示字段
     */
    public function set isShow(isShow : String):void {
        this._isShow = isShow
    }

    /** 
     *  属性满足基本条件曉夞丅
     * 
     * @return 属性满足基本条件
     */
    public function get propertyValidationCondition():String {
        return this._propertyValidationCondition;
    }

    /** 
     *  属性满足基本条件
     * 
     * @param propertyValidationCondition 属性满足基本条件
     */
    public function set propertyValidationCondition(propertyValidationCondition : String):void {
        this._propertyValidationCondition = propertyValidationCondition
    }

    /** 
     *  属性显示类型曉夞丅
     * 
     * @return 属性显示类型
     */
    public function get propertyDisplayType():String {
        return this._propertyDisplayType;
    }

    /** 
     *  属性显示类型
     * 
     * @param propertyDisplayType 属性显示类型
     */
    public function set propertyDisplayType(propertyDisplayType : String):void {
        this._propertyDisplayType = propertyDisplayType
    }

    /** 
     *  是否有自定义条件曉夞丅
     * 
     * @return 是否有自定义条件
     */
    public function get hasCustom():String {
        return this._hasCustom;
    }

    /** 
     *  是否有自定义条件
     * 
     * @param hasCustom 是否有自定义条件
     */
    public function set hasCustom(hasCustom : String):void {
        this._hasCustom = hasCustom
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
     *  字典表数据内容是MdsDeDictionaryInfoData曉夞丅
     * 
     * @return 字典表数据内容是MdsDeDictionaryInfoData
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  字典表数据内容是MdsDeDictionaryInfoData
     * 
     * @param nodeList 字典表数据内容是MdsDeDictionaryInfoData
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  showIndex曉夞丅
     * 
     * @return showIndex
     */
    public function get showIndex():String {
        return this._showIndex;
    }

    /** 
     *  showIndex
     * 
     * @param showIndex showIndex
     */
    public function set showIndex(showIndex : String):void {
        this._showIndex = showIndex
    }

    /** 
     *  表格中文名曉夞丅
     * 
     * @return 表格中文名
     */
    public function get surveyTableZHCN():String {
        return this._surveyTableZHCN;
    }

    /** 
     *  表格中文名
     * 
     * @param surveyTableZHCN 表格中文名
     */
    public function set surveyTableZHCN(surveyTableZHCN : String):void {
        this._surveyTableZHCN = surveyTableZHCN
    }

    /** 
     *  字段类型曉夞丅
     * 
     * @return 字段类型
     */
    public function get surveyFieldsType():String {
        return this._surveyFieldsType;
    }

    /** 
     *  字段类型
     * 
     * @param surveyFieldsType 字段类型
     */
    public function set surveyFieldsType(surveyFieldsType : String):void {
        this._surveyFieldsType = surveyFieldsType
    }

    /** 
     *  MIDDLE_TYPE曉夞丅
     * 
     * @return MIDDLE_TYPE
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  MIDDLE_TYPE
     * 
     * @param middleType MIDDLE_TYPE
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
