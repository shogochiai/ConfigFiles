
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.URLVariables;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.model.Book;
import yakolab.s4m.util.SQLUtil;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiGridSelector;
import yakolab.s4m.view.ScoreImageSelectDialog;

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
	
	function afterLoaded(event:Event):void {
		var xml:XML = new XML(event.target.data);
		var xmllist:XMLList = xml.children();
		
		dataList.removeAll();
		for each(var _xml:XML in xmllist){
			var obj:Object = new Object();
			obj.id = _xml.@id;
			obj.rev = _xml.@rev;
			obj.last_updated_user_id = _xml.@last_updated_user_id;
			obj.created = _xml.@created;
			obj.comment = _xml.@comment;
			obj.score_image_id = _xml.@score_image_id;
			obj.fuji_class_category_version_id = _xml.@fuji_class_category_version_id;
			
			dataList.addItem(obj);
		}
	}
	
	var data:URLVariables = new URLVariables();
	data.score_id = app.tempScoreId;
	SQLUtil.query("loadScoreVersions.php", data, afterLoaded);
}

private function onNewClick(event:MouseEvent):void {
	var self:* = this;
	function afterLoaded(event:Event):void {
		app.tempScoreVersion = int(event.target.data);
		PopUpManager.removePopUp(self);
		PopUpManager.createPopUp(app, ScoreImageSelectDialog, self);
	}
	
	var data:URLVariables = new URLVariables();
	data.score_id = app.tempScoreId;
	SQLUtil.query("getLatestScoreVersions.php", data, afterLoaded);
}

private function onOKClick(event:MouseEvent):void {
	if(dataGrid.selectedItem){
		var item:Object = dataGrid.selectedItem;
		app.temp_score_version_id = item.id;
		app.tempScoreVersion = item.rev;
		app.tempScoreImageId = item.score_image_id;
		app.tempCategoryVersionId = item.fuji_class_category_version_id;
		PopUpManager.removePopUp(this);
		app.loadBook();
	}
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}