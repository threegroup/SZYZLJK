package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;
import Boolean;
import int;

/** 
 * 代码数值情报
 * 
 * 代码数值情报
 * 
 * @author supermap
 */
public class CellData extends BaseData {

    /**  代码 */
    private var _code : String;

    /**  显示值 */
    private var _showValue : String;

    /**  查询类型:0：详情， 1：区域，2：件数 */
    private var _queryType : String;

    /**  是否选中 */
    private var _isDefault : Boolean;

    /**  指标 */
    private var _quota : String;

    /**  区域CODE:点击件数时使用 */
    private var _areaCode : String;

    /**  区域中心点X */
    private var _centerX : String;

    /**  区域中心点Y */
    private var _centerY : String;

    /**  区域Bounds */
    private var _mapBounds : String;

    /**  列宽 */
    private var _colWidth : int;

    /**  是否右对齐 */
    private var _isRightAlign : String;

    /**  小数点 */
    private var _decimalDigits : int;

    /**  是否金额 */
    private var _isMoney : String;

    /**  是否有过多详细情报 */
    private var _hasMoreInfo : String;

    /**  是否为排序字段 */
    private var _isSortField : String;

    /**  升降序字段 */
    private var _isAsc : String;

    /** 
     *  代码曉夞丅
     * 
     * @return 代码
     */
    public function get code():String {
        return this._code;
    }

    /** 
     *  代码
     * 
     * @param code 代码
     */
    public function set code(code : String):void {
        this._code = code
    }

    /** 
     *  显示值曉夞丅
     * 
     * @return 显示值
     */
    public function get showValue():String {
        return this._showValue;
    }

    /** 
     *  显示值
     * 
     * @param showValue 显示值
     */
    public function set showValue(showValue : String):void {
        this._showValue = showValue
    }

    /** 
     *  查询类型:0：详情， 1：区域，2：件数曉夞丅
     * 
     * @return 查询类型:0：详情， 1：区域，2：件数
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询类型:0：详情， 1：区域，2：件数
     * 
     * @param queryType 查询类型:0：详情， 1：区域，2：件数
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  是否选中曉夞丅
     * 
     * @return 是否选中
     */
    public function get isDefault():Boolean {
        return this._isDefault;
    }

    /** 
     *  是否选中
     * 
     * @param isDefault 是否选中
     */
    public function set isDefault(isDefault : Boolean):void {
        this._isDefault = isDefault
    }

    /** 
     *  指标曉夞丅
     * 
     * @return 指标
     */
    public function get quota():String {
        return this._quota;
    }

    /** 
     *  指标
     * 
     * @param quota 指标
     */
    public function set quota(quota : String):void {
        this._quota = quota
    }

    /** 
     *  区域CODE:点击件数时使用曉夞丅
     * 
     * @return 区域CODE:点击件数时使用
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域CODE:点击件数时使用
     * 
     * @param areaCode 区域CODE:点击件数时使用
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  区域中心点X曉夞丅
     * 
     * @return 区域中心点X
     */
    public function get centerX():String {
        return this._centerX;
    }

    /** 
     *  区域中心点X
     * 
     * @param centerX 区域中心点X
     */
    public function set centerX(centerX : String):void {
        this._centerX = centerX
    }

    /** 
     *  区域中心点Y曉夞丅
     * 
     * @return 区域中心点Y
     */
    public function get centerY():String {
        return this._centerY;
    }

    /** 
     *  区域中心点Y
     * 
     * @param centerY 区域中心点Y
     */
    public function set centerY(centerY : String):void {
        this._centerY = centerY
    }

    /** 
     *  区域Bounds曉夞丅
     * 
     * @return 区域Bounds
     */
    public function get mapBounds():String {
        return this._mapBounds;
    }

    /** 
     *  区域Bounds
     * 
     * @param mapBounds 区域Bounds
     */
    public function set mapBounds(mapBounds : String):void {
        this._mapBounds = mapBounds
    }

    /** 
     *  列宽曉夞丅
     * 
     * @return 列宽
     */
    public function get colWidth():int {
        return this._colWidth;
    }

    /** 
     *  列宽
     * 
     * @param colWidth 列宽
     */
    public function set colWidth(colWidth : int):void {
        this._colWidth = colWidth
    }

    /** 
     *  是否右对齐曉夞丅
     * 
     * @return 是否右对齐
     */
    public function get isRightAlign():String {
        return this._isRightAlign;
    }

    /** 
     *  是否右对齐
     * 
     * @param isRightAlign 是否右对齐
     */
    public function set isRightAlign(isRightAlign : String):void {
        this._isRightAlign = isRightAlign
    }

    /** 
     *  小数点曉夞丅
     * 
     * @return 小数点
     */
    public function get decimalDigits():int {
        return this._decimalDigits;
    }

    /** 
     *  小数点
     * 
     * @param decimalDigits 小数点
     */
    public function set decimalDigits(decimalDigits : int):void {
        this._decimalDigits = decimalDigits
    }

    /** 
     *  是否金额曉夞丅
     * 
     * @return 是否金额
     */
    public function get isMoney():String {
        return this._isMoney;
    }

    /** 
     *  是否金额
     * 
     * @param isMoney 是否金额
     */
    public function set isMoney(isMoney : String):void {
        this._isMoney = isMoney
    }

    /** 
     *  是否有过多详细情报曉夞丅
     * 
     * @return 是否有过多详细情报
     */
    public function get hasMoreInfo():String {
        return this._hasMoreInfo;
    }

    /** 
     *  是否有过多详细情报
     * 
     * @param hasMoreInfo 是否有过多详细情报
     */
    public function set hasMoreInfo(hasMoreInfo : String):void {
        this._hasMoreInfo = hasMoreInfo
    }

    /** 
     *  是否为排序字段曉夞丅
     * 
     * @return 是否为排序字段
     */
    public function get isSortField():String {
        return this._isSortField;
    }

    /** 
     *  是否为排序字段
     * 
     * @param isSortField 是否为排序字段
     */
    public function set isSortField(isSortField : String):void {
        this._isSortField = isSortField
    }

    /** 
     *  升降序字段曉夞丅
     * 
     * @return 升降序字段
     */
    public function get isAsc():String {
        return this._isAsc;
    }

    /** 
     *  升降序字段
     * 
     * @param isAsc 升降序字段
     */
    public function set isAsc(isAsc : String):void {
        this._isAsc = isAsc
    }

}
}
