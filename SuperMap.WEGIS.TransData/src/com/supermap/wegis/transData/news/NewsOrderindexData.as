package com.supermap.wegis.transData.news
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 新闻排序信息Data
 * 
 * 新闻排序信息Data
 * 
 * @author supermap
 */
public class NewsOrderindexData extends ResponseData {

    /**  上一条消息 */
    private var _prevNotice : String;

    /**  下一条消息 */
    private var _nextNotice : String;

    /**  第一条消息 */
    private var _firstNotice : String;

    /**  最后一条消息 */
    private var _endNotice : String;

    /** 
     *  上一条消息曉夞丅
     * 
     * @return 上一条消息
     */
    public function get prevNotice():String {
        return this._prevNotice;
    }

    /** 
     *  上一条消息
     * 
     * @param prevNotice 上一条消息
     */
    public function set prevNotice(prevNotice : String):void {
        this._prevNotice = prevNotice
    }

    /** 
     *  下一条消息曉夞丅
     * 
     * @return 下一条消息
     */
    public function get nextNotice():String {
        return this._nextNotice;
    }

    /** 
     *  下一条消息
     * 
     * @param nextNotice 下一条消息
     */
    public function set nextNotice(nextNotice : String):void {
        this._nextNotice = nextNotice
    }

    /** 
     *  第一条消息曉夞丅
     * 
     * @return 第一条消息
     */
    public function get firstNotice():String {
        return this._firstNotice;
    }

    /** 
     *  第一条消息
     * 
     * @param firstNotice 第一条消息
     */
    public function set firstNotice(firstNotice : String):void {
        this._firstNotice = firstNotice
    }

    /** 
     *  最后一条消息曉夞丅
     * 
     * @return 最后一条消息
     */
    public function get endNotice():String {
        return this._endNotice;
    }

    /** 
     *  最后一条消息
     * 
     * @param endNotice 最后一条消息
     */
    public function set endNotice(endNotice : String):void {
        this._endNotice = endNotice
    }

}
}
