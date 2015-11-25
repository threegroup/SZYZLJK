package com.supermap.wegis.transData.wrz
{
	import com.supermap.wegis.services.data.RequestData;
	
	/** 
	 * 查询RequestData
	 * 
	 * 查询RequestData
	 * 
	 * @author supermap
	 */
	public class WrzRequestData extends RequestData {
		
		/**  行政区划 */
		private var _admDiv : String;
		
		/**  类型 */
		private var _middleType : String;
		
		/**  取水口信息 */
		private var _infoData : Object;
		
		/**  提交状态 */
		private var _commitStatus : String;
		
		/**  审核状态 */
		private var _checkStatus : String;
		
		/**  关键字 */
		private var _keyWord : String;
		
		/**  坐标点 */
		private var _pointXY : String;
		
		/**  是否导出 */
		private var _exportFlag : String;
		
		/**  河湖代码 */
		private var _rvlkCd : String;
		
		/**管理类型*/
		private var _areaType:String;
		
		/**管理级别*/
		private var _areaLevel:String;
		
		/**  河湖内部编码 */
		private var _rvlkSubCd : String;
		private var _boundaryRiver:String;
		private var _id:String;

		public function get areaLevel():String
		{
			return _areaLevel;
		}

		public function set areaLevel(value:String):void
		{
			_areaLevel = value;
		}
		
		/**
		 * 区域级别
		 */
		public function get areaType():String
		{
			return _areaType;
		}
		
		public function set areaType(value:String):void
		{
			_areaType = value;
		}
		
		public function get id():String
		{
			return _id;
		}
		
		public function set id(value:String):void
		{
			_id = value;
		}
		
		/**  界河 */
		public function get boundaryRiver():String
		{
			return _boundaryRiver;
		}
		
		/**
		 * @private
		 */
		public function set boundaryRiver(value:String):void
		{
			_boundaryRiver = value;
		}
		
		/** 
		 *  行政区划曉夞丅
		 * 
		 * @return 行政区划
		 */
		public function get admDiv():String {
			return this._admDiv;
		}
		
		/** 
		 *  行政区划
		 * 
		 * @param admDiv 行政区划
		 */
		public function set admDiv(admDiv : String):void {
			this._admDiv = admDiv
		}
		
		/** 
		 *  类型曉夞丅
		 * 
		 * @return 类型
		 */
		public function get middleType():String {
			return this._middleType;
		}
		
		/** 
		 *  类型
		 * 
		 * @param middleType 类型
		 */
		public function set middleType(middleType : String):void {
			this._middleType = middleType
		}
		
		/** 
		 *  取水口信息曉夞丅
		 * 
		 * @return 取水口信息
		 */
		public function get infoData():Object {
			return this._infoData;
		}
		
		/** 
		 *  取水口信息
		 * 
		 * @param infoData 取水口信息
		 */
		public function set infoData(infoData : Object):void {
			this._infoData = infoData
		}
		
		/** 
		 *  提交状态曉夞丅
		 * 
		 * @return 提交状态
		 */
		public function get commitStatus():String {
			return this._commitStatus;
		}
		
		/** 
		 *  提交状态
		 * 
		 * @param commitStatus 提交状态
		 */
		public function set commitStatus(commitStatus : String):void {
			this._commitStatus = commitStatus
		}
		
		/** 
		 *  审核状态曉夞丅
		 * 
		 * @return 审核状态
		 */
		public function get checkStatus():String {
			return this._checkStatus;
		}
		
		/** 
		 *  审核状态
		 * 
		 * @param checkStatus 审核状态
		 */
		public function set checkStatus(checkStatus : String):void {
			this._checkStatus = checkStatus
		}
		
		/** 
		 *  关键字曉夞丅
		 * 
		 * @return 关键字
		 */
		public function get keyWord():String {
			return this._keyWord;
		}
		
		/** 
		 *  关键字
		 * 
		 * @param keyWord 关键字
		 */
		public function set keyWord(keyWord : String):void {
			this._keyWord = keyWord
		}
		
		/** 
		 *  坐标点曉夞丅
		 * 
		 * @return 坐标点
		 */
		public function get pointXY():String {
			return this._pointXY;
		}
		
		/** 
		 *  坐标点
		 * 
		 * @param pointXY 坐标点
		 */
		public function set pointXY(pointXY : String):void {
			this._pointXY = pointXY
		}
		
		/** 
		 *  是否导出曉夞丅
		 * 
		 * @return 是否导出
		 */
		public function get exportFlag():String {
			return this._exportFlag;
		}
		
		/** 
		 *  是否导出
		 * 
		 * @param exportFlag 是否导出
		 */
		public function set exportFlag(exportFlag : String):void {
			this._exportFlag = exportFlag
		}
		
		/** 
		 *  河湖代码曉夞丅
		 * 
		 * @return 河湖代码
		 */
		public function get rvlkCd():String {
			return this._rvlkCd;
		}
		
		/** 
		 *  河湖代码
		 * 
		 * @param rvlkCd 河湖代码
		 */
		public function set rvlkCd(rvlkCd : String):void {
			this._rvlkCd = rvlkCd
		}
		
		/** 
		 *  河湖内部编码曉夞丅
		 * 
		 * @return 河湖内部编码
		 */
		public function get rvlkSubCd():String {
			return this._rvlkSubCd;
		}
		
		/** 
		 *  河湖内部编码
		 * 
		 * @param rvlkSubCd 河湖内部编码
		 */
		public function set rvlkSubCd(rvlkSubCd : String):void {
			this._rvlkSubCd = rvlkSubCd
		}
		
	}
}
