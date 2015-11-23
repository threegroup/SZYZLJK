package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 获取该点所在的区域Requestdata
 * 
 * 获取该点所在的区域Requestdata
 * 
 * @author supermap
 */
public class GetAreaCodeByPointRequestData extends RequestData {

    /**  区域类型 */
    private var _areaType : String;

    /**  XY坐标,逗号隔开 */
    private var _pointXY : String;

    /**  比例尺级别 */
    private var _scaleLevel : String;

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

    /** 
     *  XY坐标,逗号隔开曉夞丅
     * 
     * @return XY坐标,逗号隔开
     */
    public function get pointXY():String {
        return this._pointXY;
    }

    /** 
     *  XY坐标,逗号隔开
     * 
     * @param pointXY XY坐标,逗号隔开
     */
    public function set pointXY(pointXY : String):void {
        this._pointXY = pointXY
    }

    /** 
     *  比例尺级别曉夞丅
     * 
     * @return 比例尺级别
     */
    public function get scaleLevel():String {
        return this._scaleLevel;
    }

    /** 
     *  比例尺级别
     * 
     * @param scaleLevel 比例尺级别
     */
    public function set scaleLevel(scaleLevel : String):void {
        this._scaleLevel = scaleLevel
    }

}
}
