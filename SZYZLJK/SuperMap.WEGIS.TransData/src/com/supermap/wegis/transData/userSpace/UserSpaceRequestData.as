package com.supermap.wegis.transData.userSpace
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.userSpace.UserSpaceData;

/** 
 * 用户空间信息Data
 * 
 * 用户空间信息Data
 * 
 * @author supermap
 */
public class UserSpaceRequestData extends RequestData {

    /**  用户空间信息 */
    private var _userSpaceInfo : UserSpaceData;

    /** 
     *  用户空间信息曉夞丅
     * 
     * @return 用户空间信息
     */
    public function get userSpaceInfo():UserSpaceData {
        return this._userSpaceInfo;
    }

    /** 
     *  用户空间信息
     * 
     * @param userSpaceInfo 用户空间信息
     */
    public function set userSpaceInfo(userSpaceInfo : UserSpaceData):void {
        this._userSpaceInfo = userSpaceInfo
    }

}
}
