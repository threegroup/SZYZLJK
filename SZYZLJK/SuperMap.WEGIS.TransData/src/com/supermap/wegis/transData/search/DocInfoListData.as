package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 文档资料的列表data
 * 
 * 文档资料的列表data
 * 
 * @author supermap
 */
public class DocInfoListData extends BaseData {

    /**  资料建立时间 */
    private var _fileCode : String;

    /**  资料名称 */
    private var _fileName : String;

    /**  对象编码 */
    private var _objCode : String;

    /**  资料类别 */
    private var _fileType : String;

    /**  资料描述 */
    private var _fileDesc : String;

    /**  生产单位 */
    private var _prodIns : String;

    /**  生产时间 */
    private var _prodDate : String;

    /**  密级 */
    private var _confLev : String;

    /**  行政区划 */
    private var _admReg : String;

    /**  流域 */
    private var _bas : String;

    /**  水资源分区 */
    private var _wrz : String;

    /**  主题 */
    private var _theme : String;

    /**  资料建立时间 */
    private var _fromDate : String;

    /**  资料终止时间 */
    private var _toDate : String;

    /**  存储路径 */
    private var _storePath : String;

    /**  资料分类（图片、视频、文档） */
    private var _fileFormat : String;

    /** 
     *  资料建立时间曉夞丅
     * 
     * @return 资料建立时间
     */
    public function get fileCode():String {
        return this._fileCode;
    }

    /** 
     *  资料建立时间
     * 
     * @param fileCode 资料建立时间
     */
    public function set fileCode(fileCode : String):void {
        this._fileCode = fileCode
    }

    /** 
     *  资料名称曉夞丅
     * 
     * @return 资料名称
     */
    public function get fileName():String {
        return this._fileName;
    }

    /** 
     *  资料名称
     * 
     * @param fileName 资料名称
     */
    public function set fileName(fileName : String):void {
        this._fileName = fileName
    }

    /** 
     *  对象编码曉夞丅
     * 
     * @return 对象编码
     */
    public function get objCode():String {
        return this._objCode;
    }

    /** 
     *  对象编码
     * 
     * @param objCode 对象编码
     */
    public function set objCode(objCode : String):void {
        this._objCode = objCode
    }

    /** 
     *  资料类别曉夞丅
     * 
     * @return 资料类别
     */
    public function get fileType():String {
        return this._fileType;
    }

    /** 
     *  资料类别
     * 
     * @param fileType 资料类别
     */
    public function set fileType(fileType : String):void {
        this._fileType = fileType
    }

    /** 
     *  资料描述曉夞丅
     * 
     * @return 资料描述
     */
    public function get fileDesc():String {
        return this._fileDesc;
    }

    /** 
     *  资料描述
     * 
     * @param fileDesc 资料描述
     */
    public function set fileDesc(fileDesc : String):void {
        this._fileDesc = fileDesc
    }

    /** 
     *  生产单位曉夞丅
     * 
     * @return 生产单位
     */
    public function get prodIns():String {
        return this._prodIns;
    }

    /** 
     *  生产单位
     * 
     * @param prodIns 生产单位
     */
    public function set prodIns(prodIns : String):void {
        this._prodIns = prodIns
    }

    /** 
     *  生产时间曉夞丅
     * 
     * @return 生产时间
     */
    public function get prodDate():String {
        return this._prodDate;
    }

    /** 
     *  生产时间
     * 
     * @param prodDate 生产时间
     */
    public function set prodDate(prodDate : String):void {
        this._prodDate = prodDate
    }

    /** 
     *  密级曉夞丅
     * 
     * @return 密级
     */
    public function get confLev():String {
        return this._confLev;
    }

    /** 
     *  密级
     * 
     * @param confLev 密级
     */
    public function set confLev(confLev : String):void {
        this._confLev = confLev
    }

    /** 
     *  行政区划曉夞丅
     * 
     * @return 行政区划
     */
    public function get admReg():String {
        return this._admReg;
    }

    /** 
     *  行政区划
     * 
     * @param admReg 行政区划
     */
    public function set admReg(admReg : String):void {
        this._admReg = admReg
    }

    /** 
     *  流域曉夞丅
     * 
     * @return 流域
     */
    public function get bas():String {
        return this._bas;
    }

    /** 
     *  流域
     * 
     * @param bas 流域
     */
    public function set bas(bas : String):void {
        this._bas = bas
    }

    /** 
     *  水资源分区曉夞丅
     * 
     * @return 水资源分区
     */
    public function get wrz():String {
        return this._wrz;
    }

    /** 
     *  水资源分区
     * 
     * @param wrz 水资源分区
     */
    public function set wrz(wrz : String):void {
        this._wrz = wrz
    }

    /** 
     *  主题曉夞丅
     * 
     * @return 主题
     */
    public function get theme():String {
        return this._theme;
    }

    /** 
     *  主题
     * 
     * @param theme 主题
     */
    public function set theme(theme : String):void {
        this._theme = theme
    }

    /** 
     *  资料建立时间曉夞丅
     * 
     * @return 资料建立时间
     */
    public function get fromDate():String {
        return this._fromDate;
    }

    /** 
     *  资料建立时间
     * 
     * @param fromDate 资料建立时间
     */
    public function set fromDate(fromDate : String):void {
        this._fromDate = fromDate
    }

    /** 
     *  资料终止时间曉夞丅
     * 
     * @return 资料终止时间
     */
    public function get toDate():String {
        return this._toDate;
    }

    /** 
     *  资料终止时间
     * 
     * @param toDate 资料终止时间
     */
    public function set toDate(toDate : String):void {
        this._toDate = toDate
    }

    /** 
     *  存储路径曉夞丅
     * 
     * @return 存储路径
     */
    public function get storePath():String {
        return this._storePath;
    }

    /** 
     *  存储路径
     * 
     * @param storePath 存储路径
     */
    public function set storePath(storePath : String):void {
        this._storePath = storePath
    }

    /** 
     *  资料分类（图片、视频、文档）曉夞丅
     * 
     * @return 资料分类（图片、视频、文档）
     */
    public function get fileFormat():String {
        return this._fileFormat;
    }

    /** 
     *  资料分类（图片、视频、文档）
     * 
     * @param fileFormat 资料分类（图片、视频、文档）
     */
    public function set fileFormat(fileFormat : String):void {
        this._fileFormat = fileFormat
    }

}
}
