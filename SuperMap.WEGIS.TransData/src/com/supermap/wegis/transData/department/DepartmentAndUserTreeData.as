package com.supermap.wegis.transData.department
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 部门表Dao入出参数
 * 
 * 部门表Dao入出参数
 * 
 * @author supermap
 */
public class DepartmentAndUserTreeData extends TreeNode {

    /**  节点ID */
    private var _nodeId : String;

    /**  用户id */
    private var _userId : String;

    /**  节点名称 */
    private var _nodeName : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  节点类型:0：表示用户；1：表示部门 */
    private var _deptUserType : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  是否选中树的节点:true--选中；false--未选中 */
    private var _checked : String;

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
     *  用户id曉夞丅
     * 
     * @return 用户id
     */
    public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户id
     * 
     * @param userId 用户id
     */
    public function set userId(userId : String):void {
        this._userId = userId
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
     *  节点类型:0：表示用户；1：表示部门曉夞丅
     * 
     * @return 节点类型:0：表示用户；1：表示部门
     */
    public function get deptUserType():String {
        return this._deptUserType;
    }

    /** 
     *  节点类型:0：表示用户；1：表示部门
     * 
     * @param deptUserType 节点类型:0：表示用户；1：表示部门
     */
    public function set deptUserType(deptUserType : String):void {
        this._deptUserType = deptUserType
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
     *  是否选中树的节点:true--选中；false--未选中曉夞丅
     * 
     * @return 是否选中树的节点:true--选中；false--未选中
     */
    public function get checked():String {
        return this._checked;
    }

    /** 
     *  是否选中树的节点:true--选中；false--未选中
     * 
     * @param checked 是否选中树的节点:true--选中；false--未选中
     */
    public function set checked(checked : String):void {
        this._checked = checked
    }

}
}
