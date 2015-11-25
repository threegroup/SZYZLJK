////////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2012 SuperMap
//
// All rights reserved under the copyright laws of the United States.
// You may freely redistribute and use this software, with or
// without modification, provided you include the original copyright
// and use restrictions.  See use restrictions in the file:
// <install location>/License.txt
//
////////////////////////////////////////////////////////////////////////////////
package  com.supermap.wegis.common.components.panel.contentPanel
{

import com.supermap.wegis.common.skins.TitlebarButtonSkin;

import flash.events.MouseEvent;

import mx.controls.Image;

import spark.components.supportClasses.SkinnableComponent;

[SkinState("normal")]
[SkinState("selected")]
[SkinState("over")]

public class TitlebarButton extends SkinnableComponent
{
    [SkinPart(required="false")]
    public var icon:Image;

    [Bindable]
    public var source:Object;
	
	public var data:Object;

	public function get titleState():String
	{
		return _titleState;
	}

	public function set titleState(value:String):void
	{
		_titleState = value;
		invalidateSkinState();
	}

    public var callback:Function;

    public var selectable:Boolean = true;
	
	private var _titleState:String = "normal";

    //----------------------------------
    //  selected
    //----------------------------------

    private var _selected:Boolean = false;
	public function TitlebarButton():void
	{
		setStyle("skinClass",TitlebarButtonSkin);
	}

    public function get selected():Boolean
    {
        return _selected;
    }

    public function set selected(value:Boolean):void
    {
        if (selectable && _selected != value)
        {
            _selected = value;
			if(value == true)
			{
				_titleState  = "selected";
			}else
			{
				_titleState = "normal";
			}
            invalidateSkinState();
        }
    }

	
    override protected function getCurrentSkinState():String
    {
        return titleState;
    }

    override protected function partAdded(partName:String, instance:Object):void
    {
        super.partAdded(partName, instance);

        if (instance == icon)
        {
            icon.addEventListener(MouseEvent.CLICK, icon_clickHandler);
			icon.addEventListener(MouseEvent.MOUSE_OVER,changeState);
			icon.addEventListener(MouseEvent.MOUSE_OUT,changeState);
        }
    }
	private function changeState(event:MouseEvent):void
	{
		if(event.type == MouseEvent.MOUSE_OVER)
		{
			if(titleState != "selected")
			{
				titleState = "over";
			}
		}else if(event.type == MouseEvent.MOUSE_OUT)
		{
			if(titleState != "selected")
			{
				titleState = "normal";
			}
		}
	}

    override protected function partRemoved(partName:String, instance:Object):void
    {
        super.partRemoved(partName, instance);

        if (instance == icon)
        {
            icon.removeEventListener(MouseEvent.CLICK, icon_clickHandler);
        }
    }

    private function icon_clickHandler(event:MouseEvent):void
    {
        selected = true;
        callback();
    }
}

}
