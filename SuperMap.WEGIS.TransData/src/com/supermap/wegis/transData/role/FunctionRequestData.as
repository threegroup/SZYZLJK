package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.role.FunctionInfoData;

/** 
 * FunctionRequestData
 * 
 * FunctionRequestData
 * 
 * @author supermap
 */
public class FunctionRequestData extends RequestData {

    /**  功能信息 */
    private var _functionInfoData : FunctionInfoData;

    /** 
     *  功能信息曉夞丅
     * 
     * @return 功能信息
     */
    public function get functionInfoData():FunctionInfoData {
        return this._functionInfoData;
    }

    /** 
     *  功能信息
     * 
     * @param functionInfoData 功能信息
     */
    public function set functionInfoData(functionInfoData : FunctionInfoData):void {
        this._functionInfoData = functionInfoData
    }

}
}
