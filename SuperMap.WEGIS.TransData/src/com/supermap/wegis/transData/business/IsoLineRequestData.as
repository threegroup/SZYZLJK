package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * IsoLineRequestData
 * 
 * 生成等值线参数Data
 * 
 * @author supermap
 */
public class IsoLineRequestData extends RequestData {

    /**  x坐标数组字符串(经度) */
    private var _pointsX : String;

    /**  y坐标数组字符串(纬度) */
    private var _pointsY : String;

    /**  z坐标数组字符串(高度) */
    private var _pointsZ : String;

    /**  属性值数组字符串 */
    private var _pointsP : String;

    /**  地理范围数组字符串(左,右,上,下) */
    private var _ranges : String;

    /**  无效值(默认是-9999) */
    private var _fNoValue : String;

    /**  分辨率（默认是1.0) */
    private var _dResolution : String;

    /**  等值线值的数组字符串 */
    private var _fValues : String;

    /**  平滑系数 */
    private var _fSmooth : String;

    /**  是否是等值面 */
    private var _isShade : String;

    /**  步长信息（最小值,最大值,步长值） */
    private var _stepInfo : String;

    /**  是否导出为shp文件 */
    private var _isExShp : String;

    /**  tiff文件全路径 */
    private var _tiffFilePath : String;

    /**  shp文件全路径 */
    private var _shpFilePath : String;

    /**  进行插值计算的参数 */
    private var _algorithmOptionsStr : String;

    /**  是否自定义步长 */
    private var _isStepAuto : String;

    /** 
     *  x坐标数组字符串(经度)曉夞丅
     * 
     * @return x坐标数组字符串(经度)
     */
    public function get pointsX():String {
        return this._pointsX;
    }

    /** 
     *  x坐标数组字符串(经度)
     * 
     * @param pointsX x坐标数组字符串(经度)
     */
    public function set pointsX(pointsX : String):void {
        this._pointsX = pointsX
    }

    /** 
     *  y坐标数组字符串(纬度)曉夞丅
     * 
     * @return y坐标数组字符串(纬度)
     */
    public function get pointsY():String {
        return this._pointsY;
    }

    /** 
     *  y坐标数组字符串(纬度)
     * 
     * @param pointsY y坐标数组字符串(纬度)
     */
    public function set pointsY(pointsY : String):void {
        this._pointsY = pointsY
    }

    /** 
     *  z坐标数组字符串(高度)曉夞丅
     * 
     * @return z坐标数组字符串(高度)
     */
    public function get pointsZ():String {
        return this._pointsZ;
    }

    /** 
     *  z坐标数组字符串(高度)
     * 
     * @param pointsZ z坐标数组字符串(高度)
     */
    public function set pointsZ(pointsZ : String):void {
        this._pointsZ = pointsZ
    }

    /** 
     *  属性值数组字符串曉夞丅
     * 
     * @return 属性值数组字符串
     */
    public function get pointsP():String {
        return this._pointsP;
    }

    /** 
     *  属性值数组字符串
     * 
     * @param pointsP 属性值数组字符串
     */
    public function set pointsP(pointsP : String):void {
        this._pointsP = pointsP
    }

    /** 
     *  地理范围数组字符串(左,右,上,下)曉夞丅
     * 
     * @return 地理范围数组字符串(左,右,上,下)
     */
    public function get ranges():String {
        return this._ranges;
    }

    /** 
     *  地理范围数组字符串(左,右,上,下)
     * 
     * @param ranges 地理范围数组字符串(左,右,上,下)
     */
    public function set ranges(ranges : String):void {
        this._ranges = ranges
    }

    /** 
     *  无效值(默认是-9999)曉夞丅
     * 
     * @return 无效值(默认是-9999)
     */
    public function get fNoValue():String {
        return this._fNoValue;
    }

    /** 
     *  无效值(默认是-9999)
     * 
     * @param fNoValue 无效值(默认是-9999)
     */
    public function set fNoValue(fNoValue : String):void {
        this._fNoValue = fNoValue
    }

    /** 
     *  分辨率（默认是1.0)曉夞丅
     * 
     * @return 分辨率（默认是1.0)
     */
    public function get dResolution():String {
        return this._dResolution;
    }

    /** 
     *  分辨率（默认是1.0)
     * 
     * @param dResolution 分辨率（默认是1.0)
     */
    public function set dResolution(dResolution : String):void {
        this._dResolution = dResolution
    }

    /** 
     *  等值线值的数组字符串曉夞丅
     * 
     * @return 等值线值的数组字符串
     */
    public function get fValues():String {
        return this._fValues;
    }

    /** 
     *  等值线值的数组字符串
     * 
     * @param fValues 等值线值的数组字符串
     */
    public function set fValues(fValues : String):void {
        this._fValues = fValues
    }

    /** 
     *  平滑系数曉夞丅
     * 
     * @return 平滑系数
     */
    public function get fSmooth():String {
        return this._fSmooth;
    }

    /** 
     *  平滑系数
     * 
     * @param fSmooth 平滑系数
     */
    public function set fSmooth(fSmooth : String):void {
        this._fSmooth = fSmooth
    }

    /** 
     *  是否是等值面曉夞丅
     * 
     * @return 是否是等值面
     */
    public function get isShade():String {
        return this._isShade;
    }

    /** 
     *  是否是等值面
     * 
     * @param isShade 是否是等值面
     */
    public function set isShade(isShade : String):void {
        this._isShade = isShade
    }

    /** 
     *  步长信息（最小值,最大值,步长值）曉夞丅
     * 
     * @return 步长信息（最小值,最大值,步长值）
     */
    public function get stepInfo():String {
        return this._stepInfo;
    }

    /** 
     *  步长信息（最小值,最大值,步长值）
     * 
     * @param stepInfo 步长信息（最小值,最大值,步长值）
     */
    public function set stepInfo(stepInfo : String):void {
        this._stepInfo = stepInfo
    }

    /** 
     *  是否导出为shp文件曉夞丅
     * 
     * @return 是否导出为shp文件
     */
    public function get isExShp():String {
        return this._isExShp;
    }

    /** 
     *  是否导出为shp文件
     * 
     * @param isExShp 是否导出为shp文件
     */
    public function set isExShp(isExShp : String):void {
        this._isExShp = isExShp
    }

    /** 
     *  tiff文件全路径曉夞丅
     * 
     * @return tiff文件全路径
     */
    public function get tiffFilePath():String {
        return this._tiffFilePath;
    }

    /** 
     *  tiff文件全路径
     * 
     * @param tiffFilePath tiff文件全路径
     */
    public function set tiffFilePath(tiffFilePath : String):void {
        this._tiffFilePath = tiffFilePath
    }

    /** 
     *  shp文件全路径曉夞丅
     * 
     * @return shp文件全路径
     */
    public function get shpFilePath():String {
        return this._shpFilePath;
    }

    /** 
     *  shp文件全路径
     * 
     * @param shpFilePath shp文件全路径
     */
    public function set shpFilePath(shpFilePath : String):void {
        this._shpFilePath = shpFilePath
    }

    /** 
     *  进行插值计算的参数曉夞丅
     * 
     * @return 进行插值计算的参数
     */
    public function get algorithmOptionsStr():String {
        return this._algorithmOptionsStr;
    }

    /** 
     *  进行插值计算的参数
     * 
     * @param algorithmOptionsStr 进行插值计算的参数
     */
    public function set algorithmOptionsStr(algorithmOptionsStr : String):void {
        this._algorithmOptionsStr = algorithmOptionsStr
    }

    /** 
     *  是否自定义步长曉夞丅
     * 
     * @return 是否自定义步长
     */
    public function get isStepAuto():String {
        return this._isStepAuto;
    }

    /** 
     *  是否自定义步长
     * 
     * @param isStepAuto 是否自定义步长
     */
    public function set isStepAuto(isStepAuto : String):void {
        this._isStepAuto = isStepAuto
    }

}
}
