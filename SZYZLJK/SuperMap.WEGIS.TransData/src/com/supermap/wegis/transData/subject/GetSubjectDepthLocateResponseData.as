package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得基本主题查询结果
 * 
 * 取得基本主题查询结果
 * 
 * @author supermap
 */
public class GetSubjectDepthLocateResponseData extends ResponseData {

    /**  对象信息 */
    private var _datas : Array;

    /** 
     *  对象信息曉夞丅
     * 
     * @return 对象信息
     */
    public function get datas():Array {
        return this._datas;
    }

    /** 
     *  对象信息
     * 
     * @param datas 对象信息
     */
    public function set datas(datas : Array):void {
        this._datas = datas
    }

}
}
