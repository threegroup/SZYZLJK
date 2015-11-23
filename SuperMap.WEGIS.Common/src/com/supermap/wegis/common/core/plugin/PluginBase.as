package com.supermap.wegis.common.core.plugin
{
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	
	import mx.core.IFlexModuleFactory;
	import mx.core.RSLData;
	import mx.modules.IModule;
	
	import spark.components.SkinnableContainer;
	
	/*public class PluginBase extends Sprite
	implements IFlexModuleFactory*/
	
	public class PluginBase extends SkinnableContainer
		implements IModule
	{
		public function PluginBase()
		{
			super();
		}
		
		public function get allowDomainsInNewRSLs():Boolean
		{
			return false;
		}
		
		public function set allowDomainsInNewRSLs(value:Boolean):void
		{
		}
		
		public function get allowInsecureDomainsInNewRSLs():Boolean
		{
			return false;
		}
		
		public function set allowInsecureDomainsInNewRSLs(value:Boolean):void
		{
		}
		
		public function get preloadedRSLs():Dictionary
		{
			return null;
		}
		
		public function addPreloadedRSL(loaderInfo:LoaderInfo, rsl:Vector.<RSLData>):void
		{
		}
		
		public function allowDomain(...parameters):void
		{
		}
		
		public function allowInsecureDomain(...parameters):void
		{
		}
		
		public function callInContext(fn:Function, thisArg:Object, argArray:Array, returns:Boolean=true):*
		{
			return null;
		}
		
		public function create(...parameters):Object
		{
			return null;
		}
		
		public function getImplementation(interfaceName:String):Object
		{
			return null;
		}
		
		public function info():Object
		{
			return null;
		}
		
		public function registerImplementation(interfaceName:String, impl:Object):void
		{
		}
		
		public function getClassByName(cname:String):Class
		{
			var c:Class = getDefinitionByName(cname) as Class;
			return c;
		}
	}
}