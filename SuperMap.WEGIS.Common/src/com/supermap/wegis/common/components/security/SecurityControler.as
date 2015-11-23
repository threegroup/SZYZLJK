package  com.supermap.wegis.common.components.security
{
	import com.supermap.wegis.common.components.events.SecurityEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.core.Application;
	import mx.core.FlexGlobals;
	import mx.core.IVisualElement;
	import mx.core.IVisualElementContainer;
	import mx.core.UIComponent;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	import mx.utils.DescribeTypeCache;
	
	//
	// Security filters UI components based on metadata with in UIComponenets
	//
	[Event(name='SecurityPermissionsRemove',type='com.supermap.wegis.common.components.events.SecurityEvent')]
	public class SecurityControler {
		
		public static var defaultControlBy : String = 'visible';
		public static var isStart:Boolean =false;
		
		/**用于处理事件*/
		public static var eventDispatcher:EventDispatcher = new EventDispatcher();
		
		[Bindable] private static var _permissions:ArrayCollection = new ArrayCollection();
		/**
		 * start security control before the UIComponents are added with permission strings
		 */
		public static function start(permissions:ArrayCollection = null,default_control_by : String = "visible"):void {
			isStart = true;
			setPermissions(permissions);
			defaultControlBy = default_control_by;
			
			FlexGlobals.topLevelApplication.systemManager.addEventListener(Event.ADDED_TO_STAGE, processComponenet, true);
		}
		
		/**
		 * stop security control
		 */
		public static function stop():void {
			isStart = false;
			FlexGlobals.topLevelApplication.systemManager.removeEventListener(Event.ADDED_TO_STAGE, processComponenet);
		}
		
		private static function setPermissions(permissions:ArrayCollection):void
		{
			if(permissions == null) {
				_permissions = new ArrayCollection();
			} else {
				_permissions.removeEventListener(CollectionEvent.COLLECTION_CHANGE,updateDisplay);
				_permissions = permissions;
			}
			_permissions.sort = new Sort();
			_permissions.refresh();
			_permissions.addEventListener(CollectionEvent.COLLECTION_CHANGE, updateDisplay);
		}
		
		public static function removeAllPerms():void {
			//派发权限移除事件
			dispatcherPermissonsRemoveEvent(_permissions.toArray());
			updatePerms(null);
		}
				
		/**
		 * Overwrites perms with ArrayCollection
		 */
		public static function updatePerms(perms:ArrayCollection):void {
			setPermissions(perms);
			//update display
			updateDisplay(null);
		}
		
		public static function addAllPerms(perms : ArrayCollection): void {
			for each(var item:Object in perms){
				_permissions.addItem(item);
			}
		}

		/**
		 * Adds permissions to the security
		 */
		public static function addPerm(permName:String):void {
			if(!_permissions.contains(permName))
				_permissions.addItem(permName);
		}

		/**
		 * Removes permission from security
		 */
		public static function removePerm(permName:String):void {
			while(_permissions.contains(permName))
				dispatcherPermissonsRemoveEvent([permName]);
				_permissions.removeItemAt(_permissions.getItemIndex(permName));
		}
		
		/**
		 * 增加需要保护的资源
		 */
		public static function addSecurityAction(comp:UIComponent,permission:String = null,controlBy:String = null) : void {
			var securityAction : SecurityAction = new SecurityAction();
			securityAction.permission = permission == null ? comp.id : permission;
			securityAction.comp = comp;
			securityAction.controlBy = controlBy == null ? defaultControlBy : controlBy;
			
			doActionAndAddToCache(securityAction);
		}
		
		//updates display on changes to the roles
		private static function updateDisplay(event:CollectionEvent):void {
			for each(var securityAction:SecurityAction in SecurityActionCache.instance.getAllActions()) {
				doAction(securityAction);
			}
		}
		
		//event for processing when component is added
		private static function processComponenet(event:Event):void {
			process(event.target);
		}
		
		//process ui object
		private static function process(obj:Object):void {
			if(obj is UIComponent) {
				var comp:UIComponent = obj as UIComponent;
				//trace('prepare process comp:'+comp+" name:"+String(comp.name)+" styleName:"+String(comp.styleName));
				//check for wating action
				if(comp.id != null && SecurityActionCache.instance.isDelayLoadComp(comp.id)) { 
					for each(var delayedSecurityAction:SecurityAction in SecurityActionCache.instance.getDelayLoadActions(comp)) {
						delayedSecurityAction.comp = comp;
						doAction(delayedSecurityAction);
						SecurityActionCache.instance.addAction(delayedSecurityAction);							
					}
				} 
				
				//process by annotation
				var typeInfo:XML = DescribeTypeCache.describeType(obj).typeDescription;
				var md:XMLList = typeInfo.metadata.(@name == SecurityConstants.PROTECTED_ANNOTATION_NAME);				
				for each (var metadata:XML in md) {
					var securityAction:SecurityAction = SecurityAction.createActionFromAnnotation(metadata,defaultControlBy);
					findComponentAndProcess(comp,securityAction);
				}
				
				//precess by styleName
				var securityAction:SecurityAction = SecurityAction.createActionFromStyleName(comp,defaultControlBy);
				if(securityAction != null) {
					doActionAndAddToCache(securityAction);
				}
				
				//process by ISecurityMetadata
				if(comp is ISecurityMetadata) {
					var securityMetadaa : ISecurityMetadata = comp as ISecurityMetadata;
					for each (var item : Object in securityMetadaa.getSecurityActions()) {
						var securityAction:SecurityAction = SecurityAction.createActionFromInterface(item,defaultControlBy);
						if(securityAction != null) {
							doActionAndAddToCache(securityAction);
						}
					}
				}
			//going to have to match on id and parentDocument
			}
		}
		
		private static function findComponentAndProcess(comp:UIComponent,securityAction:SecurityAction):void 
		{
			if(securityAction.componentId == null || 
					securityAction.componentId == "" || securityAction.componentId == SecurityConstants.PARENT_STRING) { //process protections for parent
				securityAction.comp = comp;
				doActionAndAddToCache(securityAction);
			} else {
				if(comp.getChildByName(securityAction.componentId) == null) { // child comp has not been created yet 										
					securityAction.parentComp = comp;	
					SecurityActionCache.instance.addDelayLoadAction(securityAction);	
				} else { //process child component
					securityAction.comp = comp.getChildByName(securityAction.componentId) as UIComponent;
					doActionAndAddToCache(securityAction);
				}
			}			
		}
		
		public	static function doActionAndAddToCache(securityAction:SecurityAction):void
		{
			doAction(securityAction);
			SecurityActionCache.instance.addAction(securityAction);
		}
				
		//process action
	public	static function doAction(securityAction:SecurityAction):void {
			var controlBy : String = securityAction.controlBy;
			if(isPermitted(securityAction.permission)) {
				//trace('permitted, controlBy:'+controlBy+" comp.id:"+securityAction.comp.id + " comp:"+securityAction.comp);
				if( controlBy == SecurityConstants.CONTROY_BY_ENABLE ||controlBy == SecurityConstants.CONTROY_BY_VISABLE ||	controlBy == SecurityConstants.CONTROY_BY_INCLUDE_IN_LAYOUT) 
				{
					securityAction.comp[controlBy] = true;
					if(controlBy == SecurityConstants.CONTROY_BY_VISABLE) 
					{
						securityAction.comp.includeInLayout = true;
					}
				}
				else if (controlBy == SecurityConstants.CONTROY_BY_ALL) 
				{
					securityAction.comp.includeInLayout = true;
					securityAction.comp.visible = true;
					securityAction.comp.enabled = true;
				}
//				else if (controlBy == SecurityConstants.CONTROY_BY_REMOVE) 
//				{
//					if(securityAction.parentComp != null && securityAction.parentComp is IVisualElementContainer && !securityAction.parentComp.contains(securityAction.comp)) 
//					{
//						if(securityAction.comp, securityAction.childPosition <(securityAction.parentComp as IVisualElementContainer).numElements  )
//						{
//							(securityAction.parentComp as IVisualElementContainer).addElementAt(securityAction.comp, securityAction.childPosition);
//						}else
//						{
//							(securityAction.parentComp as IVisualElementContainer).addElementAt(securityAction.comp, securityAction.childPosition);
//						}
//					}
//				}
				else 
				{
					throw new Error("unknow controlBy:"+controlBy+" on comp:"+securityAction.comp);
				}
			} else {
				//trace('not permitted, controlBy:'+controlBy+" comp.id:"+securityAction.comp.id + " comp:"+securityAction.comp);
				if( controlBy == SecurityConstants.CONTROY_BY_ENABLE ||
					controlBy == SecurityConstants.CONTROY_BY_VISABLE ||
					controlBy == SecurityConstants.CONTROY_BY_INCLUDE_IN_LAYOUT ) 
				{
					securityAction.comp[controlBy] = false;
					if(controlBy == SecurityConstants.CONTROY_BY_VISABLE) 
					{
						securityAction.comp.includeInLayout = false;
					}
				}
				else if (controlBy == SecurityConstants.CONTROY_BY_ALL) 
				{
					securityAction.comp.includeInLayout = false;
					securityAction.comp.visible = false;
					securityAction.comp.enabled = false;
				}
//				else if (controlBy == SecurityConstants.CONTROY_BY_REMOVE) 
//				{
//					//trace('prepare remove from parent:'+securityAction.comp.parent+" comp.id:"+securityAction.comp.id+" childPosition:"+securityAction.childPosition);
//					//test child is removed
//					if(securityAction.comp.parent != null) {
//						//trace('real remove from parent:'+securityAction.comp.parent+" comp.id:"+securityAction.comp.id+" childPosition:"+securityAction.childPosition);
//						securityAction.parentComp = securityAction.comp.parent as UIComponent;
//						securityAction.childPosition = (securityAction.comp.parent as UIComponent).getChildIndex(securityAction.comp);
//						(securityAction.comp.parent as IVisualElementContainer).removeElement(securityAction.comp);
//					}
//				}
				else 
				{
					throw new Error("unknow controlBy:"+controlBy+" on comp:"+securityAction.comp);
				}
			}
		}

		//check for permissions
		public static function isPermitted(allowedPerms:String):Boolean {
			if(allowedPerms == null) return false;
			var paramArray : Array = allowedPerms.split(',');
			for each(var perm:String in paramArray) {
				if(_permissions.contains(perm)) {
					return true;
				}
			}
			return false;
		}
		
		/**派发权限被移除事件*/
		private static function dispatcherPermissonsRemoveEvent(permissons:Array):void
		{
			var removePermissionsEvent:SecurityEvent = new SecurityEvent(SecurityEvent.SECURITY_PERMISSIONS_REMOVE);
			removePermissionsEvent.removePermissions = permissons;
			eventDispatcher.dispatchEvent(removePermissionsEvent);
		}
		
	}
}
