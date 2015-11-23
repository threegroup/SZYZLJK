package com.supermap.wegis.transData.department
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * ResponseData
 * 
 *  ResponseData
 * 
 * @author supermap
 */
public class DepartmentResponseData extends ResponseData {

    /**  结点List */
    private var _nodeList : Array;

    /** 
     *  结点List曉夞丅
     * 
     * @return 结点List
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  结点List
     * 
     * @param nodeList 结点List
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

}
}
