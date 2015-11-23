package com.supermap.wegis.common.components.imageBrowse
{
	public class ImageVO
	{
		public function ImageVO()
		{
		}
		
		private var _title:String;
		private var _content:String;
		private var _url:String;
		private var _index:Number;
		private var _image:String;
		private var _icon:String;

		/**图片切换图标按钮*/
		public function get icon():String
		{
			return _icon;
		}

		public function set icon(value:String):void
		{
			_icon = value;
		}

		/**图片资源*/
		public function get image():String
		{
			return _image;
		}

		/**
		 * @private
		 */
		public function set image(value:String):void
		{
			_image = value;
		}

		/**图片索引*/
		public function get index():Number
		{
			return _index;
		}

		/**
		 * @private
		 */
		public function set index(value:Number):void
		{
			_index = value;
		}

		/**图片链接*/
		public function get url():String
		{
			return _url;
		}

		/**
		 * @private
		 */
		public function set url(value:String):void
		{
			_url = value;
		}

		/**图片标题*/
		public function get title():String
		{
			return _title;
		}

		/**
		 * @private
		 */
		public function set title(value:String):void
		{
			_title = value;
		}

		/**图片内容*/
		public function get content():String
		{
			return _content;
		}

		/**
		 * @private
		 */
		public function set content(value:String):void
		{
			_content = value;
		}

	}
}