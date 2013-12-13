
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.events.Event;
import flash.net.URLVariables;
import flash.utils.Dictionary;

import mx.controls.Alert;
import mx.core.BitmapAsset;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.events.ItemClickEvent;
import mx.events.MenuEvent;
import mx.events.ResizeEvent;
import mx.events.StateChangeEvent;
import mx.managers.PopUpManager;

import spark.components.NavigatorContent;

import yakolab.s4m.model.Book;
import yakolab.s4m.model.Fuji;
import yakolab.s4m.model.FujiData;
import yakolab.s4m.util.Base64Util;
import yakolab.s4m.util.CropUtil;
import yakolab.s4m.util.SQLUtil;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.CellChangeDialog;
import yakolab.s4m.view.CommentInputDialog;
import yakolab.s4m.view.ConfigMetaDataDialog;
import yakolab.s4m.view.FujiInputAlert;
import yakolab.s4m.view.FujiRegion;
import yakolab.s4m.view.FujiTreeEditor;
import yakolab.s4m.view.FujiwakuChangeDialog;
import yakolab.s4m.view.IdSelectDialog;
import yakolab.s4m.view.LoadingWindow;

public var SELECT:int = 0;
public var MOVE:int = 1;
public var ZOOM:int = 2;
public var ZOOMOUT:int = 3;
public var SELECT_REGION:int = 10;

public var SCORE_AND_GRID:int = 101;
public var SCORE_ONLY:int = 102;
public var GRID_ONLY:int = 103;

private var isFirstTimeOnSelectRegion:Boolean = true;

public var isShowFujiwakuGrid:Boolean = true;
public var isShowFujiGrid:Boolean = true;

public var undoLimit:int = 30;

public var panelViewType:int = SCORE_AND_GRID;

[Bindable]
public var currentBookPanel:BookPanel = null;
public var bookPanels:Array = [];

public var tempScoreId:int;
public var tempScoreVersion:int = 1;
public var tempScoreImageId:int;
public var tempCategoryVersionId:int;
public var tempScoreImage:Bitmap;

public var temp_score_version_id:int; // for loading

public var tempIsEditing:Boolean = false;

[Bindable]
public var mode:int = SELECT;

private function menuHandler(e:MenuEvent):void {
	menuClick(e.item);
}

private function menuClick(item:Object):void {
	
	var itemName:String = item.@name;
	
	switch(itemName){
		case "file_new":
			tempIsEditing = false;
			PopUpManager.createPopUp(this, IdSelectDialog, true);
			break;
		case "file_save":
			CommentInputDialog.show(this,
				function(str:String):void {
					if(str=="") return;
					currentBookPanel.save(str);
				});
			break;
		case "view_fujiwakugrid":
			isShowFujiwakuGrid = !isShowFujiwakuGrid;
			for each(var bookPanel:BookPanel in bookPanels){
				bookPanel.redrawGridAll();
			}
			break;
		case "view_fujigrid":
			isShowFujiGrid = !isShowFujiGrid;
			for each(var bookPanel:BookPanel in bookPanels){
				bookPanel.redrawGridAll();
			}
			break;
		case "view_score_and_grid":
			changePanelViewType(SCORE_AND_GRID);
			break;
		case "view_score_only":
			changePanelViewType(SCORE_ONLY);
			break;
		case "view_grid_only":
			changePanelViewType(GRID_ONLY);
			break;
		case "config_metadata":
			PopUpManager.createPopUp(this, ConfigMetaDataDialog, true);
			break;
		case "config_score":
			Alert.okLabel = "続行";
			Alert.noLabel = "いいえ";
			Alert.show("【 警告 】\n楽譜IDや画像を変更すると、編集中のデータが壊れる恐れがあります。続行しますか？", "警告", Alert.OK + Alert.NO, null,
				function(evt:CloseEvent):void {
					if (evt.detail == Alert.OK) {
						tempIsEditing = true;
						PopUpManager.createPopUp(this, IdSelectDialog, true);
					}
				});
			break;
		case "config_grid_fuji":
			PopUpManager.createPopUp(this, FujiwakuChangeDialog, true);
			break;
		case "config_grid_cell":
			PopUpManager.createPopUp(this, CellChangeDialog, true);
			break;
		case "view_position_reset":
			for each(var bookPanel:BookPanel in bookPanels){
				var pastX:int = bookPanel.imageContainer.x;
				var pastY:int = bookPanel.imageContainer.y;
				bookPanel.imageContainer.x = 0;
				bookPanel.imageContainer.y = 0;
				bookPanel.gridContainer.x = 0;
				bookPanel.gridContainer.y = 0;
				
				for each(var reg:FujiRegion in bookPanel.book.fujiData.fujiRegionData){
					reg.x = reg.x - pastX;
					reg.y = reg.y - pastY;
				}
			}
			break;
		case "fuji_category_editor":
			PopUpManager.createPopUp(this, FujiTreeEditor, true);
			break;
	}
}

private function changePanelViewType(_panelViewType:int):void {
	panelViewType = _panelViewType;
	
	if(panelViewType == SCORE_AND_GRID){
		for each(var bookPanel:BookPanel in bookPanels){
			bookPanel.leftContainer.visible = true;
			bookPanel.rightContainer.visible = true;
			
			bookPanel.leftContainer.percentWidth = 50;
			bookPanel.rightContainer.percentWidth = 50;
			bookPanel.leftContainer.includeInLayout = true;
			bookPanel.rightContainer.includeInLayout = true;
		}
	}else if(panelViewType == SCORE_ONLY){
		for each(var bookPanel:BookPanel in bookPanels){
			bookPanel.leftContainer.visible = true;
			bookPanel.rightContainer.visible = false;
			bookPanel.leftContainer.includeInLayout = true;
			bookPanel.rightContainer.includeInLayout = false;
			
			bookPanel.leftContainer.percentWidth = 100;
		}
	}else if(panelViewType == GRID_ONLY){
		/* WORKAROUND 一度SCORE_ONLYのコードを実施しないと上手くいかない */
		for each(var bookPanel:BookPanel in bookPanels){
			bookPanel.leftContainer.visible = true;
			bookPanel.rightContainer.visible = false;
			bookPanel.leftContainer.includeInLayout = true;
			bookPanel.rightContainer.includeInLayout = false;
			
			bookPanel.leftContainer.percentWidth = 100;
			
			bookPanel.imageCropRefresh();
		}
		/* EOF FIXME */
		
		for each(var bookPanel:BookPanel in bookPanels){
			bookPanel.leftContainer.visible = false;
			bookPanel.rightContainer.visible = true;
			bookPanel.leftContainer.includeInLayout = false;
			bookPanel.rightContainer.includeInLayout = true;
			
			bookPanel.rightContainer.percentWidth = 100;
		}
	}
	
	for each(var bookPanel:BookPanel in bookPanels){
		bookPanel.imageCropRefresh();
	}
}

private function onFileButtonClickHandler(event:ItemClickEvent):void {
	switch(event.index){
		case 0:
			PopUpManager.createPopUp(this, IdSelectDialog, true);
			break;
		case 1: 
			trace("open"); break;
		case 2: trace("save"); break;
		case 3: trace("download"); break;
	}
}

private function onUndoButtonClickHandler(event:ItemClickEvent):void {
	switch(event.index){
		case 0: // Undo
			currentBookPanel.undo();
			break;
		case 1: // Redo
			currentBookPanel.redo();
			break;
	}
}


public function changeMode(_mode:int):void {
	mode = _mode;
	
	if(mode == SELECT_REGION && isFirstTimeOnSelectRegion){
		PopUpManager.createPopUp(this, FujiInputAlert, true);
		isFirstTimeOnSelectRegion = false;
	}
}

private function onModeButtonClickHandler(event:ItemClickEvent):void {
	switch(event.index){
		case 0: changeMode(SELECT); break;
		case 1: changeMode(SELECT_REGION); break;
		case 2: changeMode(MOVE); break;
		case 3: changeMode(ZOOM); break;
		case 4: changeMode(ZOOMOUT); break;
	}
	
	onResize(null);
}

private function onResize(event:ResizeEvent):void {
	for each(var bookPanel:BookPanel in bookPanels){
		bookPanel.imageCropRefresh();
	}
}

private function onStateChange(event:StateChangeEvent):void {
	var state:String = this.currentState;
	
	if(state == "default"){
		menuBar.dataProvider = this.defaultMenuList;
	}else{
		menuBar.dataProvider = this.menuList;
	}
	
}

private function onCreationComplete(event:FlexEvent):void {
	this.addEventListener(StateChangeEvent.CURRENT_STATE_CHANGE, onStateChange);
	this.currentState = "default";
	//FIXME
	onStateChange(null);
	trace("onCreationComplete");
}

private function onTabChange(event:Event):void {
	currentBookPanel = bookPanels[tabNavigator.selectedIndex];
}

private function loadFloatXml(xml:XML):Array {
	var arr:Array = [];
	
	for each(var val:XML in xml.children()){
		arr.push(parseFloat(val.@num))
	}
	
	return arr;
}

private function loadRegionXml(xml:XML, bookPanel:BookPanel):Dictionary {
	var dic:Dictionary = new Dictionary();
	
	var regions:XML = xml.regions[0];
	for each(var val:XML in regions.children()){
		var reg:FujiRegion = new FujiRegion(bookPanel);
		reg.zoomFactor = 1;
		reg.fuji_uid = val.@fuji_uid;
		reg.baseX = (parseFloat(val.@base_x));
		reg.baseY = (parseFloat(val.@base_y));
		reg.baseWidth = (parseFloat(val.@base_w));
		reg.baseHeight = (parseFloat(val.@base_h));
		
		dic[reg.fuji_uid] = reg;
	}
	
	return dic;
}

private function loadFujiDataXml(xml:XML, fujiData:FujiData, scoreImageData:BitmapData):void {
	var dic:Dictionary = new Dictionary();
	
	var fujidata:XML = xml.fujidata[0];
	for each(var val:XML in fujidata.children()){
		var fuji:Fuji = new Fuji(fujiData);
		fuji.uid = val.@uid;
		fuji.x = (parseInt(val.@x));
		fuji.y = (parseInt(val.@y));
		fuji.cell_x = (parseInt(val.@cell_x));
		fuji.cell_y = (parseInt(val.@cell_y));
		fuji.name = val.@name;
		fuji.kana = val.@kana;
		fuji.interpret = val.@interpret;
		
		var reg:FujiRegion = FujiRegion(fujiData.fujiRegionData[fuji.uid]);
		fuji.captureData = CropUtil.getCroppedBitmapData(reg.baseX, reg.baseY, reg.baseWidth, reg.baseHeight, scoreImageData);
		
		fujiData.write(fuji);
	}
}

public function loadXML(_xml:String, bookPanel:BookPanel, scoreImageData:BitmapData):void {
	var book:Book = bookPanel.book;
	bookPanel.scoreImageData = scoreImageData;
	bookPanel.imageContainer.addChild(new BitmapAsset(scoreImageData));
	book.image = scoreImageData;
	book.imageWidth = scoreImageData.width;
	book.imageHeight = scoreImageData.height;
		
	var fujiData:FujiData = book.fujiData;
	var xml:XML = new XML(_xml);
	var layout:XML = xml.layout[0];
	var size:XML = layout.children()[0];
	var center:XML = layout.children()[1];
	
	with(fujiData){
		layoutCellH = size.@layout_cell_h;
		layoutCellW = size.@layout_cell_w;
		layoutH = size.@layout_h;
		layoutW = size.@layout_w;
		layoutCenterX = center.@layout_center_x;
		layoutCenterY = center.@layout_center_y;
		layoutXPercents = loadFloatXml(layout.percent_x[0]);
		layoutYPercents = loadFloatXml(layout.percent_y[0]);
		layoutWPercents = loadFloatXml(layout.percent_w[0]);
		layoutHPercents = loadFloatXml(layout.percent_h[0]);
		fujiRegionData = loadRegionXml(xml, bookPanel);
	}
	
	// WORKAROUND 
	
	var metadata:XML = xml.metadata[0];
	
	book.songname = metadata.@songname;
	book.songname_kana = metadata.@songname_kana;
	book.subtitle1 = metadata.@subtitle1;
	book.subtitle1_kana = metadata.@subtitle1_kana;
	book.subtitle2 = metadata.@subtitle2;
	book.subtitle2_kana = metadata.@subtitle2_kana;
	book.source = metadata.@source;
	book.publish_place = metadata.@publish_place;
	book.publisher = metadata.@publisher;
	book.holder = metadata.@holder;
	book.publish_year = metadata.@publish_year;
	book.premiere_year = metadata.@premiere_year;
	book.book_type = metadata.@book_type;
	book.pages_and_lines = metadata.@pages_and_lines;
	book.remarks = metadata.@remarks;
	book.freecolumn = metadata.@freecolumn;
	
	loadFujiDataXml(xml, fujiData, scoreImageData);
}

public function loadBook():void {
	var app:S4M = this;
	var loadingWindow:LoadingWindow = LoadingWindow(PopUpManager.createPopUp(this, LoadingWindow, false));
	
	var score_id:int = tempScoreId;
	var image_id:int = tempScoreImageId;
	var rev:int = tempScoreVersion;
	var xml:String;
	
	function afterImageLoaded(event:Event):void {
		var bmp:Bitmap = Bitmap(event.target.content);
		data.image = bmp;
		var scoreImageData:BitmapData = bmp.bitmapData;
		
		var tab:NavigatorContent = new NavigatorContent();
		tab.percentWidth = 100;
		tab.percentHeight = 100;
		tab.label = "[loaded file]";
		tab.addEventListener(ResizeEvent.RESIZE, onResize);
		tabNavigator.addElement(tab);
		
		var book:Book = new Book();
		var bookPanel:BookPanel = new BookPanel(app, book, tab);
		loadXML(xml, bookPanel, scoreImageData);
		tab.addElement(bookPanel);
		
		app.currentState = "edit";
		onStateChange(null);
		
		bookPanel.redrawGridAll();
		
		PopUpManager.removePopUp(loadingWindow);
	}
	
	function afterLoaded(event:Event):void {
		xml = Base64Util.decode(event.target.data);
		
		var vars:URLVariables = new URLVariables();
		vars.image_id = image_id;
		SQLUtil.loadImage("loadScoreImageData.php", vars, afterImageLoaded);
	}
	
	var data:URLVariables = new URLVariables();
	data.version_id = temp_score_version_id;
	SQLUtil.query("loadScoreVersionXml.php", data, afterLoaded);
}

public function createNewBook():void {
	trace("addBookPanel");
	
	var tab:NavigatorContent = new NavigatorContent();
	tab.percentWidth = 100;
	tab.percentHeight = 100;
	tab.label = "[new file]";
	tab.addEventListener(ResizeEvent.RESIZE, onResize);
	tabNavigator.addElement(tab);
	
	var book:Book = new Book();
	book.score_version = tempScoreVersion;
	book.score_id = tempScoreId;
	book.image_id = tempScoreImageId;
	book.image = tempScoreImage.bitmapData.clone();
	
	var bookPanel:BookPanel = new BookPanel(this, book, tab);
	tab.addElement(bookPanel);
	
	bookPanels.push(bookPanel);
	currentBookPanel = bookPanel;
	
	this.currentState = "edit";
	onStateChange(null);
}