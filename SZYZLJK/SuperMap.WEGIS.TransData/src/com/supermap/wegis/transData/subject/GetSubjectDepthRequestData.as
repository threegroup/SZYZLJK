package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得深度主题结果RequestData
 * 
 * 取得基本主题结果RequestData
 * 
 * @author supermap
 */
public class GetSubjectDepthRequestData extends RequestData {

    /**  专题对应id值 */
    private var _subjectId : String;

    /**  数据源对应的键值 */
    private var _tableKey : String;

    /**  当前的钻取的级别 */
    private var _deepLevel : String;

    /**  行对应的主键 */
    private var _rowCode : String;

    /**  列对应的类型 */
    private var _colCode : String;

    /**  附属信息 */
    private var _otherInfo : String;

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
     *  数据源对应的键值曉夞丅
     * 
     * @return 数据源对应的键值
     */
    public function get tableKey():String {
        return this._tableKey;
    }

    /** 
     *  数据源对应的键值
     * 
     * @param tableKey 数据源对应的键值
     */
    public function set tableKey(tableKey : String):void {
        this._tableKey = tableKey
    }

    /** 
     *  当前的钻取的级别曉夞丅
     * 
     * @return 当前的钻取的级别
     */
    public function get deepLevel():String {
        return this._deepLevel;
    }

    /** 
     *  当前的钻取的级别
     * 
     * @param deepLevel 当前的钻取的级别
     */
    public function set deepLevel(deepLevel : String):void {
        this._deepLevel = deepLevel
    }

    /** 
     *  行对应的主键曉夞丅
     * 
     * @return 行对应的主键
     */
    public function get rowCode():String {
        return this._rowCode;
    }

    /** 
     *  行对应的主键
     * 
     * @param rowCode 行对应的主键
     */
    public function set rowCode(rowCode : String):void {
        this._rowCode = rowCode
    }

    /** 
     *  列对应的类型曉夞丅
     * 
     * @return 列对应的类型
     */
    public function get colCode():String {
        return this._colCode;
    }

    /** 
     *  列对应的类型
     * 
     * @param colCode 列对应的类型
     */
    public function set colCode(colCode : String):void {
        this._colCode = colCode
    }

    /** 
     *  附属信息曉夞丅
     * 
     * @return 附属信息
     */
    public function get otherInfo():String {
        return this._otherInfo;
    }

    /** 
     *  附属信息
     * 
     * @param otherInfo 附属信息
     */
    public function set otherInfo(otherInfo : String):void {
        this._otherInfo = otherInfo
    }

}
}
