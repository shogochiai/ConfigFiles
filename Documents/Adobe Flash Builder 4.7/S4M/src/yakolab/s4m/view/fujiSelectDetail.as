
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.MouseEvent;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiInputDetail;

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

	image.source = loadImage();
}

private function onOKClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
	PopUpManager.createPopUp(bookPanel, FujiInputDetail, true);
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}

private function loadImage():Bitmap
{
	var bd:BitmapData = bookPanel.selectedImageData;
	
	return new Bitmap(bd);
}