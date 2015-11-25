package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.search.DocInfoListData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class GetDocInfoListRequestData extends RequestData {

    /**  资料列表data */
    private var _docInfoListData : DocInfoListData;

    /**  开始时间 */
    private var _startTime : String;

    /**  终止时间 */
    private var _endTime : String;

    /** 
     *  资料列表data曉夞丅
     * 
     * @return 资料列表data
     */
    public function get docInfoListData():DocInfoListData {
        return this._docInfoListData;
    }

    /** 
     *  资料列表data
     * 
     * @param docInfoListData 资料列表data
     */
    public function set docInfoListData(docInfoListData : DocInfoListData):void {
        this._docInfoListData = docInfoListData
    }

    /** 
     *  开始时间曉夞丅
     * 
     * @return 开始时间
     */
    public function get startTime():String {
        return this._startTime;
    }

    /** 
     *  开始时间
     * 
     * @param startTime 开始时间
     */
    public function set startTime(startTime : String):void {
        this._startTime = startTime
    }

    /** 
     *  终止时间曉夞丅
     * 
     * @return 终止时间
     */
    public function get endTime():String {
        return this._endTime;
    }

    /** 
     *  终止时间
     * 
     * @param endTime 终止时间
     */
    public function set endTime(endTime : String):void {
        this._endTime = endTime
    }

}
}
