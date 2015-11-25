package com.supermap.wegis.common.components.events
{
	import flash.events.Event;
	
	public class SecurityEvent extends Event
	{
		/**权限列表权限被删除*/
		public static const SECURITY_PERMISSIONS_REMOVE:String = "SecurityPermissionsRemove";
		
		/**被删除权限数组*/
		public var removePermissions:Array;
		
		public function SecurityEvent(type:String,removePermissions:Array = null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.removePermissions = removePermissions;
		}
	}
}