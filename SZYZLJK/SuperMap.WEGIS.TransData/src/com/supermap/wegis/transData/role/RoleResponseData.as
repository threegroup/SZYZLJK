package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 角色信息ResponseData
 * 
 * 角色信息ResponseData
 * 
 * @author supermap
 */
public class RoleResponseData extends ResponseData {

    /**  角色信息 */
    private var _roleDataList : Array;

    /** 
     *  角色信息曉夞丅
     * 
     * @return 角色信息
     */
    public function get roleDataList():Array {
        return this._roleDataList;
    }

    /** 
     *  角色信息
     * 
     * @param roleDataList 角色信息
     */
    public function set roleDataList(roleDataList : Array):void {
        this._roleDataList = roleDataList
    }

}
}
