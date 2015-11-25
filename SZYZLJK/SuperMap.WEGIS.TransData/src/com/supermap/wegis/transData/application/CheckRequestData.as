package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.CheckInfoData;

/** 
 * CheckRequestData
 * 
 * CheckInfoData
 * 
 * @author supermap
 */
public class CheckRequestData extends RequestData {

    /**  审核信息 */
    private var _checkData : CheckInfoData;

    /** 
     *  审核信息曉夞丅
     * 
     * @return 审核信息
     */
    public function get checkData():CheckInfoData {
        return this._checkData;
    }

    /** 
     *  审核信息
     * 
     * @param checkData 审核信息
     */
    public function set checkData(checkData : CheckInfoData):void {
        this._checkData = checkData
    }

}
}
