package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 取得基本主题查询结果
 * 
 * 取得基本主题查询结果
 * 
 * @author supermap
 */
public class GetSubjectDepthResponseData extends ResponseData {

    /**  数据明细信息 */
    private var _datas : Array;

    /**  图表配置信息 */
    private var _charts : Array;

    /**  表格配置信息 */
    private var _tables : Array;

    /**  专题图配置信息 */
    private var _maps : Array;

    /**  文本信息 */
    private var _texts : Array;

    /** 
     *  数据明细信息曉夞丅
     * 
     * @return 数据明细信息
     */
    public function get datas():Array {
        return this._datas;
    }

    /** 
     *  数据明细信息
     * 
     * @param datas 数据明细信息
     */
    public function set datas(datas : Array):void {
        this._datas = datas
    }

    /** 
     *  图表配置信息曉夞丅
     * 
     * @return 图表配置信息
     */
    public function get charts():Array {
        return this._charts;
    }

    /** 
     *  图表配置信息
     * 
     * @param charts 图表配置信息
     */
    public function set charts(charts : Array):void {
        this._charts = charts
    }

    /** 
     *  表格配置信息曉夞丅
     * 
     * @return 表格配置信息
     */
    public function get tables():Array {
        return this._tables;
    }

    /** 
     *  表格配置信息
     * 
     * @param tables 表格配置信息
     */
    public function set tables(tables : Array):void {
        this._tables = tables
    }

    /** 
     *  专题图配置信息曉夞丅
     * 
     * @return 专题图配置信息
     */
    public function get maps():Array {
        return this._maps;
    }

    /** 
     *  专题图配置信息
     * 
     * @param maps 专题图配置信息
     */
    public function set maps(maps : Array):void {
        this._maps = maps
    }

    /** 
     *  文本信息曉夞丅
     * 
     * @return 文本信息
     */
    public function get texts():Array {
        return this._texts;
    }

    /** 
     *  文本信息
     * 
     * @param texts 文本信息
     */
    public function set texts(texts : Array):void {
        this._texts = texts
    }

}
}
