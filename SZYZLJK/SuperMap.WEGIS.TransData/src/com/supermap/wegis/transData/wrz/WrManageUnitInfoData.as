package com.supermap.wegis.transData.wrz
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 管理单位表TransData
 * 
 * 管理单位表TransData
 * 
 * @author supermap
 */
public class WrManageUnitInfoData extends BaseData {

    /**  管理单位代码 */
    private var _manageNuitCode : String;

    /**  管理单位名称 */
    private var _manageNuitName : String;

    /**  行政区划 */
    private var _admDiv : String;

    /** 
     *  管理单位代码曉夞丅
     * 
     * @return 管理单位代码
     */
    public function get manageNuitCode():String {
        return this._manageNuitCode;
    }

    /** 
     *  管理单位代码
     * 
     * @param manageNuitCode 管理单位代码
     */
    public function set manageNuitCode(manageNuitCode : String):void {
        this._manageNuitCode = manageNuitCode
    }

    /** 
     *  管理单位名称曉夞丅
     * 
     * @return 管理单位名称
     */
    public function get manageNuitName():String {
        return this._manageNuitName;
    }

    /** 
     *  管理单位名称
     * 
     * @param manageNuitName 管理单位名称
     */
    public function set manageNuitName(manageNuitName : String):void {
        this._manageNuitName = manageNuitName
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
