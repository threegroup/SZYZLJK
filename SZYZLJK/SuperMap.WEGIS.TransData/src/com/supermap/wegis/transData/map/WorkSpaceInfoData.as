package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * TransData
 * 
 * TransData
 * 
 * @author supermap
 */
public class WorkSpaceInfoData extends BaseData {

    /**  工作空间ID */
    private var _workspaceId : String;

    /**  工作空间类型 */
    private var _workspaceType : String;

    /**  工作空间版本 */
    private var _workspaceVersion : String;

    /**  工作空间名称 */
    private var _workspaceName : String;

    /**  工作空间别名 */
    private var _workspaceAlice : String;

    /**  工作空间的数据库名称（只针对数据库） */
    private var _workspaceDbName : String;

    /**  工作空间的实例名称（只针对Oracle数据库） */
    private var _workspaceDbInstanse : String;

    /**  用户ID */
    private var _userId : String;

    /**  数据库型工作空间用户名 */
    private var _workspaceDbUserName : String;

    /**  数据库型工作空间密码 */
    private var _workspaceDbUserPwd : String;

    /** 
     *  工作空间ID曉夞丅
     * 
     * @return 工作空间ID
     */
    public function get workspaceId():String {
        return this._workspaceId;
    }

    /** 
     *  工作空间ID
     * 
     * @param workspaceId 工作空间ID
     */
    public function set workspaceId(workspaceId : String):void {
        this._workspaceId = workspaceId
    }

    /** 
     *  工作空间类型曉夞丅
     * 
     * @return 工作空间类型
     */
    public function get workspaceType():String {
        return this._workspaceType;
    }

    /** 
     *  工作空间类型
     * 
     * @param workspaceType 工作空间类型
     */
    public function set workspaceType(workspaceType : String):void {
        this._workspaceType = workspaceType
    }

    /** 
     *  工作空间版本曉夞丅
     * 
     * @return 工作空间版本
     */
    public function get workspaceVersion():String {
        return this._workspaceVersion;
    }

    /** 
     *  工作空间版本
     * 
     * @param workspaceVersion 工作空间版本
     */
    public function set workspaceVersion(workspaceVersion : String):void {
        this._workspaceVersion = workspaceVersion
    }

    /** 
     *  工作空间名称曉夞丅
     * 
     * @return 工作空间名称
     */
    public function get workspaceName():String {
        return this._workspaceName;
    }

    /** 
     *  工作空间名称
     * 
     * @param workspaceName 工作空间名称
     */
    public function set workspaceName(workspaceName : String):void {
        this._workspaceName = workspaceName
    }

    /** 
     *  工作空间别名曉夞丅
     * 
     * @return 工作空间别名
     */
    public function get workspaceAlice():String {
        return this._workspaceAlice;
    }

    /** 
     *  工作空间别名
     * 
     * @param workspaceAlice 工作空间别名
     */
    public function set workspaceAlice(workspaceAlice : String):void {
        this._workspaceAlice = workspaceAlice
    }

    /** 
     *  工作空间的数据库名称（只针对数据库）曉夞丅
     * 
     * @return 工作空间的数据库名称（只针对数据库）
     */
    public function get workspaceDbName():String {
        return this._workspaceDbName;
    }

    /** 
     *  工作空间的数据库名称（只针对数据库）
     * 
     * @param workspaceDbName 工作空间的数据库名称（只针对数据库）
     */
    public function set workspaceDbName(workspaceDbName : String):void {
        this._workspaceDbName = workspaceDbName
    }

    /** 
     *  工作空间的实例名称（只针对Oracle数据库）曉夞丅
     * 
     * @return 工作空间的实例名称（只针对Oracle数据库）
     */
    public function get workspaceDbInstanse():String {
        return this._workspaceDbInstanse;
    }

    /** 
     *  工作空间的实例名称（只针对Oracle数据库）
     * 
     * @param workspaceDbInstanse 工作空间的实例名称（只针对Oracle数据库）
     */
    public function set workspaceDbInstanse(workspaceDbInstanse : String):void {
        this._workspaceDbInstanse = workspaceDbInstanse
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
     *  数据库型工作空间用户名曉夞丅
     * 
     * @return 数据库型工作空间用户名
     */
    public function get workspaceDbUserName():String {
        return this._workspaceDbUserName;
    }

    /** 
     *  数据库型工作空间用户名
     * 
     * @param workspaceDbUserName 数据库型工作空间用户名
     */
    public function set workspaceDbUserName(workspaceDbUserName : String):void {
        this._workspaceDbUserName = workspaceDbUserName
    }

    /** 
     *  数据库型工作空间密码曉夞丅
     * 
     * @return 数据库型工作空间密码
     */
    public function get workspaceDbUserPwd():String {
        return this._workspaceDbUserPwd;
    }

    /** 
     *  数据库型工作空间密码
     * 
     * @param workspaceDbUserPwd 数据库型工作空间密码
     */
    public function set workspaceDbUserPwd(workspaceDbUserPwd : String):void {
        this._workspaceDbUserPwd = workspaceDbUserPwd
    }

}
}
