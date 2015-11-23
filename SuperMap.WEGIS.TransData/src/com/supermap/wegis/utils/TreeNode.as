package com.supermap.wegis.utils
{

/** 
 * 逶ｮ蠖謬ransData
 * 
 * 逶ｮ蠖謬ransData
 * 
 * @author supermap
 */
 
public class TreeNode {

    /**  闃らせID */
    private var _nodeId : String;

    /**  蟄先� */
    private var _children :Array;

    /**  辷ｶ闃らせID */
    private var _parentNodeId : String;

    /**  譁ｰ辷ｶ闃らせID */
    private var _newParentNodeId : String;

    /**  譬醍噪郤ｧ謨ｰ */
    private var _treeLevel : String;

    /**  蝗ｾ譬�ｬｦ蜿ｷID */
    private var _legendId : String;

    /**  扈鍋せ邀ｻ蝙具ｼ壽椌�悟掌 */
    private var _nodeType : String;

    /** 
     *  闃らせID譖牙､樔ｸ�
     * 
     * @return 闃らせID
     */
    public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  闃らせID
     * 
     * @param nodeId 闃らせID
     */
    public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  蟄先�譖牙､樔ｸ�
     * 
     * @return 蟄先�
     */
    public function get children():Array {
        return this._children;
    }

    /** 
     *  蟄先�
     * 
     * @param children 蟄先�
     */
    public function set children(children :Array):void {
        this._children = children
    }

    /** 
     *  辷ｶ闃らせID譖牙､樔ｸ�
     * 
     * @return 辷ｶ闃らせID
     */
    public function get parentNodeId():String {
        return this._parentNodeId;
    }

    /** 
     *  辷ｶ闃らせID
     * 
     * @param parentNodeId 辷ｶ闃らせID
     */
    public function set parentNodeId(parentNodeId : String):void {
        this._parentNodeId = parentNodeId
    }

    /** 
     *  譁ｰ辷ｶ闃らせID譖牙､樔ｸ�
     * 
     * @return 譁ｰ辷ｶ闃らせID
     */
    public function get newParentNodeId():String {
        return this._newParentNodeId;
    }

    /** 
     *  譁ｰ辷ｶ闃らせID
     * 
     * @param newParentNodeId 譁ｰ辷ｶ闃らせID
     */
    public function set newParentNodeId(newParentNodeId : String):void {
        this._newParentNodeId = newParentNodeId
    }

    /** 
     *  譬醍噪郤ｧ謨ｰ譖牙､樔ｸ�
     * 
     * @return 譬醍噪郤ｧ謨ｰ
     */
    public function get treeLevel():String {
        return this._treeLevel;
    }

    /** 
     *  譬醍噪郤ｧ謨ｰ
     * 
     * @param treeLevel 譬醍噪郤ｧ謨ｰ
     */
    public function set treeLevel(treeLevel : String):void {
        this._treeLevel = treeLevel
    }

    /** 
     *  蝗ｾ譬�ｬｦ蜿ｷID譖牙､樔ｸ�
     * 
     * @return 蝗ｾ譬�ｬｦ蜿ｷID
     */
    public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  蝗ｾ譬�ｬｦ蜿ｷID
     * 
     * @param legendId 蝗ｾ譬�ｬｦ蜿ｷID
     */
    public function set legendId(legendId : String):void {
        this._legendId = legendId
    }

    /** 
     *  扈鍋せ邀ｻ蝙具ｼ壽椌�悟掌譖牙､樔ｸ�
     * 
     * @return 扈鍋せ邀ｻ蝙具ｼ壽椌�悟掌
     */
    public function get nodeType():String {
        return this._nodeType;
    }

    /** 
     *  扈鍋せ邀ｻ蝙具ｼ壽椌�悟掌
     * 
     * @param nodeType 扈鍋せ邀ｻ蝙具ｼ壽椌�悟掌
     */
    public function set nodeType(nodeType : String):void {
        this._nodeType = nodeType
    }

}
}
