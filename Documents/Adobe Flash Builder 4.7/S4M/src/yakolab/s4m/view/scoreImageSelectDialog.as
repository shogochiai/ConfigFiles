
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.net.FileFilter;
import flash.net.FileReference;
import flash.net.URLRequest;
import flash.net.URLVariables;

import mx.controls.Alert;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.model.Book;
import yakolab.s4m.util.Base64Util;
import yakolab.s4m.util.SQLUtil;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiGridSelector;
import yakolab.s4m.view.NameInputDialog;

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
	
	refresh();
}

private function refresh():void {
	function afterLoaded(event:Event):void{
		var xml:XML = new XML(event.target.data);
		var xmllist:XMLList = xml.children();
		
		dataList.removeAll();
		for each(var _xml:XML in xmllist){
			var obj:Object = new Object();
			obj["id"] = _xml.@id;
			obj["name"] = _xml.@name;
			obj["image_id"] = _xml.@image_id;
			
			dataList.addItem(obj);
		}
	}
	
	var vars:URLVariables = new URLVariables();
	vars.score_uid = app.tempScoreId;
	SQLUtil.query("loadScoreImages.php", vars, afterLoaded);
}

private function error(message:String):Function {
	return function(event:Event):void{
		Alert.okLabel = "OK";
		Alert.show("アップロードできませんでした。 ("+message+")","エラー",Alert.OK,this);
	};
}

private function deleteButtonClick(event:MouseEvent):void {
	if(dataGrid.selectedItem){
		function afterDeleted(event:Event):void{
			refresh();
		}
		
		var vars:URLVariables = new URLVariables();
		vars.id = dataGrid.selectedItem.id;
		SQLUtil.query("deleteScoreImage.php", vars, afterDeleted);
	}
}

private function addButtonClick(event:MouseEvent):void {
	NameInputDialog.show(this, function(namestr:String):void {
		var type:FileFilter =  new FileFilter("画像ファイル", "*.jpg;*.gif;*.png");
		var ref:FileReference = new FileReference();
		
		function fileSelected(event:Event):void {
			progress.visible = true;
			ref.load()
		}
		
		function databaseResisterComplete(event:Event):void {
			progress.visible = false;
			refresh();
		}
		
		function uploadComplete(event:Event):void {
			if(!ref.data){
				error("アップロード時にエラー");
				return;
			}
			
			var data:URLVariables = new URLVariables();
			data.score_id = app.tempScoreId;
			data.name = namestr;
			data.image = Base64Util.encodeByte(ref.data);
			
			SQLUtil.query("newScoreImage.php", data, databaseResisterComplete);
		}
		
		ref.addEventListener(Event.COMPLETE, uploadComplete);
		ref.addEventListener(IOErrorEvent.IO_ERROR, error("IOエラー"));
		ref.addEventListener(SecurityErrorEvent.SECURITY_ERROR, error("セキュリティエラー"));
		ref.addEventListener(Event.SELECT, fileSelected);
		
		ref.browse([type]);
	});
}

private function onOKClick(event:MouseEvent):void {
	if(dataGrid.selectedItem){
		app.tempScoreImageId = dataGrid.selectedItem.id;
		app.tempScoreImage = dataGrid.selectedItem.image;
		PopUpManager.removePopUp(this);
		app.createNewBook();
	}
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}