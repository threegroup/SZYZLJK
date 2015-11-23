package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.BaseData;
import int;

/** 
 * 新闻目录信息Data
 * 
 * 新闻目录信息Data
 * 
 * @author supermap
 */
public class NewsCatalogData extends BaseData {

    /**  类型ID */
    private var _cataId : String;

    /**  类型名称 */
    private var _cataName : String;

    /**  类型数目 */
    private var _cataNums : String;

    /**  消息类型 */
    private var _cataType : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  增删Flag */
    private var _flag : String;

    /**  删除条数 */
    private var _length : int;

    /** 
     *  类型ID曉夞丅
     * 
     * @return 类型ID
     */
    public function get cataId():String {
        return this._cataId;
    }

    /** 
     *  类型ID
     * 
     * @param cataId 类型ID
     */
    public function set cataId(cataId : String):void {
        this._cataId = cataId
    }

    /** 
     *  类型名称曉夞丅
     * 
     * @return 类型名称
     */
    public function get cataName():String {
        return this._cataName;
    }

    /** 
     *  类型名称
     * 
     * @param cataName 类型名称
     */
    public function set cataName(cataName : String):void {
        this._cataName = cataName
    }

    /** 
     *  类型数目曉夞丅
     * 
     * @return 类型数目
     */
    public function get cataNums():String {
        return this._cataNums;
    }

    /** 
     *  类型数目
     * 
     * @param cataNums 类型数目
     */
    public function set cataNums(cataNums : String):void {
        this._cataNums = cataNums
    }

    /** 
     *  消息类型曉夞丅
     * 
     * @return 消息类型
     */
    public function get cataType():String {
        return this._cataType;
    }

    /** 
     *  消息类型
     * 
     * @param cataType 消息类型
     */
    public function set cataType(cataType : String):void {
        this._cataType = cataType
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序索引
     * 
     * @param orderIndex 排序索引
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

    /** 
     *  增删Flag曉夞丅
     * 
     * @return 增删Flag
     */
    public function get flag():String {
        return this._flag;
    }

    /** 
     *  增删Flag
     * 
     * @param flag 增删Flag
     */
    public function set flag(flag : String):void {
        this._flag = flag
    }

    /** 
     *  删除条数曉夞丅
     * 
     * @return 删除条数
     */
    public function get length():int {
        return this._length;
    }

    /** 
     *  删除条数
     * 
     * @param length 删除条数
     */
    public function set length(length : int):void {
        this._length = length
    }

}
}
