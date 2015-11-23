package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得基本主题查询条件
 * 
 * 取得基本主题查询条件
 * 
 * @author supermap
 */
public class GetThemeConditionsResponseData extends ResponseData {

    /**  查询条件对象 */
    private var _nodeListSelect : Array;

    /** 
     *  查询条件对象曉夞丅
     * 
     * @return 查询条件对象
     */
    public function get nodeListSelect():Array {
        return this._nodeListSelect;
    }

    /** 
     *  查询条件对象
     * 
     * @param nodeListSelect 查询条件对象
     */
    public function set nodeListSelect(nodeListSelect : Array):void {
        this._nodeListSelect = nodeListSelect
    }

}
}
