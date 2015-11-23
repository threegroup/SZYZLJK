package com.supermap.wegis.transData.advancedsearch
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得高级查询条件
 * 
 * 取得高级查询条件
 * 
 * @author supermap
 */
public class GetSearchDataRequestData extends RequestData {

    /**  检索条件 */
    private var _nodeList : Array;

    /**  表名 */
    private var _tableName : String;

    /**  检索显示字段 */
    private var _fieldList : Array;

    /**  是否导出excel 0不倒出,1导出 */
    private var _isExport : String;

	private var _areaCode : String;

	/**  区域代码 */
	public function get areaCode():String
	{
		return _areaCode;
	}

	/**
	 * @private
	 */
	public function set areaCode(value:String):void
	{
		_areaCode = value;
	}

    /** 
     *  检索条件曉夞丅
     * 
     * @return 检索条件
     */
    public function get nodeList():Array {
        return this._nodeList;
    }

    /** 
     *  检索条件
     * 
     * @param nodeList 检索条件
     */
    public function set nodeList(nodeList : Array):void {
        this._nodeList = nodeList
    }

    /** 
     *  表名曉夞丅
     * 
     * @return 表名
     */
    public function get tableName():String {
        return this._tableName;
    }

    /** 
     *  表名
     * 
     * @param tableName 表名
     */
    public function set tableName(tableName : String):void {
        this._tableName = tableName
    }

    /** 
     *  检索显示字段曉夞丅
     * 
     * @return 检索显示字段
     */
    public function get fieldList():Array {
        return this._fieldList;
    }

    /** 
     *  检索显示字段
     * 
     * @param fieldList 检索显示字段
     */
    public function set fieldList(fieldList : Array):void {
        this._fieldList = fieldList
    }

    /** 
     *  是否导出excel 0不倒出,1导出曉夞丅
     * 
     * @return 是否导出excel 0不倒出,1导出
     */
    public function get isExport():String {
        return this._isExport;
    }

    /** 
     *  是否导出excel 0不倒出,1导出
     * 
     * @param isExport 是否导出excel 0不倒出,1导出
     */
    public function set isExport(isExport : String):void {
        this._isExport = isExport
    }

}
}
