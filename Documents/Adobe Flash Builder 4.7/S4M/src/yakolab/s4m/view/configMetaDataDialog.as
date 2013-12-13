
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.MouseEvent;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.model.Book;
import yakolab.s4m.view.BookPanel;

private var app:S4M;
private var bookPanel:BookPanel;
private var book:Book;

protected function closeHandler(event:CloseEvent):void
{
	PopUpManager.removePopUp(this);
}

private function onCreationComplete(event:FlexEvent):void
{
	app = S4M(this.parentApplication);
	bookPanel = app.currentBookPanel;
	book = bookPanel.book;
	
	this.songname.content = book.songname;
	this.songname_kana.content = book.songname_kana;
	this.subtitle1.content = book.subtitle1;
	this.subtitle1_kana.content = book.subtitle1_kana;
	this.subtitle2.content = book.subtitle2;
	this.subtitle2_kana.content = book.subtitle2_kana;
	this.source.content = book.source;
	this.publish_place.content = book.publish_place;
	this.publisher.content = book.publisher;
	this.holder.content = book.holder;
	this.publish_year.content = book.publish_year;
	this.premiere_year.content = book.premiere_year;
	this.book_type.content = book.book_type;
	this.pages_and_lines.content = book.pages_and_lines;
	this.remarks.content = book.remarks;
	this.freecolumn.content = book.freecolumn;
	
	// WORKAROUND 項目を更新するにはおそらくこの方法しかない
	dataGrid.dataProvider = null;
	dataGrid.dataProvider = arrayList;
}

private function onOKClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
	
	book.songname = this.songname.content;
	book.songname_kana = this.songname_kana.content;
	book.subtitle1 = this.subtitle1.content;
	book.subtitle1_kana = this.subtitle1_kana.content;
	book.subtitle2 = this.subtitle2.content;
	book.subtitle2_kana = this.subtitle2_kana.content;
	book.source = this.source.content;
	book.publish_place = this.publish_place.content;
	book.holder = this.holder.content;
	book.publish_year = this.publish_year.content;
	book.premiere_year = this.premiere_year.content;
	book.publisher = this.publisher.content;
	book.book_type = this.book_type.content;
	book.pages_and_lines = this.pages_and_lines.content;
	book.remarks = this.remarks.content;
	book.freecolumn = this.freecolumn.content;
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}

private function loadImage():Bitmap
{
	if(bookPanel.selectedImageData == null) return null;
	var bd:BitmapData = bookPanel.selectedImageData;
	
	return new Bitmap(bd);
}