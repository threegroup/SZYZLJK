//插件管理类，用于系统加载已经编译好的swf文件，执行其中的方法，
//同时也是系统命令运行机制。
//bmliang-2012年2月27日

package com.supermap.wegis.common.core.plugin
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;

	public class PluginManager 
	{
		private static var PluginObject:PluginClass;
		private static var PluginList:Array = new Array();//存储已经加载的插件 
		/**加载完成之后的回调函数*/
		public static var callBackFun:Function=null;
		
		public function PluginManager()
		{
		}
		
		/**添加插件*/
		public static function AddPlugin(key:String, plugin:Plugin):void
		{
			if(PluginList != null && !CheckPluginExistEx(key))
			{
				var pinfo:PluginInfo = new PluginInfo();
				pinfo.key = key;
				pinfo.plugin = plugin;
				PluginList.push(pinfo);
			}
		}
		
		/**删除插件*/
		public static function DeletePlugin(key:String):void
		{
			if(PluginList != null && PluginList.length > 0)
			{
				for(var i:int = 0; i < PluginList.length; i++)
				{
					var pinfo:PluginInfo = PluginList[i] as PluginInfo;
					if(pinfo != null && pinfo.key === key)
					{
						PluginList.splice(i, 1);
						break;
					}
				}
			}
		}
		
		/**查找插件*/
		public static function FindPlugin(key:String):PluginInfo
		{
			if(PluginList != null && PluginList.length > 0)
			{
				for(var i:int = 0; i < PluginList.length; i++)
				{
					var pinfo:PluginInfo = PluginList[i] as PluginInfo;
					if(pinfo != null && pinfo.key === key)
					{
						return pinfo;
					}
				}
			}
			return null;
		}
		
		/**添加插件*/
		public static function AddPluginEx(pinfo:PluginInfo):void
		{
			if(PluginList != null && pinfo != null && !CheckPluginExist(pinfo))
			{
				PluginList.push(pinfo);
			}
		}
		
		/**删除插件*/
		public static function DeletePluginEx(pinfo:PluginInfo):void
		{
			if(PluginList != null && PluginList.length > 0)
			{
				var index:int = PluginList.indexOf(pinfo);
				if(index != -1)
					PluginList.splice(index, 1);
			}
		}
		
		/**清空插件*/
		public static function ClearPlugin():void
		{
			PluginList = null;
			PluginList = new Array();
		}
		
		/**判断插件是否存在*/
		public static function CheckPluginExist(pinfo:PluginInfo):Boolean
		{
			if(PluginList != null && PluginList.length > 0)
			{
				var index:int = PluginList.indexOf(pinfo);
				if(index > -1)
					return true;
			}
			return false;
		}
		
		/**判断插件是否存在*/
		public static function CheckPluginExistEx(key:String):Boolean
		{
			if(PluginList != null && PluginList.length > 0)
			{
				for(var i:int = 0; i < PluginList.length; i++)
				{
					var pinfo:PluginInfo = PluginList[i] as PluginInfo;
					if(pinfo != null && pinfo.key === key)
					{
						return true;
					}
				}
			}
			return false;
		}
		
		public static function LoadPlugin(plugin:PluginClass = null):void
		{
			if(plugin != null)
			{
				if(CheckPluginExistEx(plugin.key))
				{
					var pinfo:PluginInfo = FindPlugin(plugin.key);
					if(pinfo != null)
						pinfo.plugin.onExecute();//执行操作 
				}
				else
				{
					PluginObject = plugin;
					var loader: Loader = new Loader();
					var context:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
					loader.contentLoaderInfo.addEventListener(Event.COMPLETE, pluginFn);
					if(plugin.pluginUrl != null)
					{
						loader.load(new URLRequest(plugin.pluginUrl), context);
					}
				}
			}
			else
			{
				PluginObject = null; //清空已有的插件对象
			}
		}
		
		private static function pluginFn(e:Event):void
		{
			if(PluginObject != null)
			{
				if(PluginObject.nameSpace === null)
					return;
				var cls:Class = Object(e.target.content).getClassByName(PluginObject.nameSpace);
				var obj:Object = new cls();
				if(obj != null)
					obj.onExecute();//执行插件中的方法 
				
				AddPlugin(PluginObject.key, obj as Plugin);//新增插件
				//派发时间，资源加载完毕
				if(callBackFun != null)
					callBackFun();
			}
		}
	}
}