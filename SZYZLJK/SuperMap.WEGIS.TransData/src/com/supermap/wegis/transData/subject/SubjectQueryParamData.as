package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.BaseData;
import flash.utils.Dictionary;

/** 
 * 深度主题钻取查询的参数信息RequestData
 * 
 * 取得基本主题结果RequestData
 * 
 * @author supermap
 */
public class SubjectQueryParamData extends BaseData {

    /**  数据源对应的键值 */
    private var _dsKey : String;

    /**  参数对应列名及键值列表 */
    private var _filterCase : Vector;

    /**  当前的钻取的级别 */
    private var _deepLevel : String;

    /** 
     *  数据源对应的键值曉夞丅
     * 
     * @return 数据源对应的键值
     */
    public function get dsKey():String {
        return this._dsKey;
    }

    /** 
     *  数据源对应的键值
     * 
     * @param dsKey 数据源对应的键值
     */
    public function set dsKey(dsKey : String):void {
        this._dsKey = dsKey
    }

    /** 
     *  参数对应列名及键值列表曉夞丅
     * 
     * @return 参数对应列名及键值列表
     */
    public function get filterCase():Vector {
        return this._filterCase;
    }

    /** 
     *  参数对应列名及键值列表
     * 
     * @param filterCase 参数对应列名及键值列表
     */
    public function set filterCase(filterCase : Vector):void {
        this._filterCase = filterCase
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

}
}
