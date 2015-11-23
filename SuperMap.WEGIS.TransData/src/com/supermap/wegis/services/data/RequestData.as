package com.supermap.wegis.services.data
{
	import mx.formatters.DateFormatter;
[Bindable]
	public class RequestData
	{
		private var _timeStamp:String="";
		private var _userId:String="";
		private var _sessionId:String="";
		private var _keyId:String;
		private var _targetId:String="";
		private var _pageIndex:int=0;
		private var _pageSize:int=30;
		
		public function RequestData()
		{
			var dateFormatter:DateFormatter = new DateFormatter();   
			dateFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";   
			_timeStamp = dateFormatter.format(new Date()); 
		}
		

		public function get keyId():String
		{
			return _keyId;
		}

		public function set keyId(value:String):void
		{
			_keyId = value;
		}

		/**
		 * 豈城｡ｵ逧�ｮｰ蠖墓焚
		 */
		public function get pageSize():int
		{
			return _pageSize;
		}

		/**
		 * @private
		 */
		public function set pageSize(value:int):void
		{
			_pageSize = value;
		}

		/**
		 * 蛻�｡ｵ逧�ｵｷ蟋矩｡ｵ
		 */
		public function get pageIndex():int
		{
			return _pageIndex;
		}

		/**
		 * @private
		 */
		public function set pageIndex(value:int):void
		{
			_pageIndex = value;
		}

		public function get targetId():String
		{
			return _targetId;
		}

		public function set targetId(value:String):void
		{
			_targetId = value;
		}

		public function get sessionId():String
		{
			return _sessionId;
		}

		public function set sessionId(value:String):void
		{
			_sessionId = value;
		}

		public function get userId():String
		{
			return _userId;
		}

		public function set userId(value:String):void
		{
			_userId = value;
		}

		/**譌ｶ髣ｴ謌ｳ*/
		public function get timeStamp():String
		{
			return _timeStamp;
		}

		public function set timeStamp(value:String):void
		{
			_timeStamp = value;
		}
	}
}