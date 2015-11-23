package com.supermap.wegis.transData.realtime
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 代码数值情报
 * 
 * 代码数值情报
 * 
 * @author supermap
 */
public class RealTimeHeaderInfoData extends BaseData {

    /**  代码 */
    private var _code : String;

    /**  显示值 */
    private var _showValue : String;

    /**  是否默认 */
    private var _isDefault : String;

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
     *  是否默认曉夞丅
     * 
     * @return 是否默认
     */
    public function get isDefault():String {
        return this._isDefault;
    }

    /** 
     *  是否默认
     * 
     * @param isDefault 是否默认
     */
    public function set isDefault(isDefault : String):void {
        this._isDefault = isDefault
    }

}
}
