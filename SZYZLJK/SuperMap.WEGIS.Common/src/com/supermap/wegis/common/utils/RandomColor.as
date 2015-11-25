package   com.supermap.wegis.common.utils
{
	import com.supermap.wegis.common.core.hashTable.HashTable;
	
	public class RandomColor
	{
		public function RandomColor()
		{
		}
		private static var colors:HashTable = new HashTable();
		public static function  getRandomColor(type:String = null):uint
		{
			if(type == null || colors.find(type) == null)
			{
				var color:uint = 	int(Math.random()*128+127)<<16|int(Math.random()*128+127)<<8|int(Math.random()*128+127);
				colors.add(type,color);
				return color;
			}else
			{
				return colors.find(type) ;
			}
		}
	}
}