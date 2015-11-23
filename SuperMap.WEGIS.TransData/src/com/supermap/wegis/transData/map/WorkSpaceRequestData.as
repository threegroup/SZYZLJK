package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.WorkSpaceInfoData;

/** 
 * 图例记录RequestData
 * 
 * 图例记录RequestData
 * 
 * @author supermap
 */
public class WorkSpaceRequestData extends RequestData {

    /**  工作空间信息 */
    private var _workspaceInfo : WorkSpaceInfoData;

    /** 
     *  工作空间信息曉夞丅
     * 
     * @return 工作空间信息
     */
    public function get workspaceInfo():WorkSpaceInfoData {
        return this._workspaceInfo;
    }

    /** 
     *  工作空间信息
     * 
     * @param workspaceInfo 工作空间信息
     */
    public function set workspaceInfo(workspaceInfo : WorkSpaceInfoData):void {
        this._workspaceInfo = workspaceInfo
    }

}
}
