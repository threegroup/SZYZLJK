package com.supermap.wegis.transData.smpSystem
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 系统访问key表TransData
 * 
 * 系统访问key表TransData
 * 
 * @author supermap
 */
public class SmpAccessKeyInfoData extends BaseData {

    /**  申请系统CODE */
    private var _applySysId : String;

    /**  访问KEY */
    private var _accessKey : String;

    /** 
     *  申请系统CODE曉夞丅
     * 
     * @return 申请系统CODE
     */
    public function get applySysId():String {
        return this._applySysId;
    }

    /** 
     *  申请系统CODE
     * 
     * @param applySysId 申请系统CODE
     */
    public function set applySysId(applySysId : String):void {
        this._applySysId = applySysId
    }

    /** 
     *  访问KEY曉夞丅
     * 
     * @return 访问KEY
     */
    public function get accessKey():String {
        return this._accessKey;
    }

    /** 
     *  访问KEY
     * 
     * @param accessKey 访问KEY
     */
    public function set accessKey(accessKey : String):void {
        this._accessKey = accessKey
    }

}
}
