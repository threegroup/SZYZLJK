package com.supermap.wegis.transData.datashare
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.datashare.FieldLanguageInfoData;

/** 
 * 取得字段语言RequestData
 * 
 * 取得字段语言RequestData
 * 
 * @author supermap
 */
public class GetFieldLanguageRequestData extends RequestData {

    /**  服务信息 */
    private var _fieldLanguageInfoData : FieldLanguageInfoData;

    /** 
     *  服务信息曉夞丅
     * 
     * @return 服务信息
     */
    public function get fieldLanguageInfoData():FieldLanguageInfoData {
        return this._fieldLanguageInfoData;
    }

    /** 
     *  服务信息
     * 
     * @param fieldLanguageInfoData 服务信息
     */
    public function set fieldLanguageInfoData(fieldLanguageInfoData : FieldLanguageInfoData):void {
        this._fieldLanguageInfoData = fieldLanguageInfoData
    }

}
}
