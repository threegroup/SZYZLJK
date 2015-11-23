package com.supermap.wegis.transData.userSpace
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 返回用户空间信息ResponseData
 * 
 * 返回用户空间信息ResponseData
 * 
 * @author supermap
 */
public class UserSpaceResponseData extends ResponseData {

    /**  用户空间列表 */
    private var _userSpaceDataList : Array;

    /**  具体申请信息 */
    private var _applyInfo : Array;

    /** 
     *  用户空间列表曉夞丅
     * 
     * @return 用户空间列表
     */
    public function get userSpaceDataList():Array {
        return this._userSpaceDataList;
    }

    /** 
     *  用户空间列表
     * 
     * @param userSpaceDataList 用户空间列表
     */
    public function set userSpaceDataList(userSpaceDataList : Array):void {
        this._userSpaceDataList = userSpaceDataList
    }

    /** 
     *  具体申请信息曉夞丅
     * 
     * @return 具体申请信息
     */
    public function get applyInfo():Array {
        return this._applyInfo;
    }

    /** 
     *  具体申请信息
     * 
     * @param applyInfo 具体申请信息
     */
    public function set applyInfo(applyInfo : Array):void {
        this._applyInfo = applyInfo
    }

}
}
