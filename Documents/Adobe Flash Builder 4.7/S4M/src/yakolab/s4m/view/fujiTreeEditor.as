
import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.URLVariables;

import mx.collections.XMLListCollection;
import mx.controls.Alert;
import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.managers.PopUpManager;
import mx.utils.Base64Encoder;

import yakolab.s4m.model.Category;
import yakolab.s4m.model.CategoryClasses;
import yakolab.s4m.util.Base64Util;
import yakolab.s4m.util.SQLUtil;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.NameInputDialog;

private var app:S4M;
private var bookPanel:BookPanel;

private var currentSelectedItem:XML = null;
private var currentSelectedCategoryItem:XML = null;

private var selectedCategory:Category;
private var editingCategory:CategoryClasses;

protected function closeHandler(event:CloseEvent):void
{
	PopUpManager.removePopUp(this);
}

private function onCreationComplete(event:FlexEvent):void
{
	app = S4M(this.parentApplication);
	bookPanel = app.currentBookPanel;
	
	createCategoryList();
}

private function createCategoryList():void {
	function afterRegistered(event:Event):void{
		var xml:XML = new XML(event.target.data);
		categoryList.source = xml.children();
	}
	
	SQLUtil.query("loadCategories.php", null, afterRegistered);
}

private function registerNewCategory(name:String, feedback:Function):void {
	var data:* = new URLVariables();
	data.name = name;
	SQLUtil.query("newCategory.php", data, feedback);
}

private function onAddCategoryClick(event:MouseEvent):void {
	function nameInputReturnHandler(str:String):void {
		if(!str) return; // CANCEL
		
		function afterRegistered(event:Event):void{
			var id:int = event.target.data;
			var xml:XML = new XML("<category id='"+id+"' label='"+str+"' ></category>");
			categoryList.addItem(xml);
		}
		
		registerNewCategory(str, afterRegistered);
		
	}
	
	function alertClickHandler(evt:CloseEvent):void {
		if (evt.detail == Alert.OK) {
			NameInputDialog.show(app, nameInputReturnHandler);
		}
	}
	
	Alert.noLabel = "いいえ";
	Alert.show("新しい項目を追加してよいですか？\n\n（この操作は元に戻せません。既存の項目と全く違うものを作成したい場合のみ、「OK」を選んで下さい。）","確認",Alert.OK|Alert.NO,this,alertClickHandler);
	
}

private function onClassTreeClick(event:mx.events.ListEvent):void {
	if(currentSelectedItem){
		currentSelectedItem.@text = interpretArea.text;
		
		if(classTree.selectedItem == currentSelectedItem){
			classTree.selectedIndex = -1;
			currentSelectedItem = null;
		}
	}
	
	var selectedXML:XML = (classTree.selectedItem as XML);
	if(selectedXML){
		interpretArea.text = selectedXML.@text;
		currentSelectedItem = selectedXML;
	}

	interpretArea.enabled = true;
}

private function onClassNameChange(event:MouseEvent):void {
	if(!currentSelectedItem) return;
	
	function nameInputReturnHandler(newname:String):void {
		if(!newname) return; // CANCEL
		
		currentSelectedItem.@label = newname;
	}
	
	NameInputDialog.show(app, nameInputReturnHandler);
}

private function onCategoryNameChange(event:MouseEvent):void {
	if(!currentSelectedCategoryItem) return;
	
	function nameInputReturnHandler(newname:String):void {
		if(!newname) return; // CANCEL
		currentSelectedCategoryItem.@label = newname;
	}
	
	function alertClickHandler(evt:CloseEvent):void {
		if (evt.detail == Alert.OK) {
			NameInputDialog.show(app, nameInputReturnHandler);
		}
	}
	
	Alert.noLabel = "いいえ";
	Alert.show(currentSelectedCategoryItem.@label + "の名前を変更してよいですか？\n\n（この操作は元に戻せません！）","確認",Alert.OK|Alert.NO,this,alertClickHandler);
	
}

private function onAddClassClick(event:MouseEvent):void {
	function nameInputReturnHandler(str:String):void {
		if(!str) return; // CANCEL
		
		var id:int = editingCategory.createNewFujiClass(str);
		var xml:XML = new XML("<class id='"+id+"' label='"+str+"' ></class>");
		
		if(classTree.selectedItem){
			var _parent:XML = classList.getItemAt(classTree.selectedIndex) as XML;
			
			_parent.appendChild(xml);
		}else{
			classList.addItem(xml);
		}
	}
	
	NameInputDialog.show(app, nameInputReturnHandler);
}

private function loadCategory(id:int, rev:int):Category {
	return new Category(id, rev);
}

public function loadSelectedCategory():Category {
	var sel:XML = categoryTree.selectedItem as XML;
	
	if(sel == null){
		return null;
	}
	
	
	var id:int;
	var rev:int = -1;
	
	if(sel.localName() == "revision"){
		id = parseInt(sel.attribute("category_id"));
		rev = parseInt(sel.attribute("rev"));
	}else{
		id = parseInt(sel.attribute("id"));
	}
	
	return loadCategory(id, rev);
}

private function onSaveButtonClick(event:MouseEvent):void {
	var vars:URLVariables = new URLVariables;
	vars.xml = Base64Util.encode(classList.toXMLString());
	vars.category_id = editingCategory.category_id;
	
	function afterSave(event:Event):void {
		var rev:int = parseInt(event.target.data);
		createCategoryList();
		categoryTree.selectedItem = editingCategory.xml;
		
		Alert.okLabel = "OK";
		Alert.show("r" + rev.toString() + "として保存しました。","保存完了", Alert.OK);
	}
	
	SQLUtil.query("saveCategory.php", vars, afterSave);
}

private function onCategoryDeleteClick(event:MouseEvent):void {
	if(!categoryTree.selectedItem) return;
	
	var node:XML = (categoryTree.selectedItem as XML);
	
	function alertClickHandler(evt:CloseEvent):void {
		if (evt.detail == Alert.OK) {
			categoryList.removeItemAt(categoryTree.selectedIndex);
			categoryList.refresh();
			
			currentSelectedCategoryItem = null;
		}
	}
	
	Alert.noLabel = "いいえ";
	Alert.show(categoryTree.selectedItem.@label + "を削除してよいですか？\n\n（この操作は元に戻せません！）","確認",Alert.OK|Alert.NO,this,alertClickHandler);
}

private function onClassDeleteClick(event:MouseEvent):void {
	if(!classTree.selectedItem) return;
	
	function alertClickHandler(evt:CloseEvent):void {
		if (evt.detail == Alert.OK) {
			classList.removeItemAt(classTree.selectedIndex);
			classList.refresh();
			
			currentSelectedItem = null;
		}
	}
	
	Alert.noLabel = "いいえ";
	Alert.show(categoryTree.selectedItem.@label + "を削除してよいですか？\n\n（この操作は元に戻せません！）","確認",Alert.OK|Alert.NO,this,alertClickHandler);
}

private function onCategoryTreeClick(event:mx.events.ListEvent):void {
	if(categoryTree.selectedItem == currentSelectedCategoryItem){
		categoryTree.selectedIndex = -1;
		currentSelectedCategoryItem = null;
	}
	
	selectedCategory = loadSelectedCategory();
		
	currentSelectedCategoryItem = categoryTree.selectedItem as XML;
}

// WORKAROUND see http://stackoverflow.com/questions/2037820/flex4-list-item-double-click-event
private function onCategoryTreeDblClick(event:MouseEvent):void {
	selectedCategory = loadSelectedCategory();
	
	if(selectedCategory == null) return;
	
	if(editingCategory){
		function alertClickHandler(evt:CloseEvent):void {
			if (evt.detail == Alert.YES) {
				startEditing();
			}
		}
		
		Alert.yesLabel = "はい";
		Alert.cancelLabel = "いいえ";
		Alert.show("編集中のカテゴリは、保存されず破棄されますがよろしいですか？","警告",Alert.YES|Alert.CANCEL,this,alertClickHandler);
	}else{
		startEditing();
	}
}

private function startEditing():void {
	var xml:XML = categoryTree.selectedItem as XML;
	var id:int = xml.@id;
	var category_id:int = xml.@category_id;
	var rev:int = xml.@rev;
	if(rev == 0) rev = -1;
	
	editingCategory = new CategoryClasses(xml, id, category_id, rev);
	
	function afterLoaded(event:Event):void {
		if(event.target.data){
			var xml:XML = new XML(event.target.data);
			classList.source = xml.children();
			
			if(classList.source.length() == 0){
				classList.source = new XMLList();
			}
			
		}else{
			classList.source = new XMLList();
		}
		
		categoryContainer.enabled = true;
		interpretArea.enabled = false;
	}
	
	var vars:URLVariables = new URLVariables();
	vars.id = editingCategory.category_id;
	vars.rev = editingCategory.rev;
	SQLUtil.query("loadCategoryVersion.php", vars, afterLoaded);
}

private function onImportClick(event:MouseEvent):void {
	// Impl
	PopUpManager.removePopUp(this);
}

private function onCloseClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}