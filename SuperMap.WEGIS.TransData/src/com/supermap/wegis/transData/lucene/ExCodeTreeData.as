package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.transData.catalog.ServiceTreeData;

/** 
 * 代码数值情报
 * 
 * 代码数值情报
 * 
 * @author supermap
 */
public class ExCodeTreeData extends ServiceTreeData {

    /**  code */
    private var _code : String;

    /**  显示值 */
    private var _showValue : String;

    /**  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型 */
    private var _queryType : String;

    /**  雨量指标 */
    private var _quota : String;

    /**  区域CODE:点击件数时使用 */
    private var _areaCode : String;

    /**  初期化添加服务列表 */
    private var _addServiceList : Array;

    /** 
     *  code曉夞丅
     * 
     * @return code
     */
    public function get code():String {
        return this._code;
    }

    /** 
     *  code
     * 
     * @param code code
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
     *  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型曉夞丅
     * 
     * @return 查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     * 
     * @param queryType 查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  雨量指标曉夞丅
     * 
     * @return 雨量指标
     */
    public function get quota():String {
        return this._quota;
    }

    /** 
     *  雨量指标
     * 
     * @param quota 雨量指标
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
     *  初期化添加服务列表曉夞丅
     * 
     * @return 初期化添加服务列表
     */
    public function get addServiceList():Array {
        return this._addServiceList;
    }

    /** 
     *  初期化添加服务列表
     * 
     * @param addServiceList 初期化添加服务列表
     */
    public function set addServiceList(addServiceList : Array):void {
        this._addServiceList = addServiceList
    }

}
}
