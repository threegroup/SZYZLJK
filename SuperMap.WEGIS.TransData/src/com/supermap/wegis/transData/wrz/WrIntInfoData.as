package com.supermap.wegis.transData.wrz
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class WrIntInfoData extends RequestData {

    /**  地表水取水口代码:上传文件路径 */
    private var _intCd : String;

    /**  地表水取水口名称 */
    private var _intNm : String;

    /**  取水方式 */
    private var _intTp : String;

    /**  开始取水日期 */
    private var _fromIntDt : String;

    /**  许可最大流量 */
    private var _maxPermQ : String;

    /**  设计流量 */
    private var _desQ : String;

    /**  许可总取水量 */
    private var _permWw : String;

    /**  运行状况 */
    private var _runCond : String;

    /**  管理单位代码 */
    private var _engManCd : String;

    /**  时间戳 */
    private var _ts : String;

    /**  备注 */
    private var _nt : String;

    /**  点X */
    private var _pointX : String;

    /**  点Y */
    private var _pointY : String;

    /**  提交状态 */
    private var _commitStatus : String;

    /**  编辑状态 */
    private var _editStatus : String;

    /**  行政编码 */
    private var _admDiv : String;

    /**  编码/水普数据对应 */
    private var _code : String;

    /** 
     *  地表水取水口代码:上传文件路径曉夞丅
     * 
     * @return 地表水取水口代码:上传文件路径
     */
    public function get intCd():String {
        return this._intCd;
    }

    /** 
     *  地表水取水口代码:上传文件路径
     * 
     * @param intCd 地表水取水口代码:上传文件路径
     */
    public function set intCd(intCd : String):void {
        this._intCd = intCd
    }

    /** 
     *  地表水取水口名称曉夞丅
     * 
     * @return 地表水取水口名称
     */
    public function get intNm():String {
        return this._intNm;
    }

    /** 
     *  地表水取水口名称
     * 
     * @param intNm 地表水取水口名称
     */
    public function set intNm(intNm : String):void {
        this._intNm = intNm
    }

    /** 
     *  取水方式曉夞丅
     * 
     * @return 取水方式
     */
    public function get intTp():String {
        return this._intTp;
    }

    /** 
     *  取水方式
     * 
     * @param intTp 取水方式
     */
    public function set intTp(intTp : String):void {
        this._intTp = intTp
    }

    /** 
     *  开始取水日期曉夞丅
     * 
     * @return 开始取水日期
     */
    public function get fromIntDt():String {
        return this._fromIntDt;
    }

    /** 
     *  开始取水日期
     * 
     * @param fromIntDt 开始取水日期
     */
    public function set fromIntDt(fromIntDt : String):void {
        this._fromIntDt = fromIntDt
    }

    /** 
     *  许可最大流量曉夞丅
     * 
     * @return 许可最大流量
     */
    public function get maxPermQ():String {
        return this._maxPermQ;
    }

    /** 
     *  许可最大流量
     * 
     * @param maxPermQ 许可最大流量
     */
    public function set maxPermQ(maxPermQ : String):void {
        this._maxPermQ = maxPermQ
    }

    /** 
     *  设计流量曉夞丅
     * 
     * @return 设计流量
     */
    public function get desQ():String {
        return this._desQ;
    }

    /** 
     *  设计流量
     * 
     * @param desQ 设计流量
     */
    public function set desQ(desQ : String):void {
        this._desQ = desQ
    }

    /** 
     *  许可总取水量曉夞丅
     * 
     * @return 许可总取水量
     */
    public function get permWw():String {
        return this._permWw;
    }

    /** 
     *  许可总取水量
     * 
     * @param permWw 许可总取水量
     */
    public function set permWw(permWw : String):void {
        this._permWw = permWw
    }

    /** 
     *  运行状况曉夞丅
     * 
     * @return 运行状况
     */
    public function get runCond():String {
        return this._runCond;
    }

    /** 
     *  运行状况
     * 
     * @param runCond 运行状况
     */
    public function set runCond(runCond : String):void {
        this._runCond = runCond
    }

    /** 
     *  管理单位代码曉夞丅
     * 
     * @return 管理单位代码
     */
    public function get engManCd():String {
        return this._engManCd;
    }

    /** 
     *  管理单位代码
     * 
     * @param engManCd 管理单位代码
     */
    public function set engManCd(engManCd : String):void {
        this._engManCd = engManCd
    }

    /** 
     *  时间戳曉夞丅
     * 
     * @return 时间戳
     */
    public function get ts():String {
        return this._ts;
    }

    /** 
     *  时间戳
     * 
     * @param ts 时间戳
     */
    public function set ts(ts : String):void {
        this._ts = ts
    }

    /** 
     *  备注曉夞丅
     * 
     * @return 备注
     */
    public function get nt():String {
        return this._nt;
    }

    /** 
     *  备注
     * 
     * @param nt 备注
     */
    public function set nt(nt : String):void {
        this._nt = nt
    }

    /** 
     *  点X曉夞丅
     * 
     * @return 点X
     */
    public function get pointX():String {
        return this._pointX;
    }

    /** 
     *  点X
     * 
     * @param pointX 点X
     */
    public function set pointX(pointX : String):void {
        this._pointX = pointX
    }

    /** 
     *  点Y曉夞丅
     * 
     * @return 点Y
     */
    public function get pointY():String {
        return this._pointY;
    }

    /** 
     *  点Y
     * 
     * @param pointY 点Y
     */
    public function set pointY(pointY : String):void {
        this._pointY = pointY
    }

    /** 
     *  提交状态曉夞丅
     * 
     * @return 提交状态
     */
    public function get commitStatus():String {
        return this._commitStatus;
    }

    /** 
     *  提交状态
     * 
     * @param commitStatus 提交状态
     */
    public function set commitStatus(commitStatus : String):void {
        this._commitStatus = commitStatus
    }

    /** 
     *  编辑状态曉夞丅
     * 
     * @return 编辑状态
     */
    public function get editStatus():String {
        return this._editStatus;
    }

    /** 
     *  编辑状态
     * 
     * @param editStatus 编辑状态
     */
    public function set editStatus(editStatus : String):void {
        this._editStatus = editStatus
    }

    /** 
     *  行政编码曉夞丅
     * 
     * @return 行政编码
     */
    public function get admDiv():String {
        return this._admDiv;
    }

    /** 
     *  行政编码
     * 
     * @param admDiv 行政编码
     */
    public function set admDiv(admDiv : String):void {
        this._admDiv = admDiv
    }

    /** 
     *  编码/水普数据对应曉夞丅
     * 
     * @return 编码/水普数据对应
     */
    public function get code():String {
        return this._code;
    }

    /** 
     *  编码/水普数据对应
     * 
     * @param code 编码/水普数据对应
     */
    public function set code(code : String):void {
        this._code = code
    }

}
}
