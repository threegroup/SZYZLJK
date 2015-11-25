package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得自定义查询字典信息RequestData
 * 
 * 取得自定义查询字典信息RequestData
 * 
 * @author supermap
 */
public class GetSearchCustomDicInfoRequestData extends RequestData {

    /**  查询字典表 */
    private var _searchDicTableName : String;

    /** 
     *  查询字典表曉夞丅
     * 
     * @return 查询字典表
     */
    public function get searchDicTableName():String {
        return this._searchDicTableName;
    }

    /** 
     *  查询字典表
     * 
     * @param searchDicTableName 查询字典表
     */
    public function set searchDicTableName(searchDicTableName : String):void {
        this._searchDicTableName = searchDicTableName
    }

}
}
