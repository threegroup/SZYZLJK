package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 得到sequencResponsetData
 * 
 * 得到sequencResponsetData
 * 
 * @author supermap
 */
public class GetSequenceReponseData extends ResponseData {

    /**  sequenceID */
    private var _sequenceId : String;

    /** 
     *  sequenceID曉夞丅
     * 
     * @return sequenceID
     */
    public function get sequenceId():String {
        return this._sequenceId;
    }

    /** 
     *  sequenceID
     * 
     * @param sequenceId sequenceID
     */
    public function set sequenceId(sequenceId : String):void {
        this._sequenceId = sequenceId
    }

}
}
