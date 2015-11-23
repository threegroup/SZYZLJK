package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 返回用户所需信息ResponseData
 * 
 * 返回用户所需信息ResponseData
 * 
 * @author supermap
 */
public class UserInitResponseData extends ResponseData {

    /**  用户部门信息 */
    private var _userDepartmentDataList : Array;

    /** 
     *  用户部门信息曉夞丅
     * 
     * @return 用户部门信息
     */
    public function get userDepartmentDataList():Array {
        return this._userDepartmentDataList;
    }

    /** 
     *  用户部门信息
     * 
     * @param userDepartmentDataList 用户部门信息
     */
    public function set userDepartmentDataList(userDepartmentDataList : Array):void {
        this._userDepartmentDataList = userDepartmentDataList
    }

}
}
