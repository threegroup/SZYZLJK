package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * UserDeptRelResponseData
 * 
 * UserDeptRelResponseData
 * 
 * @author supermap
 */
public class UserDeptRelResponseData extends ResponseData {

    /**  用户部门关系列表 */
    private var _userDeptRelDataList : Array;

    /** 
     *  用户部门关系列表曉夞丅
     * 
     * @return 用户部门关系列表
     */
    public function get userDeptRelDataList():Array {
        return this._userDeptRelDataList;
    }

    /** 
     *  用户部门关系列表
     * 
     * @param userDeptRelDataList 用户部门关系列表
     */
    public function set userDeptRelDataList(userDeptRelDataList : Array):void {
        this._userDeptRelDataList = userDeptRelDataList
    }

}
}
