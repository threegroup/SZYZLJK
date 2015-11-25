package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 统计信息Data
 * 
 * 区域选择Data
 * 
 * @author supermap
 */
public class QueryStatisticData extends BaseData {

    /**  查询类型:0:全部，1：区域,2：件数,3：详细信息 */
    private var _queryType : String;

    /**  区域类型:1：行政，2：流域，3：水资源分区 */
    private var _areaType : String;

    /**  区域级别:行政时：1.全国，2：省，3：市，4：县 */
    private var _areaLevel : String;

    /**  区域编码 */
    private var _areaCode : String;

    /**  要素中分类 */
    private var _middleType : String;

    /** 
     *  查询类型:0:全部，1：区域,2：件数,3：详细信息曉夞丅
     * 
     * @return 查询类型:0:全部，1：区域,2：件数,3：详细信息
     */
    public function get queryType():String {
        return this._queryType;
    }

    /** 
     *  查询类型:0:全部，1：区域,2：件数,3：详细信息
     * 
     * @param queryType 查询类型:0:全部，1：区域,2：件数,3：详细信息
     */
    public function set queryType(queryType : String):void {
        this._queryType = queryType
    }

    /** 
     *  区域类型:1：行政，2：流域，3：水资源分区曉夞丅
     * 
     * @return 区域类型:1：行政，2：流域，3：水资源分区
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型:1：行政，2：流域，3：水资源分区
     * 
     * @param areaType 区域类型:1：行政，2：流域，3：水资源分区
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  区域级别:行政时：1.全国，2：省，3：市，4：县曉夞丅
     * 
     * @return 区域级别:行政时：1.全国，2：省，3：市，4：县
     */
    public function get areaLevel():String {
        return this._areaLevel;
    }

    /** 
     *  区域级别:行政时：1.全国，2：省，3：市，4：县
     * 
     * @param areaLevel 区域级别:行政时：1.全国，2：省，3：市，4：县
     */
    public function set areaLevel(areaLevel : String):void {
        this._areaLevel = areaLevel
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

}
}
