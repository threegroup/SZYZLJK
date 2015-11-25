package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 得到sequencRequestData
 * 
 * sequencRequestData
 * 
 * @author supermap
 */
public class GetSequenceRequestData extends RequestData {

    /**  sequence名称 */
    private var _sequenceName : String;

    /** 
     *  sequence名称曉夞丅
     * 
     * @return sequence名称
     */
    public function get sequenceName():String {
        return this._sequenceName;
    }

    /** 
     *  sequence名称
     * 
     * @param sequenceName sequence名称
     */
    public function set sequenceName(sequenceName : String):void {
        this._sequenceName = sequenceName
    }

}
}
