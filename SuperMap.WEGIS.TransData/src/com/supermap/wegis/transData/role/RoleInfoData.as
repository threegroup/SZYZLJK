package com.supermap.wegis.transData.role
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * RoleInfoData
 * 
 * RoleInfoData
 * 
 * @author supermap
 */
public class RoleInfoData extends BaseData {

    /**  角色ID */
    private var _nodeId : String;

    /**  角色名称 */
    private var _roleName : String;

    /**  角色级别 */
    private var _roleLevel : String;

    /**  角色表述 */
    private var _descinfo : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  节点是否可用 */
    private var _nodeState : String;

    /**  角色深度 */
    private var _treeLevel : String;

    /** 
     *  角色ID曉夞丅
     * 
     * @return 角色ID
     */
    public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  角色ID
     * 
     * @param nodeId 角色ID
     */
    public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  角色名称曉夞丅
     * 
     * @return 角色名称
     */
    public function get roleName():String {
        return this._roleName;
    }

    /** 
     *  角色名称
     * 
     * @param roleName 角色名称
     */
    public function set roleName(roleName : String):void {
        this._roleName = roleName
    }

    /** 
     *  角色级别曉夞丅
     * 
     * @return 角色级别
     */
    public function get roleLevel():String {
        return this._roleLevel;
    }

    /** 
     *  角色级别
     * 
     * @param roleLevel 角色级别
     */
    public function set roleLevel(roleLevel : String):void {
        this._roleLevel = roleLevel
    }

    /** 
     *  角色表述曉夞丅
     * 
     * @return 角色表述
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  角色表述
     * 
     * @param descinfo 角色表述
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
     *  父节点曉夞丅
     * 
     * @return 父节点
     */
    public function get parentNodeId():String {
        return this._parentNodeId;
    }

    /** 
     *  父节点
     * 
     * @param parentNodeId 父节点
     */
    public function set parentNodeId(parentNodeId : String):void {
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
     *  节点是否可用曉夞丅
     * 
     * @return 节点是否可用
     */
    public function get nodeState():String {
        return this._nodeState;
    }

    /** 
     *  节点是否可用
     * 
     * @param nodeState 节点是否可用
     */
    public function set nodeState(nodeState : String):void {
        this._nodeState = nodeState
    }

    /** 
     *  角色深度曉夞丅
     * 
     * @return 角色深度
     */
    public function get treeLevel():String {
        return this._treeLevel;
    }

    /** 
     *  角色深度
     * 
     * @param treeLevel 角色深度
     */
    public function set treeLevel(treeLevel : String):void {
        this._treeLevel = treeLevel
    }

}
}
