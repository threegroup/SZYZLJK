package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * InfoData
 * 
 * InfoData
 * 
 * @author supermap
 */
public class GetServletDataToExcelInfoData extends BaseData {

    /**  工程 */
    private var _caption : String;

    /**  总库容(万立方米) */
    private var _subCaption : String;

    /**  工程作用 */
    private var _xAxisName : String;

    /**  标题 */
    private var _title : Array;

    /**  数据列表 */
    private var _items : Array;

    /** 
     *  工程曉夞丅
     * 
     * @return 工程
     */
    public function get caption():String {
        return this._caption;
    }

    /** 
     *  工程
     * 
     * @param caption 工程
     */
    public function set caption(caption : String):void {
        this._caption = caption
    }

    /** 
     *  总库容(万立方米)曉夞丅
     * 
     * @return 总库容(万立方米)
     */
    public function get subCaption():String {
        return this._subCaption;
    }

    /** 
     *  总库容(万立方米)
     * 
     * @param subCaption 总库容(万立方米)
     */
    public function set subCaption(subCaption : String):void {
        this._subCaption = subCaption
    }

    /** 
     *  工程作用曉夞丅
     * 
     * @return 工程作用
     */
    public function get xAxisName():String {
        return this._xAxisName;
    }

    /** 
     *  工程作用
     * 
     * @param xAxisName 工程作用
     */
    public function set xAxisName(xAxisName : String):void {
        this._xAxisName = xAxisName
    }

    /** 
     *  标题曉夞丅
     * 
     * @return 标题
     */
    public function get title():Array {
        return this._title;
    }

    /** 
     *  标题
     * 
     * @param title 标题
     */
    public function set title(title : Array):void {
        this._title = title
    }

    /** 
     *  数据列表曉夞丅
     * 
     * @return 数据列表
     */
    public function get items():Array {
        return this._items;
    }

    /** 
     *  数据列表
     * 
     * @param items 数据列表
     */
    public function set items(items : Array):void {
        this._items = items
    }

}
}
