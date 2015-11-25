package com.supermap.wegis.transData.fm_o.fm_o_12
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.fm_o.fm_o_12.domain.FM_O_12_CMTRS_QO;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class FM_O_12_CMTRS_RequestData extends RequestData {

    /**  信息 */
    private var _parameters : FM_O_12_CMTRS_QO;

    /** 
     *  信息曉夞丅
     * 
     * @return 信息
     */
    public function get parameters():FM_O_12_CMTRS_QO {
        return this._parameters;
    }

    /** 
     *  信息
     * 
     * @param parameters 信息
     */
    public function set parameters(parameters : FM_O_12_CMTRS_QO):void {
        this._parameters = parameters
    }

}
}
