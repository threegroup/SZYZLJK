/**
 * ToolTip类: 鼠标提示类
 * 功能：
 * 1.绑定某DisplayObject以显示鼠标提示 BindDO
 * 2.去除某DisplayObject绑定 LooseDO
 * 3.动态更改某DisplayObject鼠标提示信息 setDOInfo
 * 4.测试某DisObject是否已经绑定 TestDOBinding
 * 5.动态隐藏所有鼠标提示 hideToolTip
 * 6.动态显示所有鼠标提示 showToolTip
 * 7.清空所有鼠标提示 removeToolTip
 * 8.设定全局鼠标提示样式 setTipProperty
 */
package   com.supermap.wegis.common.utils
{
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;
	import mx.core.IVisualElement;
	import mx.styles.CSSStyleDeclaration;
	import mx.styles.IStyleManager2;
	
	public class ToolTip extends Sprite
	{
		static private var m_stage:Stage;//注，tooltip必须加到stage下 
		static private var m_nbordercolor:uint=0x000000;
		static private var m_nbgcolor:uint=0xFFFFCC;
		static private var m_nmaxtxtwidth:Number=200;
		//
		private static var  m_uniqueInstance:ToolTip;
		private var m_tipTxt:TextField;
		private var target:DisplayObject;
		//
		public function ToolTip()
		{
			if (m_uniqueInstance == null){
				super();
			} else {
				throw Error("通过getInstance获取");
			}
		}
		
		//获取全局唯一实例
		public static function getInstance():ToolTip
		{
			if(m_uniqueInstance == null)
			{
				m_uniqueInstance = new ToolTip();
				m_uniqueInstance.visible = false;
				
				var topLevelStyleManager:IStyleManager2 = FlexGlobals.topLevelApplication.styleManager;
				var cssStyleDeclarationGlobal:CSSStyleDeclaration = topLevelStyleManager.getStyleDeclaration("global");
				var defaultFontName:String = cssStyleDeclarationGlobal.getStyle("fontFamily");
				var defaultFontSize:int = cssStyleDeclarationGlobal.getStyle("fontSize");
				var textSymbolBgColor:uint = cssStyleDeclarationGlobal.getStyle("textSymbolBgColor");
				var textSymbolAlpha:Number = cssStyleDeclarationGlobal.getStyle("textSymbolAlpha");
				
				m_nbgcolor = textSymbolBgColor;
				
				var textField:TextField = new TextField();
				textField.backgroundColor = textSymbolBgColor;
				textField.alpha = textSymbolAlpha;
				textField.textColor = 0xFFFFFF;
				textField.wordWrap = false;
				
				var tf:TextFormat = new TextFormat();
				tf.size = defaultFontSize;
				textField.setTextFormat(tf);
				
				
				m_uniqueInstance.m_tipTxt = textField;
				m_uniqueInstance.m_tipTxt.autoSize = TextFieldAutoSize.LEFT;
				m_uniqueInstance.m_tipTxt.selectable = false;
				m_uniqueInstance.addChild(m_uniqueInstance.m_tipTxt);
				
				if (m_stage == null) {
					m_stage = FlexGlobals.topLevelApplication.stage;
				}
				m_stage.addChild(m_uniqueInstance);
			}
			return m_uniqueInstance;
		}
		//清空tooltips，注：不是隐藏所有，而是彻底清空，如果要隐藏，某一时刻又显示出来的话，采用hide和show
		public  function removeToolTip():void
		{
			if (target != null){
				target.removeEventListener(MouseEvent.MOUSE_OVER, showtip);
				target.removeEventListener(MouseEvent.MOUSE_OUT, hidetip);
				target.removeEventListener(MouseEvent.MOUSE_MOVE, movetip);
			}
			if (m_stage.contains(m_uniqueInstance)){
				m_stage.removeChild(m_uniqueInstance);
			}
		}
		//暂时隐藏
		public  function hideToolTip():void
		{
			m_stage.removeChild(m_uniqueInstance);
		}
		//再次show
		public  function showToolTip():void
		{
			m_stage.addChild(m_uniqueInstance);
		}
		//添加某DO的tip绑定
		public  function BindDO(DO:DisplayObject, info:String):void
		{
			m_uniqueInstance.m_tipTxt.text = info;
			target = DO;
			target.removeEventListener(MouseEvent.MOUSE_OVER, showtip);
			target.removeEventListener(MouseEvent.MOUSE_OUT, hidetip);
			target.removeEventListener(MouseEvent.MOUSE_MOVE, movetip);
			target.addEventListener(MouseEvent.MOUSE_OVER, showtip);
			target.addEventListener(MouseEvent.MOUSE_OUT, hidetip);
			target.addEventListener(MouseEvent.MOUSE_MOVE, movetip);
		}
		
		//更改某绑定DO的文字信息
		public  function setDOInfo(info:String):void
		{
			m_uniqueInstance.m_tipTxt.text = info;
		}
		
		private  function showtip(evt:MouseEvent):void
		{
			m_uniqueInstance.x = evt.stageX+10;
			m_uniqueInstance.y = evt.stageY + 20;//注，20是鼠标高度
			updatetip();
			m_uniqueInstance.visible = true;
			if (m_stage.contains(m_uniqueInstance) == false){
				m_stage.addChild(m_uniqueInstance);
			}
		}
		private  function hidetip(evt:MouseEvent):void
		{
			m_uniqueInstance.visible = false;
		}
		private  function movetip(evt:MouseEvent):void
		{
			m_uniqueInstance.x = evt.stageX;
			m_uniqueInstance.y = evt.stageY + 20;
		}
		private  function updatetip():void
		{
			if(m_uniqueInstance.m_tipTxt.width > m_nmaxtxtwidth)
			{
				m_uniqueInstance.m_tipTxt.wordWrap = true;
				m_uniqueInstance.m_tipTxt.width = m_nmaxtxtwidth;
			}
			//
			var gp:Graphics = m_uniqueInstance.graphics;
			gp.clear();
			gp.lineStyle(0, m_nbordercolor);
			gp.beginFill(m_nbgcolor);
			gp.drawRect(0, 0, m_uniqueInstance.m_tipTxt.width, m_uniqueInstance.m_tipTxt.height);
			gp.endFill();
			//
		}
		//
		public  function set stage(stage:Stage):void
		{
			m_stage = stage;
		}
		public  function setTipProperty(txtcolor:uint=0x000000, txtsize:int=12, maxtxtwidth:int=200, bordercolor:uint=0x000000, bgcolor:uint=0xFFFFCC):void
		{
			m_nmaxtxtwidth = maxtxtwidth;
			m_nbordercolor = bordercolor;
			m_nbgcolor = bgcolor;
		}
	}
}