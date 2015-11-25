package com.supermap.wegis.transData.wrz
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.wrz.WrManageUnitInfoData;

/** 
 * 管理单位表TransData
 * 
 * 管理单位表TransData
 * 
 * @author supermap
 */
public class WrManageUnitRequestData extends RequestData {

    /**  管理单位信息 */
    private var _manageUnitInfoData : WrManageUnitInfoData;
	
	/**管理级别*/
	private var _areaLevel:String;
	
	private var _areaType:String;
	
	public function get areaLevel():String
	{
		return _areaLevel;
	}
	
	public function set areaLevel(value:String):void
	{
		_areaLevel = value;
	}
	
	/**管理级别*/
	public function get areaType():String
	{
		return _areaType;
	}

	/**
	 * @private
	 */
	public function set areaType(value:String):void
	{
		_areaType = value;
	}

    /** 
     *  管理单位信息曉夞丅
     * 
     * @return 管理单位信息
     */
    public function get manageUnitInfoData():WrManageUnitInfoData {
        return this._manageUnitInfoData;
    }

    /** 
     *  管理单位信息
     * 
     * @param manageUnitInfoData 管理单位信息
     */
    public function set manageUnitInfoData(manageUnitInfoData : WrManageUnitInfoData):void {
        this._manageUnitInfoData = manageUnitInfoData
    }

}
}
