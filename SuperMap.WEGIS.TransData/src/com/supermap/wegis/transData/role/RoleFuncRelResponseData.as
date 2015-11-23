package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * RoleFuncRelResponseData
 * 
 * RoleFuncRelResponseData
 * 
 * @author supermap
 */
public class RoleFuncRelResponseData extends ResponseData {

    /**  功能信息 */
    private var _roleFuncRelDataList : Array;

    /** 
     *  功能信息曉夞丅
     * 
     * @return 功能信息
     */
    public function get roleFuncRelDataList():Array {
        return this._roleFuncRelDataList;
    }

    /** 
     *  功能信息
     * 
     * @param roleFuncRelDataList 功能信息
     */
    public function set roleFuncRelDataList(roleFuncRelDataList : Array):void {
        this._roleFuncRelDataList = roleFuncRelDataList
    }

}
}
