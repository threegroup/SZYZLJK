package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.news.NewsData;

/** 
 * 新闻信息Data
 * 
 * 新闻信息Data
 * 
 * @author supermap
 */
public class NewsRequestData extends RequestData {

    /**  新闻信息 */
    private var _newsInfo : NewsData;

    /** 
     *  新闻信息曉夞丅
     * 
     * @return 新闻信息
     */
    public function get newsInfo():NewsData {
        return this._newsInfo;
    }

    /** 
     *  新闻信息
     * 
     * @param newsInfo 新闻信息
     */
    public function set newsInfo(newsInfo : NewsData):void {
        this._newsInfo = newsInfo
    }

}
}
