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
public class GetAreaCodeByPointResponseData extends ResponseData {

    /**  地图区域信息 */
    private var _nodeList : Array;

    /**  区域类型 */
    private var _areaType : String;

    /** 
     *  地图区域信息曉夞丅
     * 
     * @return 地图区域信息
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  地图区域信息
     * 
     * @param nodeList 地图区域信息
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  区域类型曉夞丅
     * 
     * @return 区域类型
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型
     * 
     * @param areaType 区域类型
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

}
}
