package com.supermap.wegis.transData.smp
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 代码名称表TransData
 * 
 * 代码名称表TransData
 * 
 * @author supermap
 */
public class SmpCodeNamesResponseData extends ResponseData {

    /**  code信息 */
    private var _smpCodeNamesList : Array;

    /** 
     *  code信息曉夞丅
     * 
     * @return code信息
     */
    public function get smpCodeNamesList():Array {
        return this._smpCodeNamesList;
    }

    /** 
     *  code信息
     * 
     * @param smpCodeNamesList code信息
     */
    public function set smpCodeNamesList(smpCodeNamesList : Array):void {
        this._smpCodeNamesList = smpCodeNamesList
    }

}
}
