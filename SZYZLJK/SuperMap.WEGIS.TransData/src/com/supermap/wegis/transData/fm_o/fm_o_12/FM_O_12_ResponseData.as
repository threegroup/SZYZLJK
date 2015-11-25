package com.supermap.wegis.transData.fm_o.fm_o_12
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 查询ResponseData
 * 
 * 查询ResponseData
 * 
 * @author supermap
 */
public class FM_O_12_ResponseData extends ResponseData {

    /**  信息 */
    private var _result : Array;

    /** 
     *  信息曉夞丅
     * 
     * @return 信息
     */
    public function get result():Array {
        return this._result;
    }

    /** 
     *  信息
     * 
     * @param result 信息
     */
    public function set result(result : Array):void {
        this._result = result
    }

}
}
