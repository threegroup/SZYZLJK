package com.supermap.wegis.transData.catalog
{
import com.supermap.wegis.services.data.BaseData;
import Boolean;

/** 
 * 区域目录表TransData
 * 
 * 区域目录表TransData
 * 
 * @author supermap
 */
public class AreaCatalogNoChildrenData extends BaseData {

    /**  节点ID */
    private var _nodeId : String;

    /**  名称 */
    private var _nodeName : String;

    /**  别名 */
    private var _secondName : String;

    /**  父节点ID */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  区域编码 */
    private var _areaCode : String;

    /**  区域级别 */
    private var _areaLevel : String;

    /**  中心点X */
    private var _centerX : String;

    /**  中心点Y */
    private var _centerY : String;

    /**  比例尺级别 */
    private var _scaleLevel : String;

    /**  显示范围 */
    private var _mapBounds : String;

    /**  区域类型 */
    private var _areaType : String;

    /**  所属管委会 */
    private var _belongs : String;

    /**  图标符号ID */
    private var _legendId : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  显示范围节点信息 */
    private var _mapBoundsNodes : String;

    /**  是否已经添加过 */
    private var _addedNode : Boolean;

    /**  新父节点ID */
    private var _newParentNodeId : String;

    /**  获取树的级数 */
    private var _treeLevel : String;

    /**  结点类型：枝，叶 */
    private var _nodeType : String;

    /** 
     *  节点ID曉夞丅
     * 
     * @return 节点ID
     */
    public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  节点ID
     * 
     * @param nodeId 节点ID
     */
    public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  名称曉夞丅
     * 
     * @return 名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  名称
     * 
     * @param nodeName 名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

    /** 
     *  别名曉夞丅
     * 
     * @return 别名
     */
    public function get secondName():String {
        return this._secondName;
    }

    /** 
     *  别名
     * 
     * @param secondName 别名
     */
    public function set secondName(secondName : String):void {
        this._secondName = secondName
    }

    /** 
     *  父节点ID曉夞丅
     * 
     * @return 父节点ID
     */
    public function get parentNodeId():String {
        return this._parentNodeId;
    }

    /** 
     *  父节点ID
     * 
     * @param parentNodeId 父节点ID
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
     *  区域编码曉夞丅
     * 
     * @return 区域编码
     */
    public function get areaCode():String {
        return this._areaCode;
    }

    /** 
     *  区域编码
     * 
     * @param areaCode 区域编码
     */
    public function set areaCode(areaCode : String):void {
        this._areaCode = areaCode
    }

    /** 
     *  区域级别曉夞丅
     * 
     * @return 区域级别
     */
    public function get areaLevel():String {
        return this._areaLevel;
    }

    /** 
     *  区域级别
     * 
     * @param areaLevel 区域级别
     */
    public function set areaLevel(areaLevel : String):void {
        this._areaLevel = areaLevel
    }

    /** 
     *  中心点X曉夞丅
     * 
     * @return 中心点X
     */
    public function get centerX():String {
        return this._centerX;
    }

    /** 
     *  中心点X
     * 
     * @param centerX 中心点X
     */
    public function set centerX(centerX : String):void {
        this._centerX = centerX
    }

    /** 
     *  中心点Y曉夞丅
     * 
     * @return 中心点Y
     */
    public function get centerY():String {
        return this._centerY;
    }

    /** 
     *  中心点Y
     * 
     * @param centerY 中心点Y
     */
    public function set centerY(centerY : String):void {
        this._centerY = centerY
    }

    /** 
     *  比例尺级别曉夞丅
     * 
     * @return 比例尺级别
     */
    public function get scaleLevel():String {
        return this._scaleLevel;
    }

    /** 
     *  比例尺级别
     * 
     * @param scaleLevel 比例尺级别
     */
    public function set scaleLevel(scaleLevel : String):void {
        this._scaleLevel = scaleLevel
    }

    /** 
     *  显示范围曉夞丅
     * 
     * @return 显示范围
     */
    public function get mapBounds():String {
        return this._mapBounds;
    }

    /** 
     *  显示范围
     * 
     * @param mapBounds 显示范围
     */
    public function set mapBounds(mapBounds : String):void {
        this._mapBounds = mapBounds
    }

    /** 
     *  区域类型曉夞丅
     * 
     * @return 区域类型
     */
    public function get areaType():String {
        return this._areaType;
    }

    /** 
     *  区域类型
     * 
     * @param areaType 区域类型
     */
    public function set areaType(areaType : String):void {
        this._areaType = areaType
    }

    /** 
     *  所属管委会曉夞丅
     * 
     * @return 所属管委会
     */
    public function get belongs():String {
        return this._belongs;
    }

    /** 
     *  所属管委会
     * 
     * @param belongs 所属管委会
     */
    public function set belongs(belongs : String):void {
        this._belongs = belongs
    }

    /** 
     *  图标符号ID曉夞丅
     * 
     * @return 图标符号ID
     */
    public function get legendId():String {
        return this._legendId;
    }

    /** 
     *  图标符号ID
     * 
     * @param legendId 图标符号ID
     */
    public function set legendId(legendId : String):void {
        this._legendId = legendId
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
     *  显示范围节点信息曉夞丅
     * 
     * @return 显示范围节点信息
     */
    public function get mapBoundsNodes():String {
        return this._mapBoundsNodes;
    }

    /** 
     *  显示范围节点信息
     * 
     * @param mapBoundsNodes 显示范围节点信息
     */
    public function set mapBoundsNodes(mapBoundsNodes : String):void {
        this._mapBoundsNodes = mapBoundsNodes
    }

    /** 
     *  是否已经添加过曉夞丅
     * 
     * @return 是否已经添加过
     */
    public function get addedNode():Boolean {
        return this._addedNode;
    }

    /** 
     *  是否已经添加过
     * 
     * @param addedNode 是否已经添加过
     */
    public function set addedNode(addedNode : Boolean):void {
        this._addedNode = addedNode
    }

    /** 
     *  新父节点ID曉夞丅
     * 
     * @return 新父节点ID
     */
    public function get newParentNodeId():String {
        return this._newParentNodeId;
    }

    /** 
     *  新父节点ID
     * 
     * @param newParentNodeId 新父节点ID
     */
    public function set newParentNodeId(newParentNodeId : String):void {
        this._newParentNodeId = newParentNodeId
    }

    /** 
     *  获取树的级数曉夞丅
     * 
     * @return 获取树的级数
     */
    public function get treeLevel():String {
        return this._treeLevel;
    }

    /** 
     *  获取树的级数
     * 
     * @param treeLevel 获取树的级数
     */
    public function set treeLevel(treeLevel : String):void {
        this._treeLevel = treeLevel
    }

    /** 
     *  结点类型：枝，叶曉夞丅
     * 
     * @return 结点类型：枝，叶
     */
    public function get nodeType():String {
        return this._nodeType;
    }

    /** 
     *  结点类型：枝，叶
     * 
     * @param nodeType 结点类型：枝，叶
     */
    public function set nodeType(nodeType : String):void {
        this._nodeType = nodeType
    }

}
}
