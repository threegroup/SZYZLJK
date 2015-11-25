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
public class FM_O_12_SLPCRS_QO extends BaseData {

    /**  水库类型 */
    private var _sklx : String;

    /**  水库名称 */
    private var _name : String;

    /**  类型 */
    private var _lx : String;

    /**  开工最大时间||年-月 */
    private var _kgsjMAX : String;

    /**  开工最小时间||年-月 */
    private var _kgsjMIN : String;

    /**  建成最大时间||年-月 */
    private var _jcsjMAX : String;

    /**  建成最小时间||年-月 */
    private var _jcsjMIN : String;

    /**  总库容-万立方米|KR,总库容最小值 */
    private var _zkrMIN : Number;

    /**  总库容-万立方米|KR,总库容最大值 */
    private var _zkrMAX : Number;

    /**  防洪 */
    private var _fh : String;

    /**  发电 */
    private var _fd : String;

    /**  供水 */
    private var _gs : String;

    /**  灌溉 */
    private var _gg : String;

    /**  航运 */
    private var _hy : String;

    /**  养殖 */
    private var _yz : String;

    /**  其它 */
    private var _qt : String;

    /**  水库管理单位名称|ORG_NAME,水库管理单位名称 */
    private var _gldw_mc : String;

    /**  所在行政区划 */
    private var _ssxzqh : String;

    /**  所在流域 */
    private var _ssly : String;

    /**  所在水资源分区 */
    private var _ssszyfq : String;

    /** 
     *  水库类型曉夞丅
     * 
     * @return 水库类型
     */
    public function get sklx():String {
        return this._sklx;
    }

    /** 
     *  水库类型
     * 
     * @param sklx 水库类型
     */
    public function set sklx(sklx : String):void {
        this._sklx = sklx
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
     *  类型曉夞丅
     * 
     * @return 类型
     */
    public function get lx():String {
        return this._lx;
    }

    /** 
     *  类型
     * 
     * @param lx 类型
     */
    public function set lx(lx : String):void {
        this._lx = lx
    }

    /** 
     *  开工最大时间||年-月曉夞丅
     * 
     * @return 开工最大时间||年-月
     */
    public function get kgsjMAX():String {
        return this._kgsjMAX;
    }

    /** 
     *  开工最大时间||年-月
     * 
     * @param kgsjMAX 开工最大时间||年-月
     */
    public function set kgsjMAX(kgsjMAX : String):void {
        this._kgsjMAX = kgsjMAX
    }

    /** 
     *  开工最小时间||年-月曉夞丅
     * 
     * @return 开工最小时间||年-月
     */
    public function get kgsjMIN():String {
        return this._kgsjMIN;
    }

    /** 
     *  开工最小时间||年-月
     * 
     * @param kgsjMIN 开工最小时间||年-月
     */
    public function set kgsjMIN(kgsjMIN : String):void {
        this._kgsjMIN = kgsjMIN
    }

    /** 
     *  建成最大时间||年-月曉夞丅
     * 
     * @return 建成最大时间||年-月
     */
    public function get jcsjMAX():String {
        return this._jcsjMAX;
    }

    /** 
     *  建成最大时间||年-月
     * 
     * @param jcsjMAX 建成最大时间||年-月
     */
    public function set jcsjMAX(jcsjMAX : String):void {
        this._jcsjMAX = jcsjMAX
    }

    /** 
     *  建成最小时间||年-月曉夞丅
     * 
     * @return 建成最小时间||年-月
     */
    public function get jcsjMIN():String {
        return this._jcsjMIN;
    }

    /** 
     *  建成最小时间||年-月
     * 
     * @param jcsjMIN 建成最小时间||年-月
     */
    public function set jcsjMIN(jcsjMIN : String):void {
        this._jcsjMIN = jcsjMIN
    }

    /** 
     *  总库容-万立方米|KR,总库容最小值曉夞丅
     * 
     * @return 总库容-万立方米|KR,总库容最小值
     */
    public function get zkrMIN():Number {
        return this._zkrMIN;
    }

    /** 
     *  总库容-万立方米|KR,总库容最小值
     * 
     * @param zkrMIN 总库容-万立方米|KR,总库容最小值
     */
    public function set zkrMIN(zkrMIN : Number):void {
        this._zkrMIN = zkrMIN
    }

    /** 
     *  总库容-万立方米|KR,总库容最大值曉夞丅
     * 
     * @return 总库容-万立方米|KR,总库容最大值
     */
    public function get zkrMAX():Number {
        return this._zkrMAX;
    }

    /** 
     *  总库容-万立方米|KR,总库容最大值
     * 
     * @param zkrMAX 总库容-万立方米|KR,总库容最大值
     */
    public function set zkrMAX(zkrMAX : Number):void {
        this._zkrMAX = zkrMAX
    }

    /** 
     *  防洪曉夞丅
     * 
     * @return 防洪
     */
    public function get fh():String {
        return this._fh;
    }

    /** 
     *  防洪
     * 
     * @param fh 防洪
     */
    public function set fh(fh : String):void {
        this._fh = fh
    }

    /** 
     *  发电曉夞丅
     * 
     * @return 发电
     */
    public function get fd():String {
        return this._fd;
    }

    /** 
     *  发电
     * 
     * @param fd 发电
     */
    public function set fd(fd : String):void {
        this._fd = fd
    }

    /** 
     *  供水曉夞丅
     * 
     * @return 供水
     */
    public function get gs():String {
        return this._gs;
    }

    /** 
     *  供水
     * 
     * @param gs 供水
     */
    public function set gs(gs : String):void {
        this._gs = gs
    }

    /** 
     *  灌溉曉夞丅
     * 
     * @return 灌溉
     */
    public function get gg():String {
        return this._gg;
    }

    /** 
     *  灌溉
     * 
     * @param gg 灌溉
     */
    public function set gg(gg : String):void {
        this._gg = gg
    }

    /** 
     *  航运曉夞丅
     * 
     * @return 航运
     */
    public function get hy():String {
        return this._hy;
    }

    /** 
     *  航运
     * 
     * @param hy 航运
     */
    public function set hy(hy : String):void {
        this._hy = hy
    }

    /** 
     *  养殖曉夞丅
     * 
     * @return 养殖
     */
    public function get yz():String {
        return this._yz;
    }

    /** 
     *  养殖
     * 
     * @param yz 养殖
     */
    public function set yz(yz : String):void {
        this._yz = yz
    }

    /** 
     *  其它曉夞丅
     * 
     * @return 其它
     */
    public function get qt():String {
        return this._qt;
    }

    /** 
     *  其它
     * 
     * @param qt 其它
     */
    public function set qt(qt : String):void {
        this._qt = qt
    }

    /** 
     *  水库管理单位名称|ORG_NAME,水库管理单位名称曉夞丅
     * 
     * @return 水库管理单位名称|ORG_NAME,水库管理单位名称
     */
    public function get gldw_mc():String {
        return this._gldw_mc;
    }

    /** 
     *  水库管理单位名称|ORG_NAME,水库管理单位名称
     * 
     * @param gldw_mc 水库管理单位名称|ORG_NAME,水库管理单位名称
     */
    public function set gldw_mc(gldw_mc : String):void {
        this._gldw_mc = gldw_mc
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
