package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * MapMarkResponseData
 * 
 *  MapMarkResponseData
 * 
 * @author supermap
 */
public class MapMarkResponseData extends ResponseData {

    /**  标注记录 */
    private var _nodeList : Array;

    /**  标注类型ID */
    private var _markTypeId : String;

    /** 
     *  标注记录曉夞丅
     * 
     * @return 标注记录
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  标注记录
     * 
     * @param nodeList 标注记录
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  标注类型ID曉夞丅
     * 
     * @return 标注类型ID
     */
    public function get markTypeId():String {
        return this._markTypeId;
    }

    /** 
     *  标注类型ID
     * 
     * @param markTypeId 标注类型ID
     */
    public function set markTypeId(markTypeId : String):void {
        this._markTypeId = markTypeId
    }

}
}
