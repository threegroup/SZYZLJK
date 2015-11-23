package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.lucene.utility.LuceneQueryOutputData;

/** 
 * 返回全文检索的信息 LuceneResponseData
 * 
 * 返回全文检索的信息 LuceneResponseData
 * 
 * @author supermap
 */
public class LuceneResponseData extends ResponseData {

    /**  查询结果 */
    private var _luceneQueryResultData : LuceneQueryOutputData;

    /** 
     *  查询结果曉夞丅
     * 
     * @return 查询结果
     */
    public function get luceneQueryResultData():LuceneQueryOutputData {
        return this._luceneQueryResultData;
    }

    /** 
     *  查询结果
     * 
     * @param luceneQueryResultData 查询结果
     */
    public function set luceneQueryResultData(luceneQueryResultData : LuceneQueryOutputData):void {
        this._luceneQueryResultData = luceneQueryResultData
    }

}
}
