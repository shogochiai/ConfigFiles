
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;

import mx.core.UIComponent;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import spark.components.BorderContainer;
import spark.layouts.TileLayout;

import yakolab.s4m.model.Book;
import yakolab.s4m.model.FujiData;
import yakolab.s4m.util.Vec;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiGridSelector;

private var app:S4M;
private var bookPanel:BookPanel;

protected function closeHandler(event:CloseEvent):void
{
	PopUpManager.removePopUp(this);
}

private function onCreationComplete(event:FlexEvent):void
{
	app = S4M(this.parentApplication);
	bookPanel = app.currentBookPanel;
}

private function onOKClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}