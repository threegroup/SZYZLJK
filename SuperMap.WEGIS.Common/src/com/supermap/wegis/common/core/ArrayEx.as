package com.supermap.wegis.common.core
{
	public dynamic class ArrayEx extends Array
	{
		
		public function ArrayEx(arrayStr:String=null)
		{
			if(arrayStr != null)
			{
				var arr:Array = arrayStr.split(",");
				if(arr != null && arr.length > 0)
				{
					var len:int = arr.length;
					for (var i:int = 0; i < len; i++) 
					{
						this.push(parseFloat(arr[i].replace(/\s+/g, "")));
					}
				}
			}
		}
	}
}