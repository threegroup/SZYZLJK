package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 用户授权响应信息TransData
 * 
 * 用户授权响应信息TransData
 * 
 * @author supermap
 */
public class InitRoleAndFunctionResponseData extends ResponseData {

    /**  功能树 */
    private var _functionTree : Array;

    /**  用户部门列表 */
    private var _deptAndUserList : Array;

    /**  服务树 */
    private var _servicTree : Array;

    /**  服务树 */
    private var _baseServiceTree : Array;

    /** 
     *  功能树曉夞丅
     * 
     * @return 功能树
     */
    public function get functionTree():Array {
        return this._functionTree;
    }

    /** 
     *  功能树
     * 
     * @param functionTree 功能树
     */
    public function set functionTree(functionTree : Array):void {
        this._functionTree = functionTree
    }

    /** 
     *  用户部门列表曉夞丅
     * 
     * @return 用户部门列表
     */
    public function get deptAndUserList():Array {
        return this._deptAndUserList;
    }

    /** 
     *  用户部门列表
     * 
     * @param deptAndUserList 用户部门列表
     */
    public function set deptAndUserList(deptAndUserList : Array):void {
        this._deptAndUserList = deptAndUserList
    }

    /** 
     *  服务树曉夞丅
     * 
     * @return 服务树
     */
    public function get servicTree():Array {
        return this._servicTree;
    }

    /** 
     *  服务树
     * 
     * @param servicTree 服务树
     */
    public function set servicTree(servicTree : Array):void {
        this._servicTree = servicTree
    }

    /** 
     *  服务树曉夞丅
     * 
     * @return 服务树
     */
    public function get baseServiceTree():Array {
        return this._baseServiceTree;
    }

    /** 
     *  服务树
     * 
     * @param baseServiceTree 服务树
     */
    public function set baseServiceTree(baseServiceTree : Array):void {
        this._baseServiceTree = baseServiceTree
    }

}
}
