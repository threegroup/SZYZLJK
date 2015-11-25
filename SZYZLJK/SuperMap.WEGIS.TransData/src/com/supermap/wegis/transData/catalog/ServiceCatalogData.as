package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 服务资源目录表TransData
 * 
 * 服务资源目录表TransData
 * 
 * @author supermap
 */
public class ServiceCatalogData extends TreeNode {

    /**  节点ID */
    private var _nodeId : String;

    /**  服务ID */
    private var _serviceId : String;

    /**  节点名称 */
    private var _nodeName : String;

    /**  节点别名 */
    private var _nodeAlias : String;

    /**  父节点ID */
    private var _parentNodeId : String;

    /**  结点路径ID */
    private var _nodePathId : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  服务分类 */
    private var _serviceType : String;

    /**  图标符号ID */
    private var _legendId : String;

    /**  新父节点ID */
    private var _newParentNodeId : String;

    /**  用户ID */
    private var _userId : String;

    /**  节点状态 */
    private var _nodeState : String;

    /** 
     *  节点ID曉夞丅
     * 
     * @return 节点ID
     */
    override public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  节点ID
     * 
     * @param nodeId 节点ID
     */
    override public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  节点名称曉夞丅
     * 
     * @return 节点名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  节点名称
     * 
     * @param nodeName 节点名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

    /** 
     *  节点别名曉夞丅
     * 
     * @return 节点别名
     */
    public function get nodeAlias():String {
        return this._nodeAlias;
    }

    /** 
     *  节点别名
     * 
     * @param nodeAlias 节点别名
     */
    public function set nodeAlias(nodeAlias : String):void {
        this._nodeAlias = nodeAlias
    }

    /** 
     *  父节点ID曉夞丅
     * 
     * @return 父节点ID
     */
    override public function get parentNodeId():String {
        return this._parentNodeId;
    }

    /** 
     *  父节点ID
     * 
     * @param parentNodeId 父节点ID
     */
    override public function set parentNodeId(parentNodeId : String):void {
        this._parentNodeId = parentNodeId
    }

    /** 
     *  结点路径ID曉夞丅
     * 
     * @return 结点路径ID
     */
    public function get nodePathId():String {
        return this._nodePathId;
    }

    /** 
     *  结点路径ID
     * 
     * @param nodePathId 结点路径ID
     */
    public function set nodePathId(nodePathId : String):void {
        this._nodePathId = nodePathId
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
     *  服务分类曉夞丅
     * 
     * @return 服务分类
     */
    public function get serviceType():String {
        return this._serviceType;
    }

    /** 
     *  服务分类
     * 
     * @param serviceType 服务分类
     */
    public function set serviceType(serviceType : String):void {
        this._serviceType = serviceType
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

    /** 
     *  新父节点ID曉夞丅
     * 
     * @return 新父节点ID
     */
    override public function get newParentNodeId():String {
        return this._newParentNodeId;
    }

    /** 
     *  新父节点ID
     * 
     * @param newParentNodeId 新父节点ID
     */
    override public function set newParentNodeId(newParentNodeId : String):void {
        this._newParentNodeId = newParentNodeId
    }

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  节点状态曉夞丅
     * 
     * @return 节点状态
     */
    public function get nodeState():String {
        return this._nodeState;
    }

    /** 
     *  节点状态
     * 
     * @param nodeState 节点状态
     */
    public function set nodeState(nodeState : String):void {
        this._nodeState = nodeState
    }

}
}
