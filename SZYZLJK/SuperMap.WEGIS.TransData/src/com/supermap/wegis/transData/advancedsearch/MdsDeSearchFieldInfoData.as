package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * 高级查询要素条件属性表Dao入出参数
 * 
 * @author supermap
 */
public class MdsDeSearchFieldInfoData extends BaseData {

    /**  属性名称 */
    private var _propertyName : String;

    /**  对应台帐表字段 */
    private var _surveyFields : String;

    /** 
     *  属性名称曉夞丅
     * 
     * @return 属性名称
     */
    public function get propertyName():String {
        return this._propertyName;
    }

    /** 
     *  属性名称
     * 
     * @param propertyName 属性名称
     */
    public function set propertyName(propertyName : String):void {
        this._propertyName = propertyName
    }

    /** 
     *  对应台帐表字段曉夞丅
     * 
     * @return 对应台帐表字段
     */
    public function get surveyFields():String {
        return this._surveyFields;
    }

    /** 
     *  对应台帐表字段
     * 
     * @param surveyFields 对应台帐表字段
     */
    public function set surveyFields(surveyFields : String):void {
        this._surveyFields = surveyFields
    }

}
}
