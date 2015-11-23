package com.supermap.wegis.lucene.utility
{
import com.supermap.wegis.services.data.BaseData;
import int;

/** 
 * 返回全文检索详细信息
 * 
 * 返回全文检索详细信息
 * 
 * @author supermap
 */
public class LuceneQueryOutputData extends BaseData {

    /**  全国结果列表 */
    private var _nationalList : Array;

    /**  分组件数 */
    private var _groupList : Array;

    /**  总件数 */
    private var _totalCount : int;

    /**  详细结果列表 */
    private var _detailList : Array;

    /**  数据导出URL */
    private var _returnUrl : String;

    /**  导出文件名字 */
    private var _fileName : String;

    /** 
     *  全国结果列表曉夞丅
     * 
     * @return 全国结果列表
     */
    public function get nationalList():Array {
        return this._nationalList;
    }

    /** 
     *  全国结果列表
     * 
     * @param nationalList 全国结果列表
     */
    public function set nationalList(nationalList : Array):void {
        this._nationalList = nationalList
    }

    /** 
     *  分组件数曉夞丅
     * 
     * @return 分组件数
     */
    public function get groupList():Array {
        return this._groupList;
    }

    /** 
     *  分组件数
     * 
     * @param groupList 分组件数
     */
    public function set groupList(groupList : Array):void {
        this._groupList = groupList
    }

    /** 
     *  总件数曉夞丅
     * 
     * @return 总件数
     */
    public function get totalCount():int {
        return this._totalCount;
    }

    /** 
     *  总件数
     * 
     * @param totalCount 总件数
     */
    public function set totalCount(totalCount : int):void {
        this._totalCount = totalCount
    }

    /** 
     *  详细结果列表曉夞丅
     * 
     * @return 详细结果列表
     */
    public function get detailList():Array {
        return this._detailList;
    }

    /** 
     *  详细结果列表
     * 
     * @param detailList 详细结果列表
     */
    public function set detailList(detailList : Array):void {
        this._detailList = detailList
    }

    /** 
     *  数据导出URL曉夞丅
     * 
     * @return 数据导出URL
     */
    public function get returnUrl():String {
        return this._returnUrl;
    }

    /** 
     *  数据导出URL
     * 
     * @param returnUrl 数据导出URL
     */
    public function set returnUrl(returnUrl : String):void {
        this._returnUrl = returnUrl
    }

    /** 
     *  导出文件名字曉夞丅
     * 
     * @return 导出文件名字
     */
    public function get fileName():String {
        return this._fileName;
    }

    /** 
     *  导出文件名字
     * 
     * @param fileName 导出文件名字
     */
    public function set fileName(fileName : String):void {
        this._fileName = fileName
    }

}
}
