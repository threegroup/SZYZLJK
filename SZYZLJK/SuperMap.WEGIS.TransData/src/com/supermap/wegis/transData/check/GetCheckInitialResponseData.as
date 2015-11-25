package com.supermap.wegis.transData.check
{
import com.supermap.wegis.services.data.ResponseData;
import com.supermap.wegis.transData.application.CheckResponseData;

/** 
 * GetCheckInitialResponseData
 * 
 * CheckResponseData
 * 
 * @author supermap
 */
public class GetCheckInitialResponseData extends ResponseData {

    /**  审核信息 */
    private var _checkData : CheckResponseData;

    /**  字段信息 */
    private var _fieldDataList : Array;

    /** 
     *  审核信息曉夞丅
     * 
     * @return 审核信息
     */
    public function get checkData():CheckResponseData {
        return this._checkData;
    }

    /** 
     *  审核信息
     * 
     * @param checkData 审核信息
     */
    public function set checkData(checkData : CheckResponseData):void {
        this._checkData = checkData
    }

    /** 
     *  字段信息曉夞丅
     * 
     * @return 字段信息
     */
    public function get fieldDataList():Array {
        return this._fieldDataList;
    }

    /** 
     *  字段信息
     * 
     * @param fieldDataList 字段信息
     */
    public function set fieldDataList(fieldDataList : Array):void {
        this._fieldDataList = fieldDataList
    }

}
}
