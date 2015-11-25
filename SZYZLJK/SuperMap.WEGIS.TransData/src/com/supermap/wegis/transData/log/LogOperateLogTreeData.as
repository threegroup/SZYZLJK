package com.supermap.wegis.transData.log
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 系统业务日志RequestData
 * 
 * 系统业务日志RequestData
 * 
 * @author supermap
 */
public class LogOperateLogTreeData extends TreeNode {

    /**  记录ID */
    private var _nodeId : String;

    /**  操作类型 */
    private var _operationType : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  日志信息 */
    private var _logInfo : String;

    /**  图标符号ID */
    private var _legendId : String;

    /**  是否选中树的节点:true--选中；false--未选中 */
    private var _checked : String;

    /**  节点名称 */
    private var _nodeName : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /** 
     *  记录ID曉夞丅
     * 
     * @return 记录ID
     */
    override public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  记录ID
     * 
     * @param nodeId 记录ID
     */
    override public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  操作类型曉夞丅
     * 
     * @return 操作类型
     */
    public function get operationType():String {
        return this._operationType;
    }

    /** 
     *  操作类型
     * 
     * @param operationType 操作类型
     */
    public function set operationType(operationType : String):void {
        this._operationType = operationType
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
     *  日志信息曉夞丅
     * 
     * @return 日志信息
     */
    public function get logInfo():String {
        return this._logInfo;
    }

    /** 
     *  日志信息
     * 
     * @param logInfo 日志信息
     */
    public function set logInfo(logInfo : String):void {
        this._logInfo = logInfo
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

}
}
