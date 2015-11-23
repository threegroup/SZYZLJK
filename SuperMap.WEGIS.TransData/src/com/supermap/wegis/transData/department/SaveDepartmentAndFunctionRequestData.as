package com.supermap.wegis.transData.department
{
	import com.supermap.wegis.services.data.RequestData;
	
	/** 
	 * 用户授权请求信息TransData
	 * 
	 * 用户授权请求信息TransData
	 * 
	 * @author supermap
	 */
	public class SaveDepartmentAndFunctionRequestData extends RequestData {
		
		/**  部门ID */
		private var _depId : String;
		
		
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
		
	}
}
