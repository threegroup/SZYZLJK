package com.supermap.wegis.transData.wrz
{
	import com.supermap.wegis.services.data.RequestData;
	import com.supermap.wegis.transData.wrz.WrWaterAdmUnitInfoData;
	
	/** 
	 * 水行政主管部门表TransData
	 * 
	 * 水行政主管部门表TransData
	 * 
	 * @author supermap
	 */
	public class WrWaterAdmUnitRequestData extends RequestData {
		
		/**  水行政主管部门信息 */
		private var _waterAdmUnitInfoData : WrWaterAdmUnitInfoData;
		
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
		
		/** 
		 *  水行政主管部门信息曉夞丅
		 * 
		 * @return 水行政主管部门信息
		 */
		public function get waterAdmUnitInfoData():WrWaterAdmUnitInfoData {
			return this._waterAdmUnitInfoData;
		}
		
		/** 
		 *  水行政主管部门信息
		 * 
		 * @param waterAdmUnitInfoData 水行政主管部门信息
		 */
		public function set waterAdmUnitInfoData(waterAdmUnitInfoData : WrWaterAdmUnitInfoData):void {
			this._waterAdmUnitInfoData = waterAdmUnitInfoData
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
	}
}
