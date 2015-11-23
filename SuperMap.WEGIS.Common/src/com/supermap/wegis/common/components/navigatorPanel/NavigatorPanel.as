package   com.supermap.wegis.common.components.navigatorPanel
{
	import com.supermap.web.core.Rectangle2D;
	import com.supermap.web.mapping.Map;
	import com.supermap.wegis.common.components.events.NavigatorPanelEvent;
	import com.supermap.wegis.common.utils.StringHandleUtils;
	
	import flash.display.Graphics;
	import flash.display.SpreadMethod;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.controls.Image;
	import mx.controls.Label;
	import mx.core.UIComponent;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	
	import spark.components.BorderContainer;
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.Scroller;
	import spark.components.VGroup;

	/**当前区域发生变化*/
	[Event(name="RegionChanged",type="com.supermap.wegis.common.components.events.NavigatorPanelEvent")]
	/**
	 * Description 区域定位导航控件
	 * author 
	 * */
	public class NavigatorPanel extends Group
	{
		[Embed("com/supermap/wegis/common/images/navigatorPanel/open.png")]
		private var open:Class;
		[Embed("com/supermap/wegis/common/images/navigatorPanel/close.png")]
		private var close:Class;
		[Embed(source="com/supermap/wegis/common/images/jt.png")]
		private var zonePointImg:Class;
		public var map:Map;
		private var container:VGroup;
		//标记IList被重新复制set方法被调用
		private var childProviderChanged:Boolean = false;
		private var fatherProviderChanged:Boolean = true;
		//标记IList值别修改，如增加，删除
		private var childProviderCollectionChanged:Boolean = false;
		private var fatherProviderCollectionChanged:Boolean = false;
		private var _mouseSelectChanged:Boolean = false;
		/**用于显示请求数据的过程，显示一个等待状态*/
		private var maskObject:BorderContainer;
		/**
		 * 第一级容器
		 * */
		private var fatherGroup:VGroup ;
		/**
		 * 第二级容器
		 * */
		private var childGroup:VGroup;
		/**
		 * 第二级容器外部滚动条
		 * */
		private var scroller:Scroller;
		/**
		 * 第一级dataProver
		 * */
		private var _fatherProvider:IList;
		/**
		 * 第二级dataProver
		 * */
		private var _childProvider:IList;
		/**
		 * 能否收缩
		 * */
		private var _isEnableContract:Boolean = true;
		/**
		*初始设置的区域
		 * */
		private var _configData:CurrentRegionVO;
		/**
		 * 收缩状态
		 * */
		private var isContract:Boolean = true;
		/**
		 * 收缩图片
		 * */
		private var openImage:Image ;
//		public var _type:String ;//标示哪个导航，行政，流域，水资源
		
		/**
		 * 当前选择的行政区域
		 * */
		private var _currentRegion:CurrentRegionVO;
		/**
		 * 能够钻去的级别数，默认县，4级
		 * */
		private var _regionStep:int = 3;
		/**
		 * 存储选择的label，用于最后一级高亮显示
		 * */
		private var selectLabel:Label;
		/**
		 * 第一次设置,是否更新viewbounds
		 * */
		private var _firstLevelNOtOverViewMap:Boolean = true;
		/**
		 * 构造函数
		 * */
		public function NavigatorPanel()
		{
			super();
			this.fatherProvider = new ArrayCollection();
		}
		/**标识是否是鼠标交换选择，发生的变化*/
		public function get mouseSelectChanged():Boolean
		{
			return _mouseSelectChanged;
		}


		/**
		 * 能否收缩
		 * */
		public function get isEnableContract():Boolean
		{
			return _isEnableContract;
		}

		/**
		 * 能否收缩
		 */
		public function set isEnableContract(value:Boolean):void
		{
			_isEnableContract = value;
		}

		public function get firstLevelNOtOverViewMap():Boolean
		{
			return _firstLevelNOtOverViewMap;
		}
		/**第一次设置,是否更新viewbounds*/
		public function set firstLevelNOtOverViewMap(value:Boolean):void
		{
			_firstLevelNOtOverViewMap = value;
		}

		/**切换的等级数目,默认县，4级  ,中国，省，市，县， 设置regionStep = 3即可*/
		public function get regionStep():int
		{
			return _regionStep;
		}

		/**
		 * @private
		 */
		public function set regionStep(value:int):void
		{
			_regionStep = value;
		}

//		public function get currentRegion():CurrentRegionVO
//		{
//			if(this._currentRegion == null)
//			{
//				this._currentRegion = new CurrentRegionVO();
//			}
//			return this._currentRegion;
//		}
//		public function set currentRegion(value:CurrentRegionVO):void
//		{
//			if(this._currentRegion != value)
//			{
//				this._currentRegion = value;
//			}
//		}
		
		/**派发选择值发生变化事件*/
		private function changeValue():void
		{
			//暂时放在这里，可能会有问题-2012-11-30-BMliang
			if(_currentRegion == null)
			{
				return;
			}
			var cascade:ArrayCollection = new ArrayCollection();
			cascade.addItem(this._currentRegion);
			dispatchEvent(new NavigatorPanelEvent(NavigatorPanelEvent.REGION_CHANGED,this._currentRegion,cascade,false));
		}
		
		/**
		 * 为第一级绘制背景色
		 * */
		private function setBackgroundColor(ui:UIComponent,open:Boolean):void
		{
			var g:Graphics = ui.graphics;
			g.clear();
			var colors:Array ;
			//如果父窗口包含两行，则设置背景色为白色
			if(fatherGroup.numElements<2)
			{
				if(open)
				{
					colors =[0xFDFDFD8,0xFDFDFD];
				}else
				{
					colors =[0x2C9AFB,0x2C9AFB]
				}
			}else
			{
				colors = [0xffffff,0xffffff];
			}
			var alphas:Array = [0.8, 0.8];
			var ratios:Array = [0x05, 0x5F];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(20, 20,  Math.PI / 2, 0, 0);
			var spreadMethod:String = SpreadMethod.PAD;
			
		//	g.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,matr,spreadMethod);
		//	g.drawRect(0,0,ui.width,ui.height);
			g.lineStyle(1,0x333333);
			drawBrokenLine(g,0,ui.height ,ui.width,ui.height,1,2);
			g.endFill();
			g = null;
		}
		
		/**  
		 * 画线  
		 * @param g  
		 * @param fromX  
		 * @param fromY  
		 * @param toX  
		 * @param toY  
		 * @param solidLen      实线长度  
		 * @param brokenLen     虚线间隔  
		 */   
		public function drawBrokenLine(g:Graphics,fromX:Number,fromY:Number,toX:Number,toY:Number,solidLen:Number=5,brokenLen:Number=0):void   
		{   
			//如果间隔为0,直接画实线    
			if(brokenLen == 0 || solidLen == 0)   
			{   
				g.moveTo(fromX,fromY);   
				g.lineTo(toX,toY);   
				return;   
			}   
			//如果间隔不为0,画虚线    
			var xOffset:Number = toX - fromX;   
			var yOffset:Number = toY - fromY ;   
			//正切角度值    
			var atan:Number = Math.atan2(yOffset,xOffset);   
			//线的总长度    
			var totalLen:Number =Math.sqrt(Math.pow(xOffset,2)+Math.pow(yOffset,2));   
			//已经画线长度    
			var len:Number = 0;   
			//当前循环是否画实线    
			var isDrawSolid:Boolean = true;   
			var tempFX:Number = fromX;   
			var tempFY:Number = fromY;   
			while(totalLen>len)   
			{   
				len = isDrawSolid ? len + solidLen : len + brokenLen;   
				//利用三角函数,计算该段终点坐标    
				var tempTX:Number = Math.cos(atan)*len + fromX;   
				var tempTY:Number = Math.sin(atan)*len + fromY;   
				if(isDrawSolid)   
				{   
					g.moveTo(tempFX,tempFY);   
					g.lineTo(tempTX,tempTY);   
				}   
				isDrawSolid = !isDrawSolid;   
				tempFX = tempTX ;   
				tempFY = tempTY ;   
			}
		}
		
		/**
		 * 控制第二级显示和隐藏
		 * */
		private function changeState(event:MouseEvent):void
		{
			if(isContract)	{
				isContract = !isContract;
				contractChildGroup(isContract);
			}else{
				isContract = !isContract;
				contractChildGroup(isContract);
			}
		}
		
		/**
		 * 展开二级面板
		 * */
		private function contractChildGroup(contract:Boolean):void {
			//打开-》关闭
			if(!contract)	{
				childGroup.height = 0;
				childGroup.visible = false;
				openImage.source = close;
				openImage.toolTip = "展开";
			}else{
				childGroup.height = NaN ;
				childGroup.visible = true;
				openImage.source = open;
				openImage.toolTip = "收起";
			}
		}
		
		private function set fatherProvider(value:IList):void
		{
			if (_fatherProvider == value)
				return;
			removeFatherProviderListener();
			_fatherProvider = value;  // listener will be added by commitProperties()
			fatherProviderChanged = true;
			fatherProviderCollectionChanged = true;
			invalidateProperties();
		}
		private function get fatherProvider():IList
		{
			return this._fatherProvider;
		}
		public function set configData(value:CurrentRegionVO):void
		{
			if(value == null)
			{
				return;
			}
			this._configData = value;
			this._currentRegion = value;
			this._currentRegion.regionStep = 0;
			this.fatherProvider = new ArrayCollection();
			this.fatherProvider.addItem(value);
		}
		public function get configData():CurrentRegionVO
		{
			return this._configData;
		}

		/**
		 *function  标记第一级级联区域数据源发生变化
		 * */
		protected function flagFatherDataProvider(event:CollectionEvent):void
		{
			fatherProviderCollectionChanged = true;
			invalidateDisplayList();
		}
		
		/**
		 *function  标记当前区域的下一级区域数据源发生变化
		 * */
		protected function flagChildDataProvider(event:CollectionEvent):void
		{
			if(event.kind == CollectionEventKind.REMOVE || event.kind == CollectionEventKind.RESET)
			{
				return;
			}
			if(childProviderCollectionChanged == false)
			{
				childProviderCollectionChanged = true;
				invalidateDisplayList();
			}
			
		}
		
		/**第一级数据提供者发生改变回调函数*/
		private function ChangeFatherNavigator():void
		{
			var index:int = 0;
			fatherGroup.removeAllElements();
			var len:int= 0;
			var hgroup:HGroup = new HGroup();
			var currentRowWidth:int;
			hgroup.height=18;
			hgroup.gap = 3;
			hgroup.verticalAlign = "middle";
			if(isEnableContract && openImage ) {
	    		hgroup.addElementAt(openImage,0);
				currentRowWidth = this.width-openImage.width - hgroup.gap;
			}else
			{
				currentRowWidth = this.width - hgroup.gap
			}
			for each(var item:CurrentRegionVO in _fatherProvider)
			{
				if(item == null)
				{
					continue;
				}
				var symbtn:Label=new Label();
				symbtn.styleName = "navigatorStyle";
				symbtn.addEventListener(MouseEvent.CLICK,fatherItemClick);
				symbtn.buttonMode= true;
				symbtn.useHandCursor = true;
				symbtn.mouseChildren = false;
				if(item != _fatherProvider[_fatherProvider.length - 1])	{
					symbtn.text = item.areaName ;
				}else 		{
					//第一级的最后一项
					symbtn.text = item.areaName ;
					if(item.bounds == null && map !=null && regionStep != 0 && _firstLevelNOtOverViewMap == true  )			{
						map.viewEntire();
					}else if(item.bounds != null && map !=null)		{
						map.viewBounds = item.bounds;
					}
					_firstLevelNOtOverViewMap = true;
				}
				if(index != 0) {
					var splitImg:Image =new Image();
					splitImg.source = zonePointImg;
					hgroup.addElement(splitImg);
				}
				index++;
				symbtn.data =item;
				var textNum:Number = StringHandleUtils.calcuteLength(symbtn.text);
				symbtn.width = textNum *getStyle("fontSize")+5 ;
				len = symbtn.width + len ;
				if(len >= currentRowWidth  )	{
					fatherGroup.addElement(hgroup);
					hgroup=new HGroup();
					hgroup.height=18;
					len = 0;
					len = len + symbtn.width ;
				}
				hgroup.addElement(symbtn);
				if( item == _fatherProvider[_fatherProvider.length-1])	{
					fatherGroup.addElement(hgroup);
				}
			}
		}
		private function fatherItemClick(event:MouseEvent):void
		{
			var label:Label = event.currentTarget as Label;
			this._currentRegion = label.data as CurrentRegionVO;;
			var index:int = fatherProvider.getItemIndex(this._currentRegion);
			//移除父窗口选择项后面的子项
			for(var i:int = index +1 ; i<fatherProvider.length ;)	{
				fatherProvider.removeItemAt(i);
			}
			if(selectLabel != null)	{
				selectLabel.styleName ="navigatorStyle";
			}
			selectLabel = null;
			//设置当前等级
			this._currentRegion.regionStep = fatherProvider.length;
			if(fatherProvider.length <  regionStep)
			{
				dispatchEvent(new NavigatorPanelEvent(NavigatorPanelEvent.REGION_CHANGED,this._currentRegion,fatherProvider,true));
				initMask();	
			}
			//如果子窗口关闭，打开子窗口
			if(!isContract && isEnableContract)	{
				isContract = !isContract;
				contractChildGroup(isContract);
			}
		}
		/**
		 * 定义子导航显示列表数据源
		 * */
		public function set  childProvider(value:IList):void
		{
			removeMask();
			if (_childProvider == value) {
				return;
			}
			childProviderChanged = true;
			childProviderCollectionChanged = true;
			removeChildDataProviderListener();
			this._childProvider = value;
			invalidateProperties();
		} 
		public function get childProvider():IList
		{
			return this._childProvider;
		}
		/**第二级数据提供者发生改变回调函数*/
		private function ChangeChildNavigator():void
		{
			childGroup.removeAllElements();
			var hGroup:HGroup=new HGroup();
			var len:int;
			var currentRowWidth:int;
			currentRowWidth = this.width -Number(scroller.left) ;
			for each(var label:Object in _childProvider)	{
				hGroup.height=18;
				hGroup.gap = 3;
				var symbtn:Label=new Label();
				symbtn.styleName = "navigatorStyle";
				symbtn.useHandCursor = true;
				symbtn.mouseChildren = false;
				//构造空间范围
				var arr:Array = label.mapBounds.split(",");
				var bounds:Rectangle2D = new Rectangle2D(arr[0],arr[3],arr[2],arr[1]);
				var region:CurrentRegionVO = new CurrentRegionVO(label.nodeName,label.nodeId,fatherProvider.length.toString(),configData.areaType,bounds);
				symbtn.data =region;
				symbtn.buttonMode= true;
				symbtn.text = region.areaName;
				var textNum:Number = StringHandleUtils.calcuteLength(symbtn.text);
				symbtn.width = textNum *getStyle("fontSize")+5 ;
				symbtn.addEventListener(MouseEvent.CLICK,childItemClick);
				symbtn.addEventListener(MouseEvent.MOUSE_OVER,showUnderLine);
				symbtn.addEventListener(MouseEvent.MOUSE_OUT,hideUnderLine);
				len = len + symbtn.width + 3;
				if(currentRowWidth <= len  )	{
					childGroup.addElement(hGroup);
					hGroup=new HGroup();
					len = 0;
					len = len + symbtn.width + hGroup.gap;
				}
				hGroup.addElement(symbtn);
				if( label== _childProvider[_childProvider.length-1]) {
					childGroup.addElement(hGroup);
				}
			}
		}
		
		//显示下划线
		private function showUnderLine(event:MouseEvent):void
		{
			var label:Label  = event.currentTarget as Label;
			label.setStyle("textDecoration","underline");
		}
		
		//隐藏下滑线
		private function hideUnderLine(event:MouseEvent):void
		{
			var label:Label  = event.currentTarget as Label;
			label.setStyle("textDecoration","none");
		}
		private function childItemClick(event:MouseEvent):void
		{
			var label:Label = event.currentTarget as Label;
			this._currentRegion = label.data as CurrentRegionVO;
			this._currentRegion.regionStep = fatherProvider.length;
			//如果是最后一级，需要将二级列表选择的区域，添加到cascadeData中
			var cascadeData:ArrayCollection;
			//如果超出设置的请求等级，就不再发请求
			if(_fatherProvider.length < regionStep)	{
				fatherProvider.addItem(label.data as CurrentRegionVO);
			    cascadeData = new ArrayCollection(fatherProvider.toArray());
				removeMask();
				initMask();
			} else {
				cascadeData = new ArrayCollection(fatherProvider.toArray());
				cascadeData.addItem(label.data as CurrentRegionVO);
			}
			dispatchEvent(new NavigatorPanelEvent(NavigatorPanelEvent.REGION_CHANGED,this._currentRegion,cascadeData,true));
			if(_fatherProvider.length == regionStep)	{
				if(selectLabel != null)
				{
					selectLabel.styleName ="navigatorStyle";
				}
				label.styleName ="selectNavigator";
				selectLabel = label;
			}
			if(this._currentRegion.bounds == null && map !=null)		{
				map.viewEntire();
			}else if(this._currentRegion.bounds != null && map !=null)			{
				map.viewBounds = label.data.bounds;
			}
		}
		
		/**
		 *  @private
		 */
		private function addChildDataProviderListener():void
		{
			if (_childProvider)
				_childProvider.addEventListener(CollectionEvent.COLLECTION_CHANGE, flagChildDataProvider, false, 0, true);
		}
		
		/**
		 *  @private
		 */
		private function removeChildDataProviderListener():void
		{
			if (_childProvider)
				_childProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE, flagChildDataProvider);
		}
		
		/**
		 *  @private
		 */
		private function addFatherDataProviderListener():void
		{
			if (_fatherProvider)
				_fatherProvider.addEventListener(CollectionEvent.COLLECTION_CHANGE, flagFatherDataProvider, false, 0, true);
		}
		
		/**
		 *  @private
		 */
		private function removeFatherProviderListener():void
		{
			if (_fatherProvider)
				_fatherProvider.removeEventListener(CollectionEvent.COLLECTION_CHANGE, flagFatherDataProvider);
		}
		
		/**创建等待面板，并显示*/
		private  function initMask():void
		{
			maskObject = new BorderContainer();
			maskObject.percentHeight = 100;
			maskObject.percentWidth = 100;
			maskObject.alpha = 0.3;
			maskObject.setStyle("backgroundColor", "#bbbbbb");
			this.addElement(maskObject);
		}
		
		private function removeMask():void
		{
			if(maskObject && this.contains(maskObject))
			{
				this.removeElement(	maskObject);
			}
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			if(container == null)
			{
				container = new VGroup();
				container.percentHeight = 100;
				container.percentWidth = 100;
				this.addElement(container);
			}
			if(fatherGroup == null) 	{
				fatherGroup = new VGroup();
				fatherGroup.gap = 3;
				fatherGroup.verticalAlign= "middle";
				if(!isEnableContract)	{
					fatherGroup.paddingLeft = 10;
				}else {
					fatherGroup.paddingLeft = 5;
				}
				fatherGroup.percentWidth = 100;
				container.addElement(fatherGroup);
			}
			if(childGroup == null)	{
				scroller = new Scroller();
				scroller.setStyle("horizontalScrollPolicy","off");
				scroller.percentHeight = 100 ;
				scroller.percentWidth = 100;
				scroller.left = 19;
				scroller.right =0;
				var group:Group = new Group();
				group.clipAndEnableScrolling = true;
				group.percentWidth = 100;
				group.percentHeight =100;
				scroller.viewport = group;
				childGroup = new VGroup();
				childGroup.paddingLeft=10;
				childGroup.paddingTop = 0;
				childGroup.paddingBottom = 5;
				childGroup.percentHeight = 100;
				childGroup.percentWidth = 100;
				childGroup.gap = 3;
				group.addElement(childGroup);
				container.addElement(scroller);
			}
			if(isEnableContract && openImage == null) 	{
				openImage = new Image();
				openImage.source = open;
				openImage.width =14;
				openImage.height = 14;
				openImage.toolTip = "收起";
				openImage.useHandCursor = true;
				openImage.buttonMode = true;
				openImage.addEventListener(MouseEvent.CLICK,changeState);
			}
		}

		override protected function commitProperties():void
		{
			if ( childProviderChanged) 	{
				addChildDataProviderListener();
				childProviderChanged =false;
			}
			if(fatherProviderChanged)		{
				changeValue();
				addFatherDataProviderListener();
				fatherProviderChanged = false;
			}
			invalidateDisplayList();
			super.commitProperties();
		}
	
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(this.parent.width, unscaledHeight);
			this.width = this.parent.width;
			if(isContract)		{
				this.setBackgroundColor(fatherGroup,isContract);
			}else		{
				this.setBackgroundColor(fatherGroup,isContract);
			}
			if(fatherProviderCollectionChanged)		{
				ChangeFatherNavigator();
				fatherProviderCollectionChanged = false;
			}
			if(childProviderCollectionChanged)	{
				ChangeChildNavigator();
				childProviderCollectionChanged = false;
			}
		}
		
		
	}
}