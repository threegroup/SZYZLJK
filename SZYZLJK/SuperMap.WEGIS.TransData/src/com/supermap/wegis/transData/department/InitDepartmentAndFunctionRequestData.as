package com.supermap.wegis.transData.department
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.department.DepartmentData;

/** 
 * 用户授权请求信息TransData
 * 
 * 用户授权请求信息TransData
 * 
 * @author supermap
 */
public class InitDepartmentAndFunctionRequestData extends RequestData {

    /**  部门信息 */
    private var _departmentInfo : DepartmentData;

    /** 
     *  部门信息曉夞丅
     * 
     * @return 部门信息
     */
    public function get departmentInfo():DepartmentData {
        return this._departmentInfo;
    }

    /** 
     *  部门信息
     * 
     * @param departmentInfo 部门信息
     */
    public function set departmentInfo(departmentInfo : DepartmentData):void {
        this._departmentInfo = departmentInfo
    }

}
}
