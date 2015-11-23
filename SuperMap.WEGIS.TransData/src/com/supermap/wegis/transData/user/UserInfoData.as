package com.supermap.wegis.transData.user
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 用户信息Data
 * 
 * 用户信息Data
 * 
 * @author supermap
 */
public class UserInfoData extends BaseData {

    /**  用户ID */
    private var _userId : String;

    /**  登录名 */
    private var _loginName : String;

    /**  登录密码 */
    private var _loginPwd : String;

    /**  用户编号 */
    private var _userNo : String;

    /**  用户名称 */
    private var _userName : String;

    /**  用户简称 */
    private var _userShortname : String;

    /**  E-Mail */
    private var _userEmail : String;

    /**  用户地址 */
    private var _userAddress : String;

    /**  用户电话 */
    private var _userPhone : String;

    /**  创建日期 */
    private var _createDt : String;

    /**  更新日期 */
    private var _modifyDt : String;

    /**  最后一次登录日期 */
    private var _lastLoginDt : String;

    /**  登录次数 */
    private var _loginTimes : String;

    /**  用户状态 */
    private var _userState : String;

    /**  机器绑定IP地址 */
    private var _machineIp : String;

    /**  是否直接支持IP登录 */
    private var _ipLogin : String;

    /**  用户级别 */
    private var _userLevel : String;

    /**  用户有效时间 */
    private var _effectiveTime : String;

    /**  二级管理员 */
    private var _subManager : String;

    /**  用户描述 */
    private var _descinfo : String;

    /**  是否选中树的节点:true--选中；false--未选中 */
    private var _checked : String;

    /**  部门ID */
    private var _depId : String;

    /**  部门ID */
    private var _nodeId : String;

    /**  部门CODE */
    private var _nodeCode : String;

    /**  部门名称 */
    private var _nodeName : String;

    /**  部门简称 */
    private var _deptShortname : String;

    /**  部门状态 */
    private var _deptStatus : String;

    /**  部门领导 */
    private var _deptLeader : String;

    /**  部门类型 */
    private var _deptType : String;

    /**  父节点 */
    private var _parentNodeId : String;

    /**  节点路径ID */
    private var _nodePathId : String;

    /**  部门级别 */
    private var _deptLevel : String;

    /**  排序索引 */
    private var _orderIndex : String;

    /**  图标符号ID */
    private var _legendId : String;

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
     *  登录名曉夞丅
     * 
     * @return 登录名
     */
    public function get loginName():String {
        return this._loginName;
    }

    /** 
     *  登录名
     * 
     * @param loginName 登录名
     */
    public function set loginName(loginName : String):void {
        this._loginName = loginName
    }

    /** 
     *  登录密码曉夞丅
     * 
     * @return 登录密码
     */
    public function get loginPwd():String {
        return this._loginPwd;
    }

    /** 
     *  登录密码
     * 
     * @param loginPwd 登录密码
     */
    public function set loginPwd(loginPwd : String):void {
        this._loginPwd = loginPwd
    }

    /** 
     *  用户编号曉夞丅
     * 
     * @return 用户编号
     */
    public function get userNo():String {
        return this._userNo;
    }

    /** 
     *  用户编号
     * 
     * @param userNo 用户编号
     */
    public function set userNo(userNo : String):void {
        this._userNo = userNo
    }

    /** 
     *  用户名称曉夞丅
     * 
     * @return 用户名称
     */
    public function get userName():String {
        return this._userName;
    }

    /** 
     *  用户名称
     * 
     * @param userName 用户名称
     */
    public function set userName(userName : String):void {
        this._userName = userName
    }

    /** 
     *  用户简称曉夞丅
     * 
     * @return 用户简称
     */
    public function get userShortname():String {
        return this._userShortname;
    }

    /** 
     *  用户简称
     * 
     * @param userShortname 用户简称
     */
    public function set userShortname(userShortname : String):void {
        this._userShortname = userShortname
    }

    /** 
     *  E-Mail曉夞丅
     * 
     * @return E-Mail
     */
    public function get userEmail():String {
        return this._userEmail;
    }

    /** 
     *  E-Mail
     * 
     * @param userEmail E-Mail
     */
    public function set userEmail(userEmail : String):void {
        this._userEmail = userEmail
    }

    /** 
     *  用户地址曉夞丅
     * 
     * @return 用户地址
     */
    public function get userAddress():String {
        return this._userAddress;
    }

    /** 
     *  用户地址
     * 
     * @param userAddress 用户地址
     */
    public function set userAddress(userAddress : String):void {
        this._userAddress = userAddress
    }

    /** 
     *  用户电话曉夞丅
     * 
     * @return 用户电话
     */
    public function get userPhone():String {
        return this._userPhone;
    }

    /** 
     *  用户电话
     * 
     * @param userPhone 用户电话
     */
    public function set userPhone(userPhone : String):void {
        this._userPhone = userPhone
    }

    /** 
     *  创建日期曉夞丅
     * 
     * @return 创建日期
     */
    public function get createDt():String {
        return this._createDt;
    }

    /** 
     *  创建日期
     * 
     * @param createDt 创建日期
     */
    public function set createDt(createDt : String):void {
        this._createDt = createDt
    }

    /** 
     *  更新日期曉夞丅
     * 
     * @return 更新日期
     */
    public function get modifyDt():String {
        return this._modifyDt;
    }

    /** 
     *  更新日期
     * 
     * @param modifyDt 更新日期
     */
    public function set modifyDt(modifyDt : String):void {
        this._modifyDt = modifyDt
    }

    /** 
     *  最后一次登录日期曉夞丅
     * 
     * @return 最后一次登录日期
     */
    public function get lastLoginDt():String {
        return this._lastLoginDt;
    }

    /** 
     *  最后一次登录日期
     * 
     * @param lastLoginDt 最后一次登录日期
     */
    public function set lastLoginDt(lastLoginDt : String):void {
        this._lastLoginDt = lastLoginDt
    }

    /** 
     *  登录次数曉夞丅
     * 
     * @return 登录次数
     */
    public function get loginTimes():String {
        return this._loginTimes;
    }

    /** 
     *  登录次数
     * 
     * @param loginTimes 登录次数
     */
    public function set loginTimes(loginTimes : String):void {
        this._loginTimes = loginTimes
    }

    /** 
     *  用户状态曉夞丅
     * 
     * @return 用户状态
     */
    public function get userState():String {
        return this._userState;
    }

    /** 
     *  用户状态
     * 
     * @param userState 用户状态
     */
    public function set userState(userState : String):void {
        this._userState = userState
    }

    /** 
     *  机器绑定IP地址曉夞丅
     * 
     * @return 机器绑定IP地址
     */
    public function get machineIp():String {
        return this._machineIp;
    }

    /** 
     *  机器绑定IP地址
     * 
     * @param machineIp 机器绑定IP地址
     */
    public function set machineIp(machineIp : String):void {
        this._machineIp = machineIp
    }

    /** 
     *  是否直接支持IP登录曉夞丅
     * 
     * @return 是否直接支持IP登录
     */
    public function get ipLogin():String {
        return this._ipLogin;
    }

    /** 
     *  是否直接支持IP登录
     * 
     * @param ipLogin 是否直接支持IP登录
     */
    public function set ipLogin(ipLogin : String):void {
        this._ipLogin = ipLogin
    }

    /** 
     *  用户级别曉夞丅
     * 
     * @return 用户级别
     */
    public function get userLevel():String {
        return this._userLevel;
    }

    /** 
     *  用户级别
     * 
     * @param userLevel 用户级别
     */
    public function set userLevel(userLevel : String):void {
        this._userLevel = userLevel
    }

    /** 
     *  用户有效时间曉夞丅
     * 
     * @return 用户有效时间
     */
    public function get effectiveTime():String {
        return this._effectiveTime;
    }

    /** 
     *  用户有效时间
     * 
     * @param effectiveTime 用户有效时间
     */
    public function set effectiveTime(effectiveTime : String):void {
        this._effectiveTime = effectiveTime
    }

    /** 
     *  二级管理员曉夞丅
     * 
     * @return 二级管理员
     */
    public function get subManager():String {
        return this._subManager;
    }

    /** 
     *  二级管理员
     * 
     * @param subManager 二级管理员
     */
    public function set subManager(subManager : String):void {
        this._subManager = subManager
    }

    /** 
     *  用户描述曉夞丅
     * 
     * @return 用户描述
     */
    public function get descinfo():String {
        return this._descinfo;
    }

    /** 
     *  用户描述
     * 
     * @param descinfo 用户描述
     */
    public function set descinfo(descinfo : String):void {
        this._descinfo = descinfo
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
     *  部门ID曉夞丅
     * 
     * @return 部门ID
     */
    public function get depId():String {
        return this._depId;
    }

    /** 
     *  部门ID
     * 
     * @param depId 部门ID
     */
    public function set depId(depId : String):void {
        this._depId = depId
    }

    /** 
     *  部门ID曉夞丅
     * 
     * @return 部门ID
     */
    public function get nodeId():String {
        return this._nodeId;
    }

    /** 
     *  部门ID
     * 
     * @param nodeId 部门ID
     */
    public function set nodeId(nodeId : String):void {
        this._nodeId = nodeId
    }

    /** 
     *  部门CODE曉夞丅
     * 
     * @return 部门CODE
     */
    public function get nodeCode():String {
        return this._nodeCode;
    }

    /** 
     *  部门CODE
     * 
     * @param nodeCode 部门CODE
     */
    public function set nodeCode(nodeCode : String):void {
        this._nodeCode = nodeCode
    }

    /** 
     *  部门名称曉夞丅
     * 
     * @return 部门名称
     */
    public function get nodeName():String {
        return this._nodeName;
    }

    /** 
     *  部门名称
     * 
     * @param nodeName 部门名称
     */
    public function set nodeName(nodeName : String):void {
        this._nodeName = nodeName
    }

    /** 
     *  部门简称曉夞丅
     * 
     * @return 部门简称
     */
    public function get deptShortname():String {
        return this._deptShortname;
    }

    /** 
     *  部门简称
     * 
     * @param deptShortname 部门简称
     */
    public function set deptShortname(deptShortname : String):void {
        this._deptShortname = deptShortname
    }

    /** 
     *  部门状态曉夞丅
     * 
     * @return 部门状态
     */
    public function get deptStatus():String {
        return this._deptStatus;
    }

    /** 
     *  部门状态
     * 
     * @param deptStatus 部门状态
     */
    public function set deptStatus(deptStatus : String):void {
        this._deptStatus = deptStatus
    }

    /** 
     *  部门领导曉夞丅
     * 
     * @return 部门领导
     */
    public function get deptLeader():String {
        return this._deptLeader;
    }

    /** 
     *  部门领导
     * 
     * @param deptLeader 部门领导
     */
    public function set deptLeader(deptLeader : String):void {
        this._deptLeader = deptLeader
    }

    /** 
     *  部门类型曉夞丅
     * 
     * @return 部门类型
     */
    public function get deptType():String {
        return this._deptType;
    }

    /** 
     *  部门类型
     * 
     * @param deptType 部门类型
     */
    public function set deptType(deptType : String):void {
        this._deptType = deptType
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
     *  部门级别曉夞丅
     * 
     * @return 部门级别
     */
    public function get deptLevel():String {
        return this._deptLevel;
    }

    /** 
     *  部门级别
     * 
     * @param deptLevel 部门级别
     */
    public function set deptLevel(deptLevel : String):void {
        this._deptLevel = deptLevel
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

}
}
