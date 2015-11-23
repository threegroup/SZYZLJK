package  com.supermap.wegis.common.utils
{
	import org.as3commons.reflect.Accessor;
	import org.as3commons.reflect.Type;
	

	/**
	 * 数据转换工具类
	 **/
	public class DataTransfer
	{
		public function DataTransfer()
		{
		}

		/**
		 * 将object对象转换为指定类型的对象。类型为Array的属性由于不能判断Array中元素的类型，将不对Array中元素的类型进行转换。
		 * @Param data Object对象
		 * @Param classType 指定的类型
		 **/
		public static function transfer(data:Object, classType:Class):*
		{
			var instance:*=new classType();
			var type:Type=Type.forInstance(instance);
			for each (var accessor:Accessor in type.accessors)
			{
				if (accessor.name == "prototype")
				{
					continue;
				}

				if (accessor.isWriteable()&&data.hasOwnProperty(accessor.name))
				{
					switch (accessor.type.name)
					{
						case "String":
							instance[accessor.name]=String(data[accessor.name]);
							break;
						case "Number":
							instance[accessor.name]=Number(data[accessor.name]);
							break;
						case "uint":
							instance[accessor.name]=uint(data[accessor.name]);
							break;
						case "int":
							instance[accessor.name]=int(data[accessor.name]);
							break;
						case "Boolean":
							instance[accessor.name]=Boolean(data[accessor.name]);
							break;
						case "Date":
							var dateString:String=String(data[accessor.name]);
							if (dateString)
							{
								dateString=dateString.replace(/-/g, "/"); // Date.parse不支持连字符（”-“），将”-“替换为”/“
								instance[accessor.name]=new Date(Date.parse(dateString));
							}
							break;
						case "Object":
							instance[accessor.name]=data[accessor.name];
						default:
							instance[accessor.name]=DataTransfer.transfer(data[accessor.name], accessor.type.clazz);
							break;
					}
				}
			}

			return instance;
		}
	}
}
