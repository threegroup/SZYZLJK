package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * FunctionResponseData
 * 
 * FunctionResponseData
 * 
 * @author supermap
 */
public class FunctionResponseData extends ResponseData {

    /**  功能信息 */
    private var _functionDataList : Array;

    /** 
     *  功能信息曉夞丅
     * 
     * @return 功能信息
     */
    public function get functionDataList():Array {
        return this._functionDataList;
    }

    /** 
     *  功能信息
     * 
     * @param functionDataList 功能信息
     */
    public function set functionDataList(functionDataList : Array):void {
        this._functionDataList = functionDataList
    }

}
}
