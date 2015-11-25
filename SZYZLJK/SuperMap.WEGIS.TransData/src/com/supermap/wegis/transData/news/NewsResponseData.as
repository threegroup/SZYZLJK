package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 返回新闻信息ResponseData
 * 
 * 返回新闻信息ResponseData
 * 
 * @author supermap
 */
public class NewsResponseData extends ResponseData {

    /**  新闻信息 */
    private var _newsDataList : Array;

    /** 
     *  新闻信息曉夞丅
     * 
     * @return 新闻信息
     */
    public function get newsDataList():Array {
        return this._newsDataList;
    }

    /** 
     *  新闻信息
     * 
     * @param newsDataList 新闻信息
     */
    public function set newsDataList(newsDataList : Array):void {
        this._newsDataList = newsDataList
    }

}
}
