
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.CommentInputDialog;
import yakolab.s4m.view.FujiGridSelector;
import yakolab.s4m.view.NameInputDialog;

private var app:S4M;
private var bookPanel:BookPanel;
private var feedback:Function;

public static function show(parent:DisplayObject, feedback:Function):void{
	var self:CommentInputDialog = CommentInputDialog(PopUpManager.createPopUp(parent,CommentInputDialog,true));
	self.feedback = feedback;
}

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
	if(textInput.text == ""){
		Alert.show("最低でも１文字は入力してください。", "エラー", Alert.OK);
	}else{
		PopUpManager.removePopUp(this);
		feedback(textInput.text);
	}
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}