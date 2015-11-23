package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得基本主题查询条件
 * 
 * 取得基本主题查询条件
 * 
 * @author supermap
 */
public class GetThemeConditionsRequestData extends RequestData {

    /**  专题对应表 */
    private var _themeTable : String;

    /** 
     *  专题对应表曉夞丅
     * 
     * @return 专题对应表
     */
    public function get themeTable():String {
        return this._themeTable;
    }

    /** 
     *  专题对应表
     * 
     * @param themeTable 专题对应表
     */
    public function set themeTable(themeTable : String):void {
        this._themeTable = themeTable
    }

}
}
