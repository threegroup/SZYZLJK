package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 返回新闻目录信息ResponseData
 * 
 * 返回新闻目录信息ResponseData
 * 
 * @author supermap
 */
public class NewsCatalogResponseData extends ResponseData {

    /**  新闻目录信息 */
    private var _newsCatalogDataList : Array;

    /** 
     *  新闻目录信息曉夞丅
     * 
     * @return 新闻目录信息
     */
    public function get newsCatalogDataList():Array {
        return this._newsCatalogDataList;
    }

    /** 
     *  新闻目录信息
     * 
     * @param newsCatalogDataList 新闻目录信息
     */
    public function set newsCatalogDataList(newsCatalogDataList : Array):void {
        this._newsCatalogDataList = newsCatalogDataList
    }

}
}
