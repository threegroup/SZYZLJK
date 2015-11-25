package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得自定义查询条件RequestData
 * 
 * 取得自定义查询条件RequestData
 * 
 * @author supermap
 */
public class GetSearchCustomRequestData extends RequestData {

    /**  查询ID */
    private var _searchId : String;

    /**  查询名称 */
    private var _searchName : String;

    /**  创建日期 */
    private var _createDate : String;

    /**  用户ID */
    private var _userId : String;

    /**  服务ID */
    private var _serviceId : String;

    /**  查询字段 */
    private var _selectFields : String;

    /**  条件字段 */
    private var _conditionFields : String;

    /**  条件字段值 */
    private var _conditionFieldsValue : String;

    /**  排序字段 */
    private var _orderFields : String;

    /**  完整SQL文 */
    private var _fullSql : String;

    /**  显示的完整SQL文 */
    private var _displayFullSql : String;

    /** 
     *  查询ID曉夞丅
     * 
     * @return 查询ID
     */
    public function get searchId():String {
        return this._searchId;
    }

    /** 
     *  查询ID
     * 
     * @param searchId 查询ID
     */
    public function set searchId(searchId : String):void {
        this._searchId = searchId
    }

    /** 
     *  查询名称曉夞丅
     * 
     * @return 查询名称
     */
    public function get searchName():String {
        return this._searchName;
    }

    /** 
     *  查询名称
     * 
     * @param searchName 查询名称
     */
    public function set searchName(searchName : String):void {
        this._searchName = searchName
    }

    /** 
     *  创建日期曉夞丅
     * 
     * @return 创建日期
     */
    public function get createDate():String {
        return this._createDate;
    }

    /** 
     *  创建日期
     * 
     * @param createDate 创建日期
     */
    public function set createDate(createDate : String):void {
        this._createDate = createDate
    }

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    override public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    override public function set userId(userId : String):void {
        this._userId = userId
    }

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
     *  查询字段曉夞丅
     * 
     * @return 查询字段
     */
    public function get selectFields():String {
        return this._selectFields;
    }

    /** 
     *  查询字段
     * 
     * @param selectFields 查询字段
     */
    public function set selectFields(selectFields : String):void {
        this._selectFields = selectFields
    }

    /** 
     *  条件字段曉夞丅
     * 
     * @return 条件字段
     */
    public function get conditionFields():String {
        return this._conditionFields;
    }

    /** 
     *  条件字段
     * 
     * @param conditionFields 条件字段
     */
    public function set conditionFields(conditionFields : String):void {
        this._conditionFields = conditionFields
    }

    /** 
     *  条件字段值曉夞丅
     * 
     * @return 条件字段值
     */
    public function get conditionFieldsValue():String {
        return this._conditionFieldsValue;
    }

    /** 
     *  条件字段值
     * 
     * @param conditionFieldsValue 条件字段值
     */
    public function set conditionFieldsValue(conditionFieldsValue : String):void {
        this._conditionFieldsValue = conditionFieldsValue
    }

    /** 
     *  排序字段曉夞丅
     * 
     * @return 排序字段
     */
    public function get orderFields():String {
        return this._orderFields;
    }

    /** 
     *  排序字段
     * 
     * @param orderFields 排序字段
     */
    public function set orderFields(orderFields : String):void {
        this._orderFields = orderFields
    }

    /** 
     *  完整SQL文曉夞丅
     * 
     * @return 完整SQL文
     */
    public function get fullSql():String {
        return this._fullSql;
    }

    /** 
     *  完整SQL文
     * 
     * @param fullSql 完整SQL文
     */
    public function set fullSql(fullSql : String):void {
        this._fullSql = fullSql
    }

    /** 
     *  显示的完整SQL文曉夞丅
     * 
     * @return 显示的完整SQL文
     */
    public function get displayFullSql():String {
        return this._displayFullSql;
    }

    /** 
     *  显示的完整SQL文
     * 
     * @param displayFullSql 显示的完整SQL文
     */
    public function set displayFullSql(displayFullSql : String):void {
        this._displayFullSql = displayFullSql
    }

}
}
