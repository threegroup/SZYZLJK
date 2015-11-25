package com.supermap.wegis.transData.lucene
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 雨量检索的请求类 RequestData
 * 
 * RequestData
 * 
 * @author supermap
 */
public class EmergencyRequestData extends RequestData {

    /**  方案类型:RAIN:雨量，EARTHQUAKE：地震 */
    private var _importsType : String;

    /**  方案ID */
    private var _sharpId : String;

    /**  雨量指标 */
    private var _quota : String;

    /**  查询类型:0：取得列表，1:初期化，2：指标， 3：区域，4：件数，5：详细信息类型 */
    private var _queryType : String;

    /**  区域编码 */
    private var _areaCode : String;

    /**  要素中分类 */
    private var _middleType : String;

    /**  要素小分类 */
    private var _subType : String;

    /**  选中记录ID:查询二级索引时设定 */
    private var _objectCode : String;

    /**  服务类型:服务类型传2 */
    private var _serviceType : String;

    /** 
     *  方案类型:RAIN:雨量，EARTHQUAKE：地震曉夞丅
     * 
     * @return 方案类型:RAIN:雨量，EARTHQUAKE：地震
     */
    public function get importsType():String {
        return this._importsType;
    }

    /** 
     *  方案类型:RAIN:雨量，EARTHQUAKE：地震
     * 
     * @param importsType 方案类型:RAIN:雨量，EARTHQUAKE：地震
     */
    public function set importsType(importsType : String):void {
        this._importsType = importsType
    }

    /** 
     *  方案ID曉夞丅
     * 
     * @return 方案ID
     */
    public function get sharpId():String {
        return this._sharpId;
    }

    /** 
     *  方案ID
     * 
     * @param sharpId 方案ID
     */
    public function set sharpId(sharpId : String):void {
        this._sharpId = sharpId
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
     *  区域编码曉夞丅
     * 
     * @return 区域编码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域编码
     * 
     * @param areaCode 区域编码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  要素中分类曉夞丅
     * 
     * @return 要素中分类
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  要素中分类
     * 
     * @param middleType 要素中分类
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

    /** 
     *  要素小分类曉夞丅
     * 
     * @return 要素小分类
     */
    public function get subType():String {
        return this._subType;
    }

    /** 
     *  要素小分类
     * 
     * @param subType 要素小分类
     */
    public function set subType(subType : String):void {
        this._subType = subType
    }

    /** 
     *  选中记录ID:查询二级索引时设定曉夞丅
     * 
     * @return 选中记录ID:查询二级索引时设定
     */
    public function get objectCode():String {
        return this._objectCode;
    }

    /** 
     *  选中记录ID:查询二级索引时设定
     * 
     * @param objectCode 选中记录ID:查询二级索引时设定
     */
    public function set objectCode(objectCode : String):void {
        this._objectCode = objectCode
    }

    /** 
     *  服务类型:服务类型传2曉夞丅
     * 
     * @return 服务类型:服务类型传2
     */
    public function get serviceType():String {
        return this._serviceType;
    }

    /** 
     *  服务类型:服务类型传2
     * 
     * @param serviceType 服务类型:服务类型传2
     */
    public function set serviceType(serviceType : String):void {
        this._serviceType = serviceType
    }

}
}
