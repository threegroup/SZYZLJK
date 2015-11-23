package com.supermap.wegis.transData.search
{
import com.supermap.wegis.utils.TreeNode;

/** 
 * 文档资料的目录data
 * 
 * 文档资料的目录data
 * 
 * @author supermap
 */
public class DocCatalogTreeData extends TreeNode {

    /**  目录节点名称 */
    private var _nodeName : String;

    /**  目录节点描述 */
    private var _nodeDesc : String;

    /** 
     *  目录节点名称曉夞丅
     * 
     * @return 目录节点名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  目录节点名称
     * 
     * @param nodeName 目录节点名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

    /** 
     *  目录节点描述曉夞丅
     * 
     * @return 目录节点描述
     */
    public function get nodeDesc():String {
        return this._nodeDesc;
    }

    /** 
     *  目录节点描述
     * 
     * @param nodeDesc 目录节点描述
     */
    public function set nodeDesc(nodeDesc : String):void {
        this._nodeDesc = nodeDesc
    }

}
}
