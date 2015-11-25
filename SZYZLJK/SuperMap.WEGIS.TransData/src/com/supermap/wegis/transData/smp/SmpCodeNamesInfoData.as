package com.supermap.wegis.transData.smp
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 代码名称表TransData
 * 
 * 代码名称表TransData
 * 
 * @author supermap
 */
public class SmpCodeNamesInfoData extends BaseData {

    /**  分类 */
    private var _codeType : String;

    /**  代码 */
    private var _code : String;

    /**  名称 */
    private var _codeName : String;

    /** 
     *  分类曉夞丅
     * 
     * @return 分类
     */
    public function get codeType():String {
        return this._codeType;
    }

    /** 
     *  分类
     * 
     * @param codeType 分类
     */
    public function set codeType(codeType : String):void {
        this._codeType = codeType
    }

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
     *  名称曉夞丅
     * 
     * @return 名称
     */
    public function get codeName():String {
        return this._codeName;
    }

    /** 
     *  名称
     * 
     * @param codeName 名称
     */
    public function set codeName(codeName : String):void {
        this._codeName = codeName
    }

}
}
