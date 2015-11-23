package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得默认查询条件
 * 
 * 取得默认查询条件
 * 
 * @author supermap
 */
public class GetSearchConditionsRequestData extends RequestData {

    /**  中分类 */
    private var _middleType : String;

    /** 
     *  中分类曉夞丅
     * 
     * @return 中分类
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  中分类
     * 
     * @param middleType 中分类
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
