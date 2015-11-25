package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.role.RoleFuncRelInfoData;

/** 
 * RoleFuncRelRequestData
 * 
 * RoleFuncRelRequestData
 * 
 * @author supermap
 */
public class RoleFuncRelRequestData extends RequestData {

    /**  功能角色信息 */
    private var _roleFuncRelInfoData : RoleFuncRelInfoData;

    /** 
     *  功能角色信息曉夞丅
     * 
     * @return 功能角色信息
     */
    public function get roleFuncRelInfoData():RoleFuncRelInfoData {
        return this._roleFuncRelInfoData;
    }

    /** 
     *  功能角色信息
     * 
     * @param roleFuncRelInfoData 功能角色信息
     */
    public function set roleFuncRelInfoData(roleFuncRelInfoData : RoleFuncRelInfoData):void {
        this._roleFuncRelInfoData = roleFuncRelInfoData
    }

}
}
