package com.supermap.wegis.transData.department
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 部门信息RequestData
 * 
 * 部门信息RequestData
 * 
 * @author supermap
 */
public class DepartmentTreeData extends TreeNode {

    /**  部门ID */
    private var _nodeId : String;

    /**  部门CODE */
    private var _nodeCode : String;

    /**  部门名称 */
    private var _nodeName : String;

    /**  部门简称 */
    private var _deptShortname : String;

    /**  部门状态 */
    private var _deptStatus : String;

    /**  部门领导 */
    private var _deptLeader : String;

    /**  部门类型 */
    private var _deptType : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  部门级别 */
    private var _deptLevel : String;

    /**  有效期 */
    private var _effectiveTime : String;

    /**  部门描述 */
    private var _descinfo : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  图标符号ID */
    private var _legendId : String;

    /** 
     *  部门ID曉夞丅
     * 
     * @return 部门ID
     */
    override public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  部门ID
     * 
     * @param nodeId 部门ID
     */
    override public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  部门CODE曉夞丅
     * 
     * @return 部门CODE
     */
    public function get nodeCode():String {
        return this._nodeCode;
    }

    /** 
     *  部门CODE
     * 
     * @param nodeCode 部门CODE
     */
    public function set nodeCode(nodeCode : String):void {
        this._nodeCode = nodeCode
    }

    /** 
     *  部门名称曉夞丅
     * 
     * @return 部门名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  部门名称
     * 
     * @param nodeName 部门名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

    /** 
     *  部门简称曉夞丅
     * 
     * @return 部门简称
     */
    public function get deptShortname():String {
        return this._deptShortname;
    }

    /** 
     *  部门简称
     * 
     * @param deptShortname 部门简称
     */
    public function set deptShortname(deptShortname : String):void {
        this._deptShortname = deptShortname
    }

    /** 
     *  部门状态曉夞丅
     * 
     * @return 部门状态
     */
    public function get deptStatus():String {
        return this._deptStatus;
    }

    /** 
     *  部门状态
     * 
     * @param deptStatus 部门状态
     */
    public function set deptStatus(deptStatus : String):void {
        this._deptStatus = deptStatus
    }

    /** 
     *  部门领导曉夞丅
     * 
     * @return 部门领导
     */
    public function get deptLeader():String {
        return this._deptLeader;
    }

    /** 
     *  部门领导
     * 
     * @param deptLeader 部门领导
     */
    public function set deptLeader(deptLeader : String):void {
        this._deptLeader = deptLeader
    }

    /** 
     *  部门类型曉夞丅
     * 
     * @return 部门类型
     */
    public function get deptType():String {
        return this._deptType;
    }

    /** 
     *  部门类型
     * 
     * @param deptType 部门类型
     */
    public function set deptType(deptType : String):void {
        this._deptType = deptType
    }

    /** 
     *  父节点曉夞丅
     * 
     * @return 父节点
     */
    override public function get parentNodeId():String {
        return this._parentNodeId;
    }

    /** 
     *  父节点
     * 
     * @param parentNodeId 父节点
     */
    override public function set parentNodeId(parentNodeId : String):void {
        this._parentNodeId = parentNodeId
    }

    /** 
     *  节点路径ID曉夞丅
     * 
     * @return 节点路径ID
     */
    public function get nodePathId():String {
        return this._nodePathId;
    }

    /** 
     *  节点路径ID
     * 
     * @param nodePathId 节点路径ID
     */
    public function set nodePathId(nodePathId : String):void {
        this._nodePathId = nodePathId
    }

    /** 
     *  部门级别曉夞丅
     * 
     * @return 部门级别
     */
    public function get deptLevel():String {
        return this._deptLevel;
    }

    /** 
     *  部门级别
     * 
     * @param deptLevel 部门级别
     */
    public function set deptLevel(deptLevel : String):void {
        this._deptLevel = deptLevel
    }

    /** 
     *  有效期曉夞丅
     * 
     * @return 有效期
     */
    public function get effectiveTime():String {
        return this._effectiveTime;
    }

    /** 
     *  有效期
     * 
     * @param effectiveTime 有效期
     */
    public function set effectiveTime(effectiveTime : String):void {
        this._effectiveTime = effectiveTime
    }

    /** 
     *  部门描述曉夞丅
     * 
     * @return 部门描述
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  部门描述
     * 
     * @param descinfo 部门描述
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get orderIndex():String {
        return this._orderIndex;
    }

    /** 
     *  排序索引
     * 
     * @param orderIndex 排序索引
     */
    public function set orderIndex(orderIndex : String):void {
        this._orderIndex = orderIndex
    }

    /** 
     *  图标符号ID曉夞丅
     * 
     * @return 图标符号ID
     */
    override public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  图标符号ID
     * 
     * @param legendId 图标符号ID
     */
    override public function set legendId(legendId : String):void {
        this._legendId = legendId
    }

}
}
