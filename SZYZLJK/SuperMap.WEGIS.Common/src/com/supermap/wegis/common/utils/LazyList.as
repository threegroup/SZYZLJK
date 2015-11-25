package   com.supermap.wegis.common.utils
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.IList;
	import mx.collections.errors.ItemPendingError;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	import mx.events.PropertyChangeEvent;
	import mx.events.PropertyChangeEventKind;
	import mx.resources.IResourceManager;
	import mx.resources.ResourceManager;
	import mx.rpc.IResponder;
	
	[Event(name="collectionChange", type="mx.events.CollectionEvent")]
	public class LazyList  extends EventDispatcher implements IList
	{
		private static function get resourceManager():IResourceManager
		{
			return ResourceManager.getInstance();
		}
		
		private static function checkItemIndex(index:int, listLength:int):void
		{
			if (index < 0 || (index >= listLength)) 
			{
				const message:String = resourceManager.getString("collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
		}
		
		private const data:Vector.<Object> = new Vector.<Object>();
		
		public function PagedList(length:int=1000, pageSize:int=10):void
		{
			this.data.length = length;
			this.pageSize = pageSize;
			
			for (var i:int = 0; i < data.length; i++)
				data[i] = undefined;
		}
		
		private var _loadItemsFunction:Function = null;
		
		
		public function get loadItemsFunction():Function
		{
			return _loadItemsFunction;
		}
		
		/**
		 *  @private
		 */
		public function set loadItemsFunction(value:Function):void
		{
			_loadItemsFunction = value;
		}
		
		//----------------------------------
		//  length
		//---------------------------------- 
		
		[Bindable("collectionChange")]    
		
		
		public function get length():int
		{
			return data.length;
		}
		
		/**
		 *  @private
		 */
		public function set length(value:int):void
		{
			const oldLength:int = data.length;
			const newLength:int = value;
			
			if (oldLength == newLength)
				return;
			
			var ce:CollectionEvent = null;
			if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
				ce = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
			
			if (oldLength < newLength)
			{
				if (ce)
				{
					ce.location = Math.max(oldLength - 1, 0);
					ce.kind = CollectionEventKind.ADD;
					const itemsLength:int = newLength - oldLength;
					for (var i:int = 0; i < itemsLength; i++)
						ce.items.push(undefined);
				}
				
				data.length = newLength;
				for (var newIndex:int = Math.max(oldLength - 1, 0); newIndex < newLength; newIndex++)
					data[newIndex] = undefined;
			}
			else // oldLength > newLength
			{
				if (ce)
				{
					ce.location = Math.max(newLength - 1, 0);
					ce.kind = CollectionEventKind.REMOVE;
					for (var oldIndex:int = Math.max(newLength - 1, 0); oldIndex < oldLength; oldIndex++)
						ce.items.push(data[oldIndex]);
				}
				
				data.length = newLength; 
			}
			
			if (ce)
				dispatchEvent(ce);
		}
		
		//----------------------------------
		//  pageSize
		//---------------------------------- 
		
		private var _pageSize:int = 10;
		
		
		public function get pageSize():int
		{
			return _pageSize;
		}
		
		/**
		 *  @private
		 */
		public function set pageSize(value:int):void
		{
			_pageSize = value;    
		}
		
		/**
		 *  Resets the entire list to its initial state.  All local and pending items are
		 *  cleared.
		 */
		public function clearItems():void
		{
			var index:int = 0;
			for each (var item:Object in data)
			data[index++] = undefined;
			
			if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
			{
				var ce:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
				ce.kind = CollectionEventKind.RESET;
				dispatchEvent(ce);
			}            
		}
		
		/**
		 *  @private
		 */
		private static function createUpdatePCE(itemIndex:Object, oldValue:Object, newValue:Object):PropertyChangeEvent
		{
			const pce:PropertyChangeEvent = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
			pce.kind = PropertyChangeEventKind.UPDATE;
			pce.property = itemIndex;
			pce.oldValue = oldValue;
			pce.newValue = newValue;
			return pce;
		}
		
		/**
		 *  @private
		 */    
		private static function createCE(kind:String, location:int, item:Object):CollectionEvent
		{
			const ce:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
			ce.kind = kind;
			ce.location = location;
			
			if (item is Array)
				ce.items = item as Array;
			else
				ce.items.push(item);
			
			return ce;
		}
		
		
		public function storeItemsAt(items:Vector.<Object>, index:int):void
		{
			if (index < 0 || (index + items.length) > length) 
			{
				const message:String = resourceManager.getString("collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			var item:Object;
			var itemIndex:int;
			var pce:PropertyChangeEvent;
			
			// copy the new items into the internal items vector and run the IPE responders
			
			itemIndex = index;
			for each (item in items)
			{
				var ipe:ItemPendingError = data[itemIndex] as ItemPendingError;
				if (ipe && ipe.responders)
				{
					for each (var responder:IResponder in ipe.responders)
					responder.result(null);
				}
				
				data[itemIndex++] = item;
			}
			
			// dispatch collection and property change events
			
			const hasCollectionListener:Boolean = hasEventListener(CollectionEvent.COLLECTION_CHANGE);
			const hasPropertyListener:Boolean = hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE);
			var propertyChangeEvents:Array = new Array();  // Array of PropertyChangeEvents;
			
			if (hasCollectionListener || hasPropertyListener)
			{   
				itemIndex = index;
				for each (item in items)
				propertyChangeEvents.push(createUpdatePCE(itemIndex++, null, item));
			}
			
			if (hasCollectionListener)
				dispatchEvent(createCE(CollectionEventKind.REPLACE, index, propertyChangeEvents));
			
			if (hasPropertyListener)
			{
				for each (pce in propertyChangeEvents)
				dispatchEvent(pce);
			}
		}
		
		public function failItemsAt(index:int, count:int):void
		{
			if (index < 0 || (index + count) > length) 
			{
				const message:String = resourceManager.getString("collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			for (var i:int = 0; i < count; i++)
			{
				var itemIndex:int = i + index;
				var ipe:ItemPendingError = data[itemIndex] as ItemPendingError;
				if (ipe && ipe.responders)
				{
					for each (var responder:IResponder in ipe.responders)
					responder.fault(null);
				}
				data[itemIndex] = undefined;
			}        
			
			
			
		}
		
		//--------------------------------------------------------------------------
		//
		//  IList Implementation (length appears above)
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @inheritDoc
		 */    
		public function addItem(item:Object):void
		{
			addItemAt(item, length);        
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function addItemAt(item:Object, index:int):void
		{
			checkItemIndex(index, length + 1);
			data.splice(index, index, item);
			
			if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
				dispatchEvent(createCE(CollectionEventKind.ADD, index, item));
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function getItemAt(index:int, prefetch:int=0):Object
		{
			checkItemIndex(index, length);
			
			var item:* = data[index];
			if (item is ItemPendingError)
			{
				throw item as ItemPendingError;
			}
			else if (item === null)
			{
				const ipe:ItemPendingError = new ItemPendingError(String(index));
				const pageStartIndex:int = Math.floor(index / pageSize) * pageSize;
				const count:int = Math.min(pageSize, data.length - pageStartIndex);
				
				for (var i:int = 0; i < count; i++)
					data[pageStartIndex + i] = ipe;
				
				if (loadItemsFunction !== null)
					loadItemsFunction(this, pageStartIndex, count);
				
				
				// Allow for the possibility that loadItemsFunction has synchronously
				// loaded the requested data item.
				
				if (data[index] == ipe)
					throw ipe;
				else
					item = data[index];
			}
			
			return item;
		}
		
		
		public function getItemIndex(item:Object):int
		{
			return data.indexOf(item);
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function itemUpdated(item:Object, property:Object=null, oldValue:Object=null, newValue:Object=null):void
		{
			const hasCollectionListener:Boolean = hasEventListener(CollectionEvent.COLLECTION_CHANGE);
			const hasPropertyListener:Boolean = hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE);
			var pce:PropertyChangeEvent = null;
			
			if (hasCollectionListener || hasPropertyListener)
				pce = createUpdatePCE(property, oldValue, newValue);
			
			if (hasCollectionListener)
				dispatchEvent(createCE(CollectionEventKind.UPDATE, -1, pce));
			
			if (hasPropertyListener)
				dispatchEvent(pce);
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function removeAll():void
		{
			length = 0;
			
			if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
			{
				const ce:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
				ce.kind = CollectionEventKind.RESET;
				dispatchEvent(ce);
			}
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function removeItemAt(index:int):Object
		{
			checkItemIndex(index, length);
			
			const item:Object = data[index];
			
			data.splice(index, 1);
			if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
				dispatchEvent(createCE(CollectionEventKind.REMOVE, index, item));    
			
			return item;
		}
		
		/**
		 *  @inheritDoc
		 */   
		public function setItemAt(item:Object, index:int):Object
		{
			checkItemIndex(index, length);
			
			const oldItem:Object = data[index];
			
			if (item !== oldItem)
			{
				const hasCollectionListener:Boolean = hasEventListener(CollectionEvent.COLLECTION_CHANGE);
				const hasPropertyListener:Boolean = hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE);
				var pce:PropertyChangeEvent = null;
				
				if (hasCollectionListener || hasPropertyListener)
					pce = createUpdatePCE(index, oldItem, item);
				
				if (hasCollectionListener)
					dispatchEvent(createCE(CollectionEventKind.REPLACE, index, pce));
				
				if (hasPropertyListener)
					dispatchEvent(pce);
			}
			
			return oldItem;
		}
		
		
		public function toArray():Array
		{
			const rv:Array = new Array(data.length);
			
			var index:int = 0;
			for each (var item:* in data)
			rv[index++] = (item is ItemPendingError) ? undefined : item;
			
			return rv;
		}
	}
}

