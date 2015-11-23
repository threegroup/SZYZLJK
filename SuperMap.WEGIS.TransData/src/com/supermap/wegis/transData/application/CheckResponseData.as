package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * CheckResponseData
 * 
 * CheckResponseData
 * 
 * @author supermap
 */
public class CheckResponseData extends ResponseData {

    /**  审核信息 */
    private var _checkListData : Array;

    /** 
     *  审核信息曉夞丅
     * 
     * @return 审核信息
     */
    public function get checkListData():Array {
        return this._checkListData;
    }

    /** 
     *  审核信息
     * 
     * @param checkListData 审核信息
     */
    public function set checkListData(checkListData : Array):void {
        this._checkListData = checkListData
    }

}
}
