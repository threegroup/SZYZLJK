package com.supermap.wegis.transData.role
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 功能列表树
 * 
 * FunctionTreeData
 * 
 * @author supermap
 */
public class FunctionTreeData extends TreeNode {

    /**  功能ID */
    private var _nodeId : String;

    /**  功能名称 */
    private var _functionName : String;

    /**  功能类型 */
    private var _functionType : String;

    /**  功能描述 */
    private var _functionDesc : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  是否选中树的节点:true--选中；false--未选中 */
    private var _checked : String;

    /**  节点是否可用 */
    private var _nodeState : String;

    /**  功能Key */
    private var _functionKey : String;

    /** 
     *  功能ID曉夞丅
     * 
     * @return 功能ID
     */
    override public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  功能ID
     * 
     * @param nodeId 功能ID
     */
    override public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  功能名称曉夞丅
     * 
     * @return 功能名称
     */
    public function get functionName():String {
        return this._functionName;
    }

    /** 
     *  功能名称
     * 
     * @param functionName 功能名称
     */
    public function set functionName(functionName : String):void {
        this._functionName = functionName
    }

    /** 
     *  功能类型曉夞丅
     * 
     * @return 功能类型
     */
    public function get functionType():String {
        return this._functionType;
    }

    /** 
     *  功能类型
     * 
     * @param functionType 功能类型
     */
    public function set functionType(functionType : String):void {
        this._functionType = functionType
    }

    /** 
     *  功能描述曉夞丅
     * 
     * @return 功能描述
     */
    public function get functionDesc():String {
        return this._functionDesc;
    }

    /** 
     *  功能描述
     * 
     * @param functionDesc 功能描述
     */
    public function set functionDesc(functionDesc : String):void {
        this._functionDesc = functionDesc
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
     *  功能Key曉夞丅
     * 
     * @return 功能Key
     */
    public function get functionKey():String {
        return this._functionKey;
    }

    /** 
     *  功能Key
     * 
     * @param functionKey 功能Key
     */
    public function set functionKey(functionKey : String):void {
        this._functionKey = functionKey
    }

}
}
