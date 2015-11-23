package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.MarkTypeInfoData;

/** 
 * MarkTypeRequestData
 * 
 * MapTypeRequestData
 * 
 * @author supermap
 */
public class MarkTypeRequestData extends RequestData {

    /**  标注记录信息 */
    private var _markTypeInfoData : MarkTypeInfoData;

    /** 
     *  标注记录信息曉夞丅
     * 
     * @return 标注记录信息
     */
    public function get markTypeInfoData():MarkTypeInfoData {
        return this._markTypeInfoData;
    }

    /** 
     *  标注记录信息
     * 
     * @param markTypeInfoData 标注记录信息
     */
    public function set markTypeInfoData(markTypeInfoData : MarkTypeInfoData):void {
        this._markTypeInfoData = markTypeInfoData
    }

}
}
