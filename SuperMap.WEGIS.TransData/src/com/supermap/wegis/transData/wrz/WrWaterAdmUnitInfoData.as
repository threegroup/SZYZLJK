package com.supermap.wegis.transData.wrz
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 水行政主管部门表TransData
 * 
 * 水行政主管部门表TransData
 * 
 * @author supermap
 */
public class WrWaterAdmUnitInfoData extends BaseData {

    /**  水行政主管部门代码 */
    private var _waterAdminNuitCode : String;

    /**  水行政主管部门名称 */
    private var _waterAdminNuitName : String;

    /**  行政区划 */
    private var _admDiv : String;

    /** 
     *  水行政主管部门代码曉夞丅
     * 
     * @return 水行政主管部门代码
     */
    public function get waterAdminNuitCode():String {
        return this._waterAdminNuitCode;
    }

    /** 
     *  水行政主管部门代码
     * 
     * @param waterAdminNuitCode 水行政主管部门代码
     */
    public function set waterAdminNuitCode(waterAdminNuitCode : String):void {
        this._waterAdminNuitCode = waterAdminNuitCode
    }

    /** 
     *  水行政主管部门名称曉夞丅
     * 
     * @return 水行政主管部门名称
     */
    public function get waterAdminNuitName():String {
        return this._waterAdminNuitName;
    }

    /** 
     *  水行政主管部门名称
     * 
     * @param waterAdminNuitName 水行政主管部门名称
     */
    public function set waterAdminNuitName(waterAdminNuitName : String):void {
        this._waterAdminNuitName = waterAdminNuitName
    }

    /** 
     *  行政区划曉夞丅
     * 
     * @return 行政区划
     */
    public function get admDiv():String {
        return this._admDiv;
    }

    /** 
     *  行政区划
     * 
     * @param admDiv 行政区划
     */
    public function set admDiv(admDiv : String):void {
        this._admDiv = admDiv
    }

}
}
