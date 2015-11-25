package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 代码数值情报
 * 
 * 代码数值情报
 * 
 * @author supermap
 */
public class SurveyData extends BaseData {

    /**  信息查询结果Header */
    private var _resultInfoHeaderList : Array;

    /**  信息查询结果详情List */
    private var _resultInfoDetailList : Array;

    /**  Tab类型 */
    private var _detailType : String;

    /**  Label */
    private var _Label : String;

    /** 
     *  信息查询结果Header曉夞丅
     * 
     * @return 信息查询结果Header
     */
    public function get resultInfoHeaderList():Array {
        return this._resultInfoHeaderList;
    }

    /** 
     *  信息查询结果Header
     * 
     * @param resultInfoHeaderList 信息查询结果Header
     */
    public function set resultInfoHeaderList(resultInfoHeaderList : Array):void {
        this._resultInfoHeaderList = resultInfoHeaderList
    }

    /** 
     *  信息查询结果详情List曉夞丅
     * 
     * @return 信息查询结果详情List
     */
    public function get resultInfoDetailList():Array {
        return this._resultInfoDetailList;
    }

    /** 
     *  信息查询结果详情List
     * 
     * @param resultInfoDetailList 信息查询结果详情List
     */
    public function set resultInfoDetailList(resultInfoDetailList : Array):void {
        this._resultInfoDetailList = resultInfoDetailList
    }

    /** 
     *  Tab类型曉夞丅
     * 
     * @return Tab类型
     */
    public function get detailType():String {
        return this._detailType;
    }

    /** 
     *  Tab类型
     * 
     * @param detailType Tab类型
     */
    public function set detailType(detailType : String):void {
        this._detailType = detailType
    }

    /** 
     *  Label曉夞丅
     * 
     * @return Label
     */
    public function get Label():String {
        return this._Label;
    }

    /** 
     *  Label
     * 
     * @param Label Label
     */
    public function set Label(Label : String):void {
        this._Label = Label
    }

}
}
