package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class WorkSpaceResponseData extends ResponseData {

    /**  工作空间记录 */
    private var _workspaceList : Array;

    /** 
     *  工作空间记录曉夞丅
     * 
     * @return 工作空间记录
     */
    public function get workspaceList():Array {
        return this._workspaceList;
    }

    /** 
     *  工作空间记录
     * 
     * @param workspaceList 工作空间记录
     */
    public function set workspaceList(workspaceList : Array):void {
        this._workspaceList = workspaceList
    }

}
}
