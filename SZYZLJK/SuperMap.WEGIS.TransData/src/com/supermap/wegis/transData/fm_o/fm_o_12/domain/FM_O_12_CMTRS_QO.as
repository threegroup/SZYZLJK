package com.supermap.wegis.transData.fm_o.fm_o_12.domain
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * TransData
 * 
 * TransData
 * 
 * @author supermap
 */
public class FM_O_12_CMTRS_QO extends BaseData {

    /**  水库代码 */
    private var _code : String;

    /**  水库名称 */
    private var _name : String;

    /**  水库类型1：大（一）型… */
    private var _rstype : String;

    /**  水库类型2:山丘水库、平原水库 */
    private var _rstype2 : String;

    /**  水库主要功能 */
    private var _prim_funct : String;

    /**  总库容最小值 */
    private var _total_strg_cpct_min : Number;

    /**  总库容最大值 */
    private var _total_strg_cpct_max : Number;

    /**  开工时间最小值 */
    private var _rscommdate_min : String;

    /**  开工时间最大值 */
    private var _rscommdate_max : String;

    /**  建成时间最小值 */
    private var _rscompldate_min : String;

    /**  建成时间最大值 */
    private var _rscompldate_max : String;

    /**  管理单位 */
    private var _rs_safety_gldwzr_dw : String;

    /**  所在行政区划 */
    private var _ssxzqh : String;

    /**  所在流域 */
    private var _ssly : String;

    /**  所在水资源分区 */
    private var _ssszyfq : String;

    /** 
     *  水库代码曉夞丅
     * 
     * @return 水库代码
     */
    public function get code():String {
        return this._code;
    }

    /** 
     *  水库代码
     * 
     * @param code 水库代码
     */
    public function set code(code : String):void {
        this._code = code
    }

    /** 
     *  水库名称曉夞丅
     * 
     * @return 水库名称
     */
    public function get name():String {
        return this._name;
    }

    /** 
     *  水库名称
     * 
     * @param name 水库名称
     */
    public function set name(name : String):void {
        this._name = name
    }

    /** 
     *  水库类型1：大（一）型…曉夞丅
     * 
     * @return 水库类型1：大（一）型…
     */
    public function get rstype():String {
        return this._rstype;
    }

    /** 
     *  水库类型1：大（一）型…
     * 
     * @param rstype 水库类型1：大（一）型…
     */
    public function set rstype(rstype : String):void {
        this._rstype = rstype
    }

    /** 
     *  水库类型2:山丘水库、平原水库曉夞丅
     * 
     * @return 水库类型2:山丘水库、平原水库
     */
    public function get rstype2():String {
        return this._rstype2;
    }

    /** 
     *  水库类型2:山丘水库、平原水库
     * 
     * @param rstype2 水库类型2:山丘水库、平原水库
     */
    public function set rstype2(rstype2 : String):void {
        this._rstype2 = rstype2
    }

    /** 
     *  水库主要功能曉夞丅
     * 
     * @return 水库主要功能
     */
    public function get prim_funct():String {
        return this._prim_funct;
    }

    /** 
     *  水库主要功能
     * 
     * @param prim_funct 水库主要功能
     */
    public function set prim_funct(prim_funct : String):void {
        this._prim_funct = prim_funct
    }

    /** 
     *  总库容最小值曉夞丅
     * 
     * @return 总库容最小值
     */
    public function get total_strg_cpct_min():Number {
        return this._total_strg_cpct_min;
    }

    /** 
     *  总库容最小值
     * 
     * @param total_strg_cpct_min 总库容最小值
     */
    public function set total_strg_cpct_min(total_strg_cpct_min : Number):void {
        this._total_strg_cpct_min = total_strg_cpct_min
    }

    /** 
     *  总库容最大值曉夞丅
     * 
     * @return 总库容最大值
     */
    public function get total_strg_cpct_max():Number {
        return this._total_strg_cpct_max;
    }

    /** 
     *  总库容最大值
     * 
     * @param total_strg_cpct_max 总库容最大值
     */
    public function set total_strg_cpct_max(total_strg_cpct_max : Number):void {
        this._total_strg_cpct_max = total_strg_cpct_max
    }

    /** 
     *  开工时间最小值曉夞丅
     * 
     * @return 开工时间最小值
     */
    public function get rscommdate_min():String {
        return this._rscommdate_min;
    }

    /** 
     *  开工时间最小值
     * 
     * @param rscommdate_min 开工时间最小值
     */
    public function set rscommdate_min(rscommdate_min : String):void {
        this._rscommdate_min = rscommdate_min
    }

    /** 
     *  开工时间最大值曉夞丅
     * 
     * @return 开工时间最大值
     */
    public function get rscommdate_max():String {
        return this._rscommdate_max;
    }

    /** 
     *  开工时间最大值
     * 
     * @param rscommdate_max 开工时间最大值
     */
    public function set rscommdate_max(rscommdate_max : String):void {
        this._rscommdate_max = rscommdate_max
    }

    /** 
     *  建成时间最小值曉夞丅
     * 
     * @return 建成时间最小值
     */
    public function get rscompldate_min():String {
        return this._rscompldate_min;
    }

    /** 
     *  建成时间最小值
     * 
     * @param rscompldate_min 建成时间最小值
     */
    public function set rscompldate_min(rscompldate_min : String):void {
        this._rscompldate_min = rscompldate_min
    }

    /** 
     *  建成时间最大值曉夞丅
     * 
     * @return 建成时间最大值
     */
    public function get rscompldate_max():String {
        return this._rscompldate_max;
    }

    /** 
     *  建成时间最大值
     * 
     * @param rscompldate_max 建成时间最大值
     */
    public function set rscompldate_max(rscompldate_max : String):void {
        this._rscompldate_max = rscompldate_max
    }

    /** 
     *  管理单位曉夞丅
     * 
     * @return 管理单位
     */
    public function get rs_safety_gldwzr_dw():String {
        return this._rs_safety_gldwzr_dw;
    }

    /** 
     *  管理单位
     * 
     * @param rs_safety_gldwzr_dw 管理单位
     */
    public function set rs_safety_gldwzr_dw(rs_safety_gldwzr_dw : String):void {
        this._rs_safety_gldwzr_dw = rs_safety_gldwzr_dw
    }

    /** 
     *  所在行政区划曉夞丅
     * 
     * @return 所在行政区划
     */
    public function get ssxzqh():String {
        return this._ssxzqh;
    }

    /** 
     *  所在行政区划
     * 
     * @param ssxzqh 所在行政区划
     */
    public function set ssxzqh(ssxzqh : String):void {
        this._ssxzqh = ssxzqh
    }

    /** 
     *  所在流域曉夞丅
     * 
     * @return 所在流域
     */
    public function get ssly():String {
        return this._ssly;
    }

    /** 
     *  所在流域
     * 
     * @param ssly 所在流域
     */
    public function set ssly(ssly : String):void {
        this._ssly = ssly
    }

    /** 
     *  所在水资源分区曉夞丅
     * 
     * @return 所在水资源分区
     */
    public function get ssszyfq():String {
        return this._ssszyfq;
    }

    /** 
     *  所在水资源分区
     * 
     * @param ssszyfq 所在水资源分区
     */
    public function set ssszyfq(ssszyfq : String):void {
        this._ssszyfq = ssszyfq
    }

}
}
