package sm.wegis.szy.skins.accordion
{
	import flash.display.GradientType;
	
	import mx.core.IButton;
	import mx.core.UIComponent;
	import mx.skins.Border;
	import mx.skins.halo.HaloColors;
	import mx.styles.StyleManager;
	import mx.utils.ColorUtil;
	
	/**
	 *  The skin for all the states of a Button.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public class AccordionHeaderSkinEx extends Border
	{
		//--------------------------------------------------------------------------
		//
		//  Class variables
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		private static var cache:Object = {}; 
		
		//--------------------------------------------------------------------------
		//
		//  Class methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 *  Several colors used for drawing are calculated from the base colors
		 *  of the component (themeColor, borderColor and fillColors).
		 *  Since these calculations can be a bit expensive,
		 *  we calculate once per color set and cache the results.
		 */
		private static function calcDerivedStyles(themeColor:uint,
												  fillColor0:uint,
												  fillColor1:uint):Object
		{
			var key:String = HaloColors.getCacheKey(themeColor,
				fillColor0, fillColor1);
			
			if (!cache[key])
			{
				var o:Object = cache[key] = {};
				
				// Cross-component styles.
				HaloColors.addHaloColors(o, themeColor, fillColor0, fillColor1);
			}
			
			return cache[key];
		}
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public function AccordionHeaderSkinEx()
		{
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden properties
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  measuredWidth
		//----------------------------------
		
		/**
		 *  @private
		 */
		override public function get measuredWidth():Number
		{
			return UIComponent.DEFAULT_MEASURED_MIN_WIDTH;
		}
		
		//----------------------------------
		//  measuredHeight
		//----------------------------------
		
		/**
		 *  @private
		 */
		override public function get measuredHeight():Number
		{
			return UIComponent.DEFAULT_MEASURED_MIN_HEIGHT;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);
			
			// User-defined styles.
			var borderColor:uint = getStyle("borderColor");
			var cornerRadius:Number = getStyle("cornerRadius");
			var fillAlphas:Array = getStyle("fillAlphas");
			var fillColors:Array = getStyle("fillColors");
			var selectedColors:Array = getStyle("selectedColors");
			styleManager.getColorNames(fillColors);
			var highlightAlphas:Array = getStyle("highlightAlphas");				
			var themeColor:uint = getStyle("themeColor");
			
			// Derivative styles.
			var derStyles:Object = calcDerivedStyles(themeColor, fillColors[0],
				fillColors[1]);
			
			var borderColorDrk1:Number =
				ColorUtil.adjustBrightness2(borderColor, -50);
			
			var themeColorDrk1:Number =
				ColorUtil.adjustBrightness2(themeColor, -25);
			
			var emph:Boolean = false;
			
			if (parent is IButton)
				emph = IButton(parent).emphasized;
			
			var cr:Number = Math.max(0, cornerRadius);
			var cr1:Number = Math.max(0, cornerRadius - 1);
			var cr2:Number = Math.max(0, cornerRadius - 2);
			
			var tmp:Number;
			
			graphics.clear();
			
			switch (name)
			{			
				case "selectedUpSkin":
				case "selectedOverSkin":
				{
					// button border/edge
					drawRoundRect(
						0, 0, w, h, cr,
						[ themeColor, themeColorDrk1 ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2)); 
					
					// button fill
					drawRoundRect(
						1, 1, w - 2, h - 2, cr1,
						[ selectedColors[0], selectedColors[1] ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2));
					break;
				}
					
				case "upSkin":
				{
					var upFillColors:Array = [ fillColors[0], fillColors[1] ];
					
					var upFillAlphas:Array = [ fillAlphas[0], fillAlphas[1] ];
					
					drawRoundRect(
						0, 0, w, h, cr,
						[ themeColor, themeColorDrk1 ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2)); 
					
					// button fill
					drawRoundRect(
						1, 1, w - 2, h - 2, cr1,
						[ upFillColors[0], upFillColors[1] ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2));
					break;
				}
					
				case "overSkin":
				{
					var overFillColors:Array;
					if (fillColors.length > 2)
						overFillColors = [ fillColors[2], fillColors[3] ];
					else
						overFillColors = [ fillColors[0], fillColors[1] ];
					
					var overFillAlphas:Array;
					if (fillAlphas.length > 2)
						overFillAlphas = [ fillAlphas[2], fillAlphas[3] ];
					else
						overFillAlphas = [ fillAlphas[0], fillAlphas[1] ];
					
					
					drawRoundRect(
						0, 0, w, h, cr,
						[ themeColor, themeColorDrk1 ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2)); 
					
					// button fill
					drawRoundRect(
						1, 1, w - 2, h - 2, cr1,
						[ overFillColors[0], overFillColors[1] ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2));
					
					break;
				}
					
				case "downSkin":
				case "selectedDownSkin":
				{
					// button border/edge
					drawRoundRect(
						0, 0, w, h, cr,
						[ themeColor, themeColorDrk1 ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2)); 
					
					// button fill
					drawRoundRect(
						1, 1, w - 2, h - 2, cr1,
						[ selectedColors[0], selectedColors[1] ], 1,
						verticalGradientMatrix(0, 0, w - 2, h - 2));
					
					break;
				}
					
				case "disabledSkin":
				case "selectedDisabledSkin":
				{
					var disFillColors:Array = [ fillColors[0], fillColors[1] ];
					
					var disFillAlphas:Array =
						[ Math.max( 0, fillAlphas[0] - 0.15),
							Math.max( 0, fillAlphas[1] - 0.15) ];
					
					// button border/edge
					drawRoundRect(
						0, 0, w, h, cr,
						[ borderColor, borderColorDrk1 ], 0.5,
						verticalGradientMatrix(0, 0, w - 2, h - 2),
						GradientType.LINEAR, null, 
						{ x: 1, y: 1, w: w - 2, h: h - 2, r: cornerRadius - 1 });
					
					// button fill
					drawRoundRect(
						1, 1, w - 2, h - 2, cr1,
						disFillColors, disFillAlphas,
						verticalGradientMatrix(1, 1, w - 2, h - 2)); 
					
					break;
				}
			}
		}
	}
}