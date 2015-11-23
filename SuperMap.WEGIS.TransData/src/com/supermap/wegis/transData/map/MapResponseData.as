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
public class MapResponseData extends ResponseData {

    /**  地图记录 */
    private var _mapList : Array;

    /**  分段值 */
    private var _scale : Array;

    /**  导出Url */
    private var _url : String;

    /**  返回添加成功的mapId */
    private var _mapId : String;

    /** 
     *  地图记录曉夞丅
     * 
     * @return 地图记录
     */
    public function get mapList():Array {
        return this._mapList;
    }

    /** 
     *  地图记录
     * 
     * @param mapList 地图记录
     */
    public function set mapList(mapList : Array):void {
        this._mapList = mapList
    }

    /** 
     *  分段值曉夞丅
     * 
     * @return 分段值
     */
    public function get scale():Array {
        return this._scale;
    }

    /** 
     *  分段值
     * 
     * @param scale 分段值
     */
    public function set scale(scale : Array):void {
        this._scale = scale
    }

    /** 
     *  导出Url曉夞丅
     * 
     * @return 导出Url
     */
    public function get url():String {
        return this._url;
    }

    /** 
     *  导出Url
     * 
     * @param url 导出Url
     */
    public function set url(url : String):void {
        this._url = url
    }

    /** 
     *  返回添加成功的mapId曉夞丅
     * 
     * @return 返回添加成功的mapId
     */
    public function get mapId():String {
        return this._mapId;
    }

    /** 
     *  返回添加成功的mapId
     * 
     * @param mapId 返回添加成功的mapId
     */
    public function set mapId(mapId : String):void {
        this._mapId = mapId
    }

}
}
