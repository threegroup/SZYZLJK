package com.supermap.wegis.transData.business
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 生成等值线信息字符串
 * 
 * 生成等值线信息字符串
 * 
 * @author supermap
 */
public class IsoLineResponseData extends ResponseData {

    /**  生成等值线信息字符串 */
    private var _nodeListStr : String;

    /** 
     *  生成等值线信息字符串曉夞丅
     * 
     * @return 生成等值线信息字符串
     */
    public function get nodeListStr():String {
        return this._nodeListStr;
    }

    /** 
     *  生成等值线信息字符串
     * 
     * @param nodeListStr 生成等值线信息字符串
     */
    public function set nodeListStr(nodeListStr : String):void {
        this._nodeListStr = nodeListStr
    }

}
}
