package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 上传文件记录表Dao入出参数
 * 
 * 上传文件记录表Dao入出参数
 * 
 * @author supermap
 */
public class UploadFileInfoData extends BaseData {

    /**  记录ID */
    private var _pkid : String;

    /**  文件代码 */
    private var _filecode : String;

    /**  目录ID */
    private var _catalogid : String;

    /**  资源ID */
    private var _resourceid : String;

    /**  资源名称 */
    private var _resourcename : String;

    /**  交换数据类型 */
    private var _exdatatype : String;

    /**  资源状态 */
    private var _resourcestaus : String;

    /**  数据文件内容 */
    private var _datafilecontent : String;

    /**  文件扩展名 */
    private var _fileextname : String;

    /**  文件大小 */
    private var _filesize : String;

    /**  上传用户ID */
    private var _uploaduserid : String;

    /**  上传单位ID */
    private var _uploaddepartid : String;

    /**  上传单位名 */
    private var _uploaddepartname : String;

    /**  生产单位 */
    private var _productiondepartment : String;

    /**  摘要 */
    private var _summary : String;

    /**  关键信息 */
    private var _keyword : String;

    /**  任务状态 */
    private var _taskstatus : String;

    /**  是否有效 */
    private var _sequencestate2 : String;

    /**  消亡时间 */
    private var _sequenceend : String;

    /**  生产时间 */
    private var _sequencestart : String;

    /**  本地路径 */
    private var _localpath : String;

    /**  数据格式 */
    private var _dataformat : String;

    /**  描述信息 */
    private var _descinfo : String;

    /**  任务实例ID */
    private var _taskinstid : String;

    /** 
     *  记录ID曉夞丅
     * 
     * @return 记录ID
     */
    public function get pkid():String {
        return this._pkid;
    }

    /** 
     *  记录ID
     * 
     * @param pkid 记录ID
     */
    public function set pkid(pkid : String):void {
        this._pkid = pkid
    }

    /** 
     *  文件代码曉夞丅
     * 
     * @return 文件代码
     */
    public function get filecode():String {
        return this._filecode;
    }

    /** 
     *  文件代码
     * 
     * @param filecode 文件代码
     */
    public function set filecode(filecode : String):void {
        this._filecode = filecode
    }

    /** 
     *  目录ID曉夞丅
     * 
     * @return 目录ID
     */
    public function get catalogid():String {
        return this._catalogid;
    }

    /** 
     *  目录ID
     * 
     * @param catalogid 目录ID
     */
    public function set catalogid(catalogid : String):void {
        this._catalogid = catalogid
    }

    /** 
     *  资源ID曉夞丅
     * 
     * @return 资源ID
     */
    public function get resourceid():String {
        return this._resourceid;
    }

    /** 
     *  资源ID
     * 
     * @param resourceid 资源ID
     */
    public function set resourceid(resourceid : String):void {
        this._resourceid = resourceid
    }

    /** 
     *  资源名称曉夞丅
     * 
     * @return 资源名称
     */
    public function get resourcename():String {
        return this._resourcename;
    }

    /** 
     *  资源名称
     * 
     * @param resourcename 资源名称
     */
    public function set resourcename(resourcename : String):void {
        this._resourcename = resourcename
    }

    /** 
     *  交换数据类型曉夞丅
     * 
     * @return 交换数据类型
     */
    public function get exdatatype():String {
        return this._exdatatype;
    }

    /** 
     *  交换数据类型
     * 
     * @param exdatatype 交换数据类型
     */
    public function set exdatatype(exdatatype : String):void {
        this._exdatatype = exdatatype
    }

    /** 
     *  资源状态曉夞丅
     * 
     * @return 资源状态
     */
    public function get resourcestaus():String {
        return this._resourcestaus;
    }

    /** 
     *  资源状态
     * 
     * @param resourcestaus 资源状态
     */
    public function set resourcestaus(resourcestaus : String):void {
        this._resourcestaus = resourcestaus
    }

    /** 
     *  数据文件内容曉夞丅
     * 
     * @return 数据文件内容
     */
    public function get datafilecontent():String {
        return this._datafilecontent;
    }

    /** 
     *  数据文件内容
     * 
     * @param datafilecontent 数据文件内容
     */
    public function set datafilecontent(datafilecontent : String):void {
        this._datafilecontent = datafilecontent
    }

    /** 
     *  文件扩展名曉夞丅
     * 
     * @return 文件扩展名
     */
    public function get fileextname():String {
        return this._fileextname;
    }

    /** 
     *  文件扩展名
     * 
     * @param fileextname 文件扩展名
     */
    public function set fileextname(fileextname : String):void {
        this._fileextname = fileextname
    }

    /** 
     *  文件大小曉夞丅
     * 
     * @return 文件大小
     */
    public function get filesize():String {
        return this._filesize;
    }

    /** 
     *  文件大小
     * 
     * @param filesize 文件大小
     */
    public function set filesize(filesize : String):void {
        this._filesize = filesize
    }

    /** 
     *  上传用户ID曉夞丅
     * 
     * @return 上传用户ID
     */
    public function get uploaduserid():String {
        return this._uploaduserid;
    }

    /** 
     *  上传用户ID
     * 
     * @param uploaduserid 上传用户ID
     */
    public function set uploaduserid(uploaduserid : String):void {
        this._uploaduserid = uploaduserid
    }

    /** 
     *  上传单位ID曉夞丅
     * 
     * @return 上传单位ID
     */
    public function get uploaddepartid():String {
        return this._uploaddepartid;
    }

    /** 
     *  上传单位ID
     * 
     * @param uploaddepartid 上传单位ID
     */
    public function set uploaddepartid(uploaddepartid : String):void {
        this._uploaddepartid = uploaddepartid
    }

    /** 
     *  上传单位名曉夞丅
     * 
     * @return 上传单位名
     */
    public function get uploaddepartname():String {
        return this._uploaddepartname;
    }

    /** 
     *  上传单位名
     * 
     * @param uploaddepartname 上传单位名
     */
    public function set uploaddepartname(uploaddepartname : String):void {
        this._uploaddepartname = uploaddepartname
    }

    /** 
     *  生产单位曉夞丅
     * 
     * @return 生产单位
     */
    public function get productiondepartment():String {
        return this._productiondepartment;
    }

    /** 
     *  生产单位
     * 
     * @param productiondepartment 生产单位
     */
    public function set productiondepartment(productiondepartment : String):void {
        this._productiondepartment = productiondepartment
    }

    /** 
     *  摘要曉夞丅
     * 
     * @return 摘要
     */
    public function get summary():String {
        return this._summary;
    }

    /** 
     *  摘要
     * 
     * @param summary 摘要
     */
    public function set summary(summary : String):void {
        this._summary = summary
    }

    /** 
     *  关键信息曉夞丅
     * 
     * @return 关键信息
     */
    public function get keyword():String {
        return this._keyword;
    }

    /** 
     *  关键信息
     * 
     * @param keyword 关键信息
     */
    public function set keyword(keyword : String):void {
        this._keyword = keyword
    }

    /** 
     *  任务状态曉夞丅
     * 
     * @return 任务状态
     */
    public function get taskstatus():String {
        return this._taskstatus;
    }

    /** 
     *  任务状态
     * 
     * @param taskstatus 任务状态
     */
    public function set taskstatus(taskstatus : String):void {
        this._taskstatus = taskstatus
    }

    /** 
     *  是否有效曉夞丅
     * 
     * @return 是否有效
     */
    public function get sequencestate2():String {
        return this._sequencestate2;
    }

    /** 
     *  是否有效
     * 
     * @param sequencestate2 是否有效
     */
    public function set sequencestate2(sequencestate2 : String):void {
        this._sequencestate2 = sequencestate2
    }

    /** 
     *  消亡时间曉夞丅
     * 
     * @return 消亡时间
     */
    public function get sequenceend():String {
        return this._sequenceend;
    }

    /** 
     *  消亡时间
     * 
     * @param sequenceend 消亡时间
     */
    public function set sequenceend(sequenceend : String):void {
        this._sequenceend = sequenceend
    }

    /** 
     *  生产时间曉夞丅
     * 
     * @return 生产时间
     */
    public function get sequencestart():String {
        return this._sequencestart;
    }

    /** 
     *  生产时间
     * 
     * @param sequencestart 生产时间
     */
    public function set sequencestart(sequencestart : String):void {
        this._sequencestart = sequencestart
    }

    /** 
     *  本地路径曉夞丅
     * 
     * @return 本地路径
     */
    public function get localpath():String {
        return this._localpath;
    }

    /** 
     *  本地路径
     * 
     * @param localpath 本地路径
     */
    public function set localpath(localpath : String):void {
        this._localpath = localpath
    }

    /** 
     *  数据格式曉夞丅
     * 
     * @return 数据格式
     */
    public function get dataformat():String {
        return this._dataformat;
    }

    /** 
     *  数据格式
     * 
     * @param dataformat 数据格式
     */
    public function set dataformat(dataformat : String):void {
        this._dataformat = dataformat
    }

    /** 
     *  描述信息曉夞丅
     * 
     * @return 描述信息
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  描述信息
     * 
     * @param descinfo 描述信息
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
    }

    /** 
     *  任务实例ID曉夞丅
     * 
     * @return 任务实例ID
     */
    public function get taskinstid():String {
        return this._taskinstid;
    }

    /** 
     *  任务实例ID
     * 
     * @param taskinstid 任务实例ID
     */
    public function set taskinstid(taskinstid : String):void {
        this._taskinstid = taskinstid
    }

}
}
