/*
* 权限认证相关功能，将认证信息等保存在本地，便于多个子系统间相互使用共享对象。
*/
package com.supermap.wegis.common.components.security
{
	import flash.events.NetStatusEvent;
	import flash.net.SharedObject;
	import flash.net.SharedObjectFlushStatus;
	
	import mx.controls.Alert;
	
	/**
	 * @author bimiaoliang
	 * @version 1.0.0
	 * 创建时间：2013-6-4 下午2:09:08
	 */
	public class SecurityAttestation
	{
		/**
		 * 本地存储对象标识
		 */
		public static const IDV:String = "WEGISSHAREOBJECT";
		
		public static const LOCATION:String = "location";
		
		/**
		 * 本地存储对象
		 */
		private var wegisSO:SharedObject = null;
		
		public function SecurityAttestation(name:String = null)
		{
			//初始化本地共享对象
			if(wegisSO == null)
			{
				if(name == null)
				{
					wegisSO = SharedObject.getLocal(IDV, "/");
				}else
				{
					wegisSO = SharedObject.getLocal(name, "/");
				}
			}
		}
		
		/**
		 * 获取本地存储的数据
		 * @return 本地存储的数据
		 * 
		 */
		public function getValue():Object
		{
			if(wegisSO == null)
				return null;
			
			return wegisSO.data.userInfo;
		}
		
		/**
		 * 保存数据
		 * @param data-需要存储在本地的对象
		 * 
		 */
		public function saveValue(data:Object):void
		{
			if(wegisSO == null)
				return;
			wegisSO.data.userInfo = data;
			
			var flushStatus:String = null;
			try 
			{
				flushStatus = wegisSO.flush(10000);
			} 
			catch (error:Error)
			{
				Alert.show("错误...不能将共享对象写入本地磁盘！");
			}
			if (flushStatus != null) 
			{
				switch (flushStatus)
				{
					case SharedObjectFlushStatus.PENDING:
						//正在申请写入对象...
						wegisSO.addEventListener(NetStatusEvent.NET_STATUS, onFlushStatus);
						break;
					case SharedObjectFlushStatus.FLUSHED:
						//Alert.show("值写入完成！");
						break;
				}
			}
		}
		
		/**
		 * 清除数据
		 */
		public function clearValue():void 
		{
			if(wegisSO != null)
			{
				wegisSO.data.userInfo = null;
				delete wegisSO.data.userInfo;
				wegisSO.clear();
			}
		}
		
		
		/**
		 *标识数据的预处理类型 
		 * @param type 预处理类型，默认为delete，还可以取值add等，完善当中...
		 * 
		 */
		public function addDataMark(type:String="delete"):void
		{
			if(wegisSO != null)
			{
				wegisSO.data.mark = type;
				
				var flushStatus:String = null;
				try 
				{
					flushStatus = wegisSO.flush(10000);
				} 
				catch (error:Error)
				{
					Alert.show("错误...不能将共享对象写入本地磁盘！");
				}
				if (flushStatus != null) 
				{
					switch (flushStatus)
					{
						case SharedObjectFlushStatus.PENDING:
							//正在申请写入对象...
							wegisSO.addEventListener(NetStatusEvent.NET_STATUS, onFlushStatus);
							break;
						case SharedObjectFlushStatus.FLUSHED:
							//Alert.show("值写入完成！");
							break;
					}
				}
			}
		}
		
		private function onFlushStatus(event:NetStatusEvent):void 
		{
			switch (event.info.code) 
			{
				case "SharedObject.Flush.Success":
					//保存成功
					break;
				case "SharedObject.Flush.Failed":
					//保存失败
					break;
			}
			
			wegisSO.removeEventListener(NetStatusEvent.NET_STATUS, onFlushStatus);
		}
	}
}