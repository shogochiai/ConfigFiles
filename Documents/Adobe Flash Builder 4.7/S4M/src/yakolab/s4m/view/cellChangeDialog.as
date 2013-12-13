
import flash.events.MouseEvent;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.commands.CellChangeCommand;
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
	
	cellW.value = book.fujiData.layoutCellW;
	cellH.value = book.fujiData.layoutCellH;
}

private function onOKClick(event:MouseEvent):void {
	bookPanel.execCommand(new CellChangeCommand(cellW.value, cellH.value, book.fujiData.layoutCellW, book.fujiData.layoutCellH, bookPanel,book.fujiData));
	PopUpManager.removePopUp(this);
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}