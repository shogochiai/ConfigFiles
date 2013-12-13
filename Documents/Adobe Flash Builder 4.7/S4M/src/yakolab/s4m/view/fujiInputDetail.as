
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.MouseEvent;
import flash.utils.Dictionary;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.commands.Command;
import yakolab.s4m.commands.FujiRegisterCommand;
import yakolab.s4m.model.Fuji;
import yakolab.s4m.model.FujiData;
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

	image.source = loadImage();
}

private function onOKClick(event:MouseEvent):void {
	registerFuji();
	PopUpManager.removePopUp(this);
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}

private function registerFuji():void {
	var fujiData:FujiData = bookPanel.book.fujiData;
	var cellX:int = bookPanel.selectedCellX;
	var cellY:int = bookPanel.selectedCellY;
	var fujiX:int = bookPanel.selectedFujiPositionX;
	var fujiY:int = bookPanel.selectedFujiPositionY;
	var name:String = nameInput.text;
	var kana:String = kanaInput.text;
	var interpret:String = interpretArea.text;
	var img:BitmapData = bookPanel.selectedImageData;
	var fujiRegionData:Dictionary = bookPanel.book.fujiData.fujiRegionData;
	
	var command:FujiRegisterCommand = new FujiRegisterCommand(cellX,cellY,fujiX,fujiY,name,kana,interpret,img,bookPanel,fujiData,fujiRegionData);
	
	bookPanel.execCommand(command);
}

private function loadImage():Bitmap
{
	var bd:BitmapData = bookPanel.selectedImageData;
	
	return new Bitmap(bd);
}