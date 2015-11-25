package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 新闻信息Data
 * 
 * 新闻信息Data
 * 
 * @author supermap
 */
public class NewsData extends BaseData {

    /**  记录ID */
    private var _noticeId : String;

    /**  类型ID */
    private var _cataId : String;

    /**  消息名称 */
    private var _noticeTitle : String;

    /**  消息内容 */
    private var _noticeContent : String;

    /**  消息时间 */
    private var _noticeDt : String;

    /**  应用ID */
    private var _appId : String;

    /**  用户ID */
    private var _userId : String;

    /**  消息作者 */
    private var _ntWriter : String;

    /**  消息来源 */
    private var _ntSource : String;

    /**  查看次数 */
    private var _hints : String;

    /**  图片链接 */
    private var _imageUrl : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  消息描述 */
    private var _descinfo : String;

    /**  消息附件 */
    private var _attachment : String;

    /**  消息状态 */
    private var _status : String;

    /**  开始时间 */
    private var _starttime : String;

    /**  结束时间 */
    private var _endtime : String;

    /**  消息类型 */
    private var _noticetype : String;

    /** 
     *  记录ID曉夞丅
     * 
     * @return 记录ID
     */
    public function get noticeId():String {
        return this._noticeId;
    }

    /** 
     *  记录ID
     * 
     * @param noticeId 记录ID
     */
    public function set noticeId(noticeId : String):void {
        this._noticeId = noticeId
    }

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
     *  消息名称曉夞丅
     * 
     * @return 消息名称
     */
    public function get noticeTitle():String {
        return this._noticeTitle;
    }

    /** 
     *  消息名称
     * 
     * @param noticeTitle 消息名称
     */
    public function set noticeTitle(noticeTitle : String):void {
        this._noticeTitle = noticeTitle
    }

    /** 
     *  消息内容曉夞丅
     * 
     * @return 消息内容
     */
    public function get noticeContent():String {
        return this._noticeContent;
    }

    /** 
     *  消息内容
     * 
     * @param noticeContent 消息内容
     */
    public function set noticeContent(noticeContent : String):void {
        this._noticeContent = noticeContent
    }

    /** 
     *  消息时间曉夞丅
     * 
     * @return 消息时间
     */
    public function get noticeDt():String {
        return this._noticeDt;
    }

    /** 
     *  消息时间
     * 
     * @param noticeDt 消息时间
     */
    public function set noticeDt(noticeDt : String):void {
        this._noticeDt = noticeDt
    }

    /** 
     *  应用ID曉夞丅
     * 
     * @return 应用ID
     */
    public function get appId():String {
        return this._appId;
    }

    /** 
     *  应用ID
     * 
     * @param appId 应用ID
     */
    public function set appId(appId : String):void {
        this._appId = appId
    }

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  消息作者曉夞丅
     * 
     * @return 消息作者
     */
    public function get ntWriter():String {
        return this._ntWriter;
    }

    /** 
     *  消息作者
     * 
     * @param ntWriter 消息作者
     */
    public function set ntWriter(ntWriter : String):void {
        this._ntWriter = ntWriter
    }

    /** 
     *  消息来源曉夞丅
     * 
     * @return 消息来源
     */
    public function get ntSource():String {
        return this._ntSource;
    }

    /** 
     *  消息来源
     * 
     * @param ntSource 消息来源
     */
    public function set ntSource(ntSource : String):void {
        this._ntSource = ntSource
    }

    /** 
     *  查看次数曉夞丅
     * 
     * @return 查看次数
     */
    public function get hints():String {
        return this._hints;
    }

    /** 
     *  查看次数
     * 
     * @param hints 查看次数
     */
    public function set hints(hints : String):void {
        this._hints = hints
    }

    /** 
     *  图片链接曉夞丅
     * 
     * @return 图片链接
     */
    public function get imageUrl():String {
        return this._imageUrl;
    }

    /** 
     *  图片链接
     * 
     * @param imageUrl 图片链接
     */
    public function set imageUrl(imageUrl : String):void {
        this._imageUrl = imageUrl
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
     *  消息描述曉夞丅
     * 
     * @return 消息描述
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  消息描述
     * 
     * @param descinfo 消息描述
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
    }

    /** 
     *  消息附件曉夞丅
     * 
     * @return 消息附件
     */
    public function get attachment():String {
        return this._attachment;
    }

    /** 
     *  消息附件
     * 
     * @param attachment 消息附件
     */
    public function set attachment(attachment : String):void {
        this._attachment = attachment
    }

    /** 
     *  消息状态曉夞丅
     * 
     * @return 消息状态
     */
    public function get status():String {
        return this._status;
    }

    /** 
     *  消息状态
     * 
     * @param status 消息状态
     */
    public function set status(status : String):void {
        this._status = status
    }

    /** 
     *  开始时间曉夞丅
     * 
     * @return 开始时间
     */
    public function get starttime():String {
        return this._starttime;
    }

    /** 
     *  开始时间
     * 
     * @param starttime 开始时间
     */
    public function set starttime(starttime : String):void {
        this._starttime = starttime
    }

    /** 
     *  结束时间曉夞丅
     * 
     * @return 结束时间
     */
    public function get endtime():String {
        return this._endtime;
    }

    /** 
     *  结束时间
     * 
     * @param endtime 结束时间
     */
    public function set endtime(endtime : String):void {
        this._endtime = endtime
    }

    /** 
     *  消息类型曉夞丅
     * 
     * @return 消息类型
     */
    public function get noticetype():String {
        return this._noticetype;
    }

    /** 
     *  消息类型
     * 
     * @param noticetype 消息类型
     */
    public function set noticetype(noticetype : String):void {
        this._noticetype = noticetype
    }

}
}
