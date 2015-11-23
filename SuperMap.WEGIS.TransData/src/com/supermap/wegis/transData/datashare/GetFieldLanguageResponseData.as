package com.supermap.wegis.transData.datashare
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * GetFieldLanguageResponseData
 * 
 * 取得GetFieldLanguageResponseData
 * 
 * @author supermap
 */
public class GetFieldLanguageResponseData extends ResponseData {

    /**  字段语言信息 */
    private var _FieldLanguageDataList : Array;

    /** 
     *  字段语言信息曉夞丅
     * 
     * @return 字段语言信息
     */
    public function get FieldLanguageDataList():Array {
        return this._FieldLanguageDataList;
    }

    /** 
     *  字段语言信息
     * 
     * @param FieldLanguageDataList 字段语言信息
     */
    public function set FieldLanguageDataList(FieldLanguageDataList : Array):void {
        this._FieldLanguageDataList = FieldLanguageDataList
    }

}
}
