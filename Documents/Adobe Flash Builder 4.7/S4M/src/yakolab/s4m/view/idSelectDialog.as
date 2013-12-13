
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.URLVariables;
import flash.ui.Mouse;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.model.Book;
import yakolab.s4m.util.SQLUtil;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiGridSelector;
import yakolab.s4m.view.NameInputDialog;
import yakolab.s4m.view.ScoreImageSelectDialog;
import yakolab.s4m.view.ScoreVersionSelectDialog;

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
	function afterLoaded(event:Event):void {
		var xml:XML = new XML(event.target.data);
		var xmllist:XMLList = xml.children();
		
		dataList.removeAll();
		for each(var _xml:XML in xmllist){
			var obj:Object = new Object();
			obj.id = _xml.@id;
			obj.name = _xml.@name;
			obj.last_updated_user_id = _xml.@last_updated_user_id;
			obj.created = _xml.@created;
			obj.updated = _xml.@updated;
			
			dataList.addItem(obj);
		}
	}
	
	SQLUtil.query("loadScores.php", null, afterLoaded);
}

private function deleteButtonClick(event:MouseEvent):void {
	if(dataGrid.selectedItem){
		function afterDeleted(event:Event):void{
			refresh();
		}
		
		var vars:URLVariables = new URLVariables();
		vars.id = dataGrid.selectedItem.id;
		SQLUtil.query("deleteScore.php", vars, afterDeleted);
	}
}

private function addButtonClick(event:MouseEvent):void {
	NameInputDialog.show(app, function(str:String):void{
		
		var data:URLVariables = new URLVariables();
		data.name = str;
		SQLUtil.query("newScore.php", data, function(event:Event):void{
			refresh();
		});
	});
}

private function onOKClick(event:MouseEvent):void {
	if(dataGrid.selectedItem){
		app.tempScoreId = dataGrid.selectedItem.id;
		PopUpManager.removePopUp(this);
		
		if(app.tempIsEditing){
			PopUpManager.createPopUp(app, ScoreImageSelectDialog, true);
		}else{
			PopUpManager.createPopUp(app, ScoreVersionSelectDialog, true);
		}
	}
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}