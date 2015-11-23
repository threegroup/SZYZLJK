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
public class UserResponseData extends ResponseData {

    /**  用户列表 */
    private var _userDataList : Array;

    /** 
     *  用户列表曉夞丅
     * 
     * @return 用户列表
     */
    public function get userDataList():Array {
        return this._userDataList;
    }

    /** 
     *  用户列表
     * 
     * @param userDataList 用户列表
     */
    public function set userDataList(userDataList : Array):void {
        this._userDataList = userDataList
    }

}
}
