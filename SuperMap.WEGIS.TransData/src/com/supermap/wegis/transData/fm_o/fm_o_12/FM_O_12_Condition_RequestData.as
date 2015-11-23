package com.supermap.wegis.transData.fm_o.fm_o_12
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.fm_o.fm_o_12.domain.FM_O_12_Condition_QO;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class FM_O_12_Condition_RequestData extends RequestData {

    /**  信息 */
    private var _fm_o_12_Condition_QO : FM_O_12_Condition_QO;

    /** 
     *  信息曉夞丅
     * 
     * @return 信息
     */
    public function get fm_o_12_Condition_QO():FM_O_12_Condition_QO {
        return this._fm_o_12_Condition_QO;
    }

    /** 
     *  信息
     * 
     * @param fm_o_12_Condition_QO 信息
     */
    public function set fm_o_12_Condition_QO(fm_o_12_Condition_QO : FM_O_12_Condition_QO):void {
        this._fm_o_12_Condition_QO = fm_o_12_Condition_QO
    }

}
}
