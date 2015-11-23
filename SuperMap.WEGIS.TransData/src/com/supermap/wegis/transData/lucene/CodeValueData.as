package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.BaseData;
import Boolean;

/** 
 * 代码数值情报
 * 
 * 代码数值情报
 * 
 * @author supermap
 */
public class CodeValueData extends BaseData {

    /**  code */
    private var _code : String;

    /**  显示值 */
    private var _showValue : String;

    /**  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型 */
    private var _queryType : String;

    /**  是否选中 */
    private var _isDefault : Boolean;

    /**  雨量指标 */
    private var _quota : String;

    /**  区域CODE:点击件数时使用 */
    private var _areaCode : String;

    /**  区域中心点X */
    private var _centerX : String;

    /**  区域中心点Y */
    private var _centerY : String;

    /**  区域Bounds */
    private var _mapBounds : String;

    /**  服务Id */
    private var _serviceId : String;

    /**  初期化添加服务列表 */
    private var _addServices : String;

    /** 
     *  code曉夞丅
     * 
     * @return code
     */
    public function get code():String {
        return this._code;
    }

    /** 
     *  code
     * 
     * @param code code
     */
    public function set code(code : String):void {
        this._code = code
    }

    /** 
     *  显示值曉夞丅
     * 
     * @return 显示值
     */
    public function get showValue():String {
        return this._showValue;
    }

    /** 
     *  显示值
     * 
     * @param showValue 显示值
     */
    public function set showValue(showValue : String):void {
        this._showValue = showValue
    }

    /** 
     *  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型曉夞丅
     * 
     * @return 查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     * 
     * @param queryType 查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  是否选中曉夞丅
     * 
     * @return 是否选中
     */
    public function get isDefault():Boolean {
        return this._isDefault;
    }

    /** 
     *  是否选中
     * 
     * @param isDefault 是否选中
     */
    public function set isDefault(isDefault : Boolean):void {
        this._isDefault = isDefault
    }

    /** 
     *  雨量指标曉夞丅
     * 
     * @return 雨量指标
     */
    public function get quota():String {
        return this._quota;
    }

    /** 
     *  雨量指标
     * 
     * @param quota 雨量指标
     */
    public function set quota(quota : String):void {
        this._quota = quota
    }

    /** 
     *  区域CODE:点击件数时使用曉夞丅
     * 
     * @return 区域CODE:点击件数时使用
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域CODE:点击件数时使用
     * 
     * @param areaCode 区域CODE:点击件数时使用
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  区域中心点X曉夞丅
     * 
     * @return 区域中心点X
     */
    public function get centerX():String {
        return this._centerX;
    }

    /** 
     *  区域中心点X
     * 
     * @param centerX 区域中心点X
     */
    public function set centerX(centerX : String):void {
        this._centerX = centerX
    }

    /** 
     *  区域中心点Y曉夞丅
     * 
     * @return 区域中心点Y
     */
    public function get centerY():String {
        return this._centerY;
    }

    /** 
     *  区域中心点Y
     * 
     * @param centerY 区域中心点Y
     */
    public function set centerY(centerY : String):void {
        this._centerY = centerY
    }

    /** 
     *  区域Bounds曉夞丅
     * 
     * @return 区域Bounds
     */
    public function get mapBounds():String {
        return this._mapBounds;
    }

    /** 
     *  区域Bounds
     * 
     * @param mapBounds 区域Bounds
     */
    public function set mapBounds(mapBounds : String):void {
        this._mapBounds = mapBounds
    }

    /** 
     *  服务Id曉夞丅
     * 
     * @return 服务Id
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务Id
     * 
     * @param serviceId 服务Id
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  初期化添加服务列表曉夞丅
     * 
     * @return 初期化添加服务列表
     */
    public function get addServices():String {
        return this._addServices;
    }

    /** 
     *  初期化添加服务列表
     * 
     * @param addServices 初期化添加服务列表
     */
    public function set addServices(addServices : String):void {
        this._addServices = addServices
    }

}
}
