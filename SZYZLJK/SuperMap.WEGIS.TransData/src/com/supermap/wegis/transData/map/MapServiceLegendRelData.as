package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 服务图例信息Data
 * 
 * 服务图例信息Data
 * 
 * @author supermap
 */
public class MapServiceLegendRelData extends BaseData {

    /**  服务ID */
    private var _serviceId : String;

    /**  图标符号ID */
    private var _legendId : String;

    /**  最小比例尺 */
    private var _minScale : String;

    /**  最大比例尺 */
    private var _maxScale : String;

    /**  比例尺 */
    private var _scale : String;

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  图标符号ID曉夞丅
     * 
     * @return 图标符号ID
     */
    public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  图标符号ID
     * 
     * @param legendId 图标符号ID
     */
    public function set legendId(legendId : String):void {
        this._legendId = legendId
    }

    /** 
     *  最小比例尺曉夞丅
     * 
     * @return 最小比例尺
     */
    public function get minScale():String {
        return this._minScale;
    }

    /** 
     *  最小比例尺
     * 
     * @param minScale 最小比例尺
     */
    public function set minScale(minScale : String):void {
        this._minScale = minScale
    }

    /** 
     *  最大比例尺曉夞丅
     * 
     * @return 最大比例尺
     */
    public function get maxScale():String {
        return this._maxScale;
    }

    /** 
     *  最大比例尺
     * 
     * @param maxScale 最大比例尺
     */
    public function set maxScale(maxScale : String):void {
        this._maxScale = maxScale
    }

    /** 
     *  比例尺曉夞丅
     * 
     * @return 比例尺
     */
    public function get scale():String {
        return this._scale;
    }

    /** 
     *  比例尺
     * 
     * @param scale 比例尺
     */
    public function set scale(scale : String):void {
        this._scale = scale
    }

}
}
