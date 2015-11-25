package com.supermap.wegis.common.components.combobox
{
	import flash.display.DisplayObject;
	
	import mx.core.ClassFactory;
	
	public class MulitSelectClassFactory extends ClassFactory
	{
		public function MulitSelectClassFactory(generator:Class=null)
		{
			super(generator);
		}
		private var eventArray:Array=new Array();
		private var _properties:Array=new Array();
		public function addInitEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0,useWeakReference:Boolean=false):void{
			eventArray.push({type:type,listener:listener,useCapture:useCapture,priority:priority,useWeakReference:useWeakReference});
		}
		public function addInitProperties(key:String,value:*):void{
			_properties.push({key:key,value:value});
		}
		
		override public function newInstance():*{
			var obj:*=super.newInstance();
			var event:Object;
			if(eventArray!=null&&eventArray.length>0&&obj as DisplayObject){
				var i:int=0;
				for(i=0;i<_properties.length;i++){
					event=_properties[i];
					if(event.value is Function){
						obj[event.key]=event.value();
					}else{
						obj[event.key]=event.value;
					}
					
				}
				
				for(i=0;i<eventArray.length;i++){
					event=eventArray[i];
					DisplayObject(obj).addEventListener(event.type,event.listener,event.useCapture,event.priority,event.useWeakReference);
				}
			}
			return obj
		}
		
	}
}