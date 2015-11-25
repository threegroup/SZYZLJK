package com.supermap.wegis.transData.fm_o.fm_o_06.fm_o_06_04.domain
{
import com.supermap.wegis.utils.TreeNode;
import Number;

/** 
 * TransData
 * 
 * TransData
 * 
 * @author supermap
 */
public class FM_O_06_04_AO extends TreeNode {

    /**  主键 */
    private var _FC00 : String;

    /**  所属专题ID */
    private var _FC01 : String;

    /**  是否显示 */
    private var _FN02 : Number;

    /**  图层名称 */
    private var _FC03 : String;

    /**  图层路径 */
    private var _FC04 : String;

    /**  图层状态 */
    private var _FC05 : String;

    /**  图层类型 */
    private var _FC06 : String;

    /**  图例ID */
    private var _FC07 : String;

    /**  图例类型 */
    private var _FC08 : String;

    /**  图例类型名称 */
    private var _FC09 : String;

    /**  图例地址 */
    private var _FC10 : String;

    /**  图例名称 */
    private var _FC11 : String;

    /**  图层父节点 */
    private var _FC12 : String;

    /**  服务子IDS */
    private var _FC13 : String;

    /**  服务名称 */
    private var _FC14 : String;

    /**  服务能力 */
    private var _FC15 : String;

    /**  服务类型 */
    private var _FC16 : String;

    /**  服务查询类型 */
    private var _FC17 : String;

    /**  服务地址 */
    private var _FC18 : String;

    /**  排序索引 */
    private var _FN19 : Number;

    /**  备用字段A */
    private var _FC20 : String;

    /**  备用字段B */
    private var _FC21 : String;

    /**  备用字段C */
    private var _FC22 : String;

    /**  登陆名 */
    private var _FC23 : String;

    /**  系统标识码 */
    private var _FC24 : String;

    /**  对应基础服务 */
    private var _BaseServerInfo : Array;

    /**  节点ID */
    private var _NODEID : String;

    /**  节点名称 */
    private var _NODENAME : String;

    /**  节点别名 */
    private var _NODEALIAS : String;

    /**  父节点ID */
    private var _PARENTNODEID : String;

    /**  节点路径 */
    private var _NODEPATHID : String;

    /**  图例ID */
    private var _LEGENDID : String;

    /**  节点状态 */
    private var _NODESTATE : String;

    /**  服务地址 */
    private var _ORIGINURL : String;

    /**  MIDDLETYPE */
    private var _MIDDLETYPE : String;

    /**  图例地址 */
    private var _LEGENDURL : String;

    /**  是否选中 */
    private var _CHECKED : String;

    /** 
     *  主键曉夞丅
     * 
     * @return 主键
     */
    public function get FC00():String {
        return this._FC00;
    }

    /** 
     *  主键
     * 
     * @param FC00 主键
     */
    public function set FC00(FC00 : String):void {
        this._FC00 = FC00
    }

    /** 
     *  所属专题ID曉夞丅
     * 
     * @return 所属专题ID
     */
    public function get FC01():String {
        return this._FC01;
    }

    /** 
     *  所属专题ID
     * 
     * @param FC01 所属专题ID
     */
    public function set FC01(FC01 : String):void {
        this._FC01 = FC01
    }

    /** 
     *  是否显示曉夞丅
     * 
     * @return 是否显示
     */
    public function get FN02():Number {
        return this._FN02;
    }

    /** 
     *  是否显示
     * 
     * @param FN02 是否显示
     */
    public function set FN02(FN02 : Number):void {
        this._FN02 = FN02
    }

    /** 
     *  图层名称曉夞丅
     * 
     * @return 图层名称
     */
    public function get FC03():String {
        return this._FC03;
    }

    /** 
     *  图层名称
     * 
     * @param FC03 图层名称
     */
    public function set FC03(FC03 : String):void {
        this._FC03 = FC03
    }

    /** 
     *  图层路径曉夞丅
     * 
     * @return 图层路径
     */
    public function get FC04():String {
        return this._FC04;
    }

    /** 
     *  图层路径
     * 
     * @param FC04 图层路径
     */
    public function set FC04(FC04 : String):void {
        this._FC04 = FC04
    }

    /** 
     *  图层状态曉夞丅
     * 
     * @return 图层状态
     */
    public function get FC05():String {
        return this._FC05;
    }

    /** 
     *  图层状态
     * 
     * @param FC05 图层状态
     */
    public function set FC05(FC05 : String):void {
        this._FC05 = FC05
    }

    /** 
     *  图层类型曉夞丅
     * 
     * @return 图层类型
     */
    public function get FC06():String {
        return this._FC06;
    }

    /** 
     *  图层类型
     * 
     * @param FC06 图层类型
     */
    public function set FC06(FC06 : String):void {
        this._FC06 = FC06
    }

    /** 
     *  图例ID曉夞丅
     * 
     * @return 图例ID
     */
    public function get FC07():String {
        return this._FC07;
    }

    /** 
     *  图例ID
     * 
     * @param FC07 图例ID
     */
    public function set FC07(FC07 : String):void {
        this._FC07 = FC07
    }

    /** 
     *  图例类型曉夞丅
     * 
     * @return 图例类型
     */
    public function get FC08():String {
        return this._FC08;
    }

    /** 
     *  图例类型
     * 
     * @param FC08 图例类型
     */
    public function set FC08(FC08 : String):void {
        this._FC08 = FC08
    }

    /** 
     *  图例类型名称曉夞丅
     * 
     * @return 图例类型名称
     */
    public function get FC09():String {
        return this._FC09;
    }

    /** 
     *  图例类型名称
     * 
     * @param FC09 图例类型名称
     */
    public function set FC09(FC09 : String):void {
        this._FC09 = FC09
    }

    /** 
     *  图例地址曉夞丅
     * 
     * @return 图例地址
     */
    public function get FC10():String {
        return this._FC10;
    }

    /** 
     *  图例地址
     * 
     * @param FC10 图例地址
     */
    public function set FC10(FC10 : String):void {
        this._FC10 = FC10
    }

    /** 
     *  图例名称曉夞丅
     * 
     * @return 图例名称
     */
    public function get FC11():String {
        return this._FC11;
    }

    /** 
     *  图例名称
     * 
     * @param FC11 图例名称
     */
    public function set FC11(FC11 : String):void {
        this._FC11 = FC11
    }

    /** 
     *  图层父节点曉夞丅
     * 
     * @return 图层父节点
     */
    public function get FC12():String {
        return this._FC12;
    }

    /** 
     *  图层父节点
     * 
     * @param FC12 图层父节点
     */
    public function set FC12(FC12 : String):void {
        this._FC12 = FC12
    }

    /** 
     *  服务子IDS曉夞丅
     * 
     * @return 服务子IDS
     */
    public function get FC13():String {
        return this._FC13;
    }

    /** 
     *  服务子IDS
     * 
     * @param FC13 服务子IDS
     */
    public function set FC13(FC13 : String):void {
        this._FC13 = FC13
    }

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get FC14():String {
        return this._FC14;
    }

    /** 
     *  服务名称
     * 
     * @param FC14 服务名称
     */
    public function set FC14(FC14 : String):void {
        this._FC14 = FC14
    }

    /** 
     *  服务能力曉夞丅
     * 
     * @return 服务能力
     */
    public function get FC15():String {
        return this._FC15;
    }

    /** 
     *  服务能力
     * 
     * @param FC15 服务能力
     */
    public function set FC15(FC15 : String):void {
        this._FC15 = FC15
    }

    /** 
     *  服务类型曉夞丅
     * 
     * @return 服务类型
     */
    public function get FC16():String {
        return this._FC16;
    }

    /** 
     *  服务类型
     * 
     * @param FC16 服务类型
     */
    public function set FC16(FC16 : String):void {
        this._FC16 = FC16
    }

    /** 
     *  服务查询类型曉夞丅
     * 
     * @return 服务查询类型
     */
    public function get FC17():String {
        return this._FC17;
    }

    /** 
     *  服务查询类型
     * 
     * @param FC17 服务查询类型
     */
    public function set FC17(FC17 : String):void {
        this._FC17 = FC17
    }

    /** 
     *  服务地址曉夞丅
     * 
     * @return 服务地址
     */
    public function get FC18():String {
        return this._FC18;
    }

    /** 
     *  服务地址
     * 
     * @param FC18 服务地址
     */
    public function set FC18(FC18 : String):void {
        this._FC18 = FC18
    }

    /** 
     *  排序索引曉夞丅
     * 
     * @return 排序索引
     */
    public function get FN19():Number {
        return this._FN19;
    }

    /** 
     *  排序索引
     * 
     * @param FN19 排序索引
     */
    public function set FN19(FN19 : Number):void {
        this._FN19 = FN19
    }

    /** 
     *  备用字段A曉夞丅
     * 
     * @return 备用字段A
     */
    public function get FC20():String {
        return this._FC20;
    }

    /** 
     *  备用字段A
     * 
     * @param FC20 备用字段A
     */
    public function set FC20(FC20 : String):void {
        this._FC20 = FC20
    }

    /** 
     *  备用字段B曉夞丅
     * 
     * @return 备用字段B
     */
    public function get FC21():String {
        return this._FC21;
    }

    /** 
     *  备用字段B
     * 
     * @param FC21 备用字段B
     */
    public function set FC21(FC21 : String):void {
        this._FC21 = FC21
    }

    /** 
     *  备用字段C曉夞丅
     * 
     * @return 备用字段C
     */
    public function get FC22():String {
        return this._FC22;
    }

    /** 
     *  备用字段C
     * 
     * @param FC22 备用字段C
     */
    public function set FC22(FC22 : String):void {
        this._FC22 = FC22
    }

    /** 
     *  登陆名曉夞丅
     * 
     * @return 登陆名
     */
    public function get FC23():String {
        return this._FC23;
    }

    /** 
     *  登陆名
     * 
     * @param FC23 登陆名
     */
    public function set FC23(FC23 : String):void {
        this._FC23 = FC23
    }

    /** 
     *  系统标识码曉夞丅
     * 
     * @return 系统标识码
     */
    public function get FC24():String {
        return this._FC24;
    }

    /** 
     *  系统标识码
     * 
     * @param FC24 系统标识码
     */
    public function set FC24(FC24 : String):void {
        this._FC24 = FC24
    }

    /** 
     *  对应基础服务曉夞丅
     * 
     * @return 对应基础服务
     */
    public function get BaseServerInfo():Array {
        return this._BaseServerInfo;
    }

    /** 
     *  对应基础服务
     * 
     * @param BaseServerInfo 对应基础服务
     */
    public function set BaseServerInfo(BaseServerInfo : Array):void {
        this._BaseServerInfo = BaseServerInfo
    }

    /** 
     *  节点ID曉夞丅
     * 
     * @return 节点ID
     */
    public function get NODEID():String {
        return this._NODEID;
    }

    /** 
     *  节点ID
     * 
     * @param NODEID 节点ID
     */
    public function set NODEID(NODEID : String):void {
        this._NODEID = NODEID
    }

    /** 
     *  节点名称曉夞丅
     * 
     * @return 节点名称
     */
    public function get NODENAME():String {
        return this._NODENAME;
    }

    /** 
     *  节点名称
     * 
     * @param NODENAME 节点名称
     */
    public function set NODENAME(NODENAME : String):void {
        this._NODENAME = NODENAME
    }

    /** 
     *  节点别名曉夞丅
     * 
     * @return 节点别名
     */
    public function get NODEALIAS():String {
        return this._NODEALIAS;
    }

    /** 
     *  节点别名
     * 
     * @param NODEALIAS 节点别名
     */
    public function set NODEALIAS(NODEALIAS : String):void {
        this._NODEALIAS = NODEALIAS
    }

    /** 
     *  父节点ID曉夞丅
     * 
     * @return 父节点ID
     */
    public function get PARENTNODEID():String {
        return this._PARENTNODEID;
    }

    /** 
     *  父节点ID
     * 
     * @param PARENTNODEID 父节点ID
     */
    public function set PARENTNODEID(PARENTNODEID : String):void {
        this._PARENTNODEID = PARENTNODEID
    }

    /** 
     *  节点路径曉夞丅
     * 
     * @return 节点路径
     */
    public function get NODEPATHID():String {
        return this._NODEPATHID;
    }

    /** 
     *  节点路径
     * 
     * @param NODEPATHID 节点路径
     */
    public function set NODEPATHID(NODEPATHID : String):void {
        this._NODEPATHID = NODEPATHID
    }

    /** 
     *  图例ID曉夞丅
     * 
     * @return 图例ID
     */
    public function get LEGENDID():String {
        return this._LEGENDID;
    }

    /** 
     *  图例ID
     * 
     * @param LEGENDID 图例ID
     */
    public function set LEGENDID(LEGENDID : String):void {
        this._LEGENDID = LEGENDID
    }

    /** 
     *  节点状态曉夞丅
     * 
     * @return 节点状态
     */
    public function get NODESTATE():String {
        return this._NODESTATE;
    }

    /** 
     *  节点状态
     * 
     * @param NODESTATE 节点状态
     */
    public function set NODESTATE(NODESTATE : String):void {
        this._NODESTATE = NODESTATE
    }

    /** 
     *  服务地址曉夞丅
     * 
     * @return 服务地址
     */
    public function get ORIGINURL():String {
        return this._ORIGINURL;
    }

    /** 
     *  服务地址
     * 
     * @param ORIGINURL 服务地址
     */
    public function set ORIGINURL(ORIGINURL : String):void {
        this._ORIGINURL = ORIGINURL
    }

    /** 
     *  MIDDLETYPE曉夞丅
     * 
     * @return MIDDLETYPE
     */
    public function get MIDDLETYPE():String {
        return this._MIDDLETYPE;
    }

    /** 
     *  MIDDLETYPE
     * 
     * @param MIDDLETYPE MIDDLETYPE
     */
    public function set MIDDLETYPE(MIDDLETYPE : String):void {
        this._MIDDLETYPE = MIDDLETYPE
    }

    /** 
     *  图例地址曉夞丅
     * 
     * @return 图例地址
     */
    public function get LEGENDURL():String {
        return this._LEGENDURL;
    }

    /** 
     *  图例地址
     * 
     * @param LEGENDURL 图例地址
     */
    public function set LEGENDURL(LEGENDURL : String):void {
        this._LEGENDURL = LEGENDURL
    }

    /** 
     *  是否选中曉夞丅
     * 
     * @return 是否选中
     */
    public function get CHECKED():String {
        return this._CHECKED;
    }

    /** 
     *  是否选中
     * 
     * @param CHECKED 是否选中
     */
    public function set CHECKED(CHECKED : String):void {
        this._CHECKED = CHECKED
    }

}
}
