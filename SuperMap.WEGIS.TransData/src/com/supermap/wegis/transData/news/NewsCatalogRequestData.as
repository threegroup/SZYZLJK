package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.news.NewsCatalogData;

/** 
 * 添加新闻目录RequestData
 * 
 * 添加新闻目录RequestData
 * 
 * @author supermap
 */
public class NewsCatalogRequestData extends RequestData {

    /**  新闻目录信息 */
    private var _newsCatalogInfo : NewsCatalogData;

    /** 
     *  新闻目录信息曉夞丅
     * 
     * @return 新闻目录信息
     */
    public function get newsCatalogInfo():NewsCatalogData {
        return this._newsCatalogInfo;
    }

    /** 
     *  新闻目录信息
     * 
     * @param newsCatalogInfo 新闻目录信息
     */
    public function set newsCatalogInfo(newsCatalogInfo : NewsCatalogData):void {
        this._newsCatalogInfo = newsCatalogInfo
    }

}
}
