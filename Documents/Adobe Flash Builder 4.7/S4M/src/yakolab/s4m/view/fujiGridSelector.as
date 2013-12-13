
import flash.events.MouseEvent;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.graphics.SolidColorStroke;
import mx.managers.PopUpManager;

import spark.components.BorderContainer;
import spark.layouts.TileLayout;

import yakolab.s4m.model.Book;
import yakolab.s4m.model.FujiData;
import yakolab.s4m.util.Vec;
import yakolab.s4m.view.FujiSelectDetail;

private var app:S4M;
private var book:Book;
private var fujiData:FujiData;

private var selectors:Array;
private var selectorVectors:Array;
private var selectedBC:BorderContainer = null;
private var selectedX:int = 0;
private var selectedY:int = 0;

protected function closeHandler(event:CloseEvent):void
{
	PopUpManager.removePopUp(this);
}

private function onCreationComplete(event:FlexEvent):void
{
	app = S4M(this.parentApplication);
	book = app.currentBookPanel.book;
	fujiData = book.fujiData;
	
	selectors = [];
	selectorVectors = [];
	
	createFujiSelector();
}

private function onOKClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
	app.currentBookPanel.selectedFujiPositionX = selectedX;
	app.currentBookPanel.selectedFujiPositionY = selectedY;
	
	PopUpManager.removePopUp(this);
	PopUpManager.createPopUp(this, FujiSelectDetail, true);
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}

private function onMouseOver(event:MouseEvent):void {
	var bc:BorderContainer = BorderContainer(event.currentTarget);
	
	if(bc.styleName != "fujiLayoutSelected"){
		bc.styleName = "fujiLayoutOver";
	}
}

private function onMouseOut(event:MouseEvent):void {
	var bc:BorderContainer = BorderContainer(event.currentTarget);
	
	if(bc.styleName != "fujiLayoutSelected"){
		bc.styleName = "fujiLayout";
	}
}

private function onMouseClick(event:MouseEvent):void {
	var bc:BorderContainer = BorderContainer(event.currentTarget);
	var _bc:BorderContainer;
	var vec:Vec;
	
	for(var i:int = 0; i<selectors.length; i++){
		_bc = selectors[i];
		_bc.styleName = "fujiLayout";
		if(bc == _bc){
			vec = selectorVectors[i];
		}
	}
	
	bc.styleName = "fujiLayoutSelected";
	selectedBC = bc;
	selectedX = vec.x;
	selectedY = vec.y;
}

private function createFujiSelector():void
{
	var w:Number = fujiContainer.width;
	var h:Number = fujiContainer.height;
	
	var centerX:int = fujiData.layoutCenterX;
	var centerY:int = fujiData.layoutCenterY;
	
	for(var i:int = 0; i< fujiData.layoutW; i++){
		for(var j:int = 0; j< fujiData.layoutH; j++){
			
			var bc:BorderContainer = new BorderContainer();
			
			var wp:Number = fujiData.layoutWPercents[i];
			var hp:Number = fujiData.layoutHPercents[j];
			var xp:Number = fujiData.layoutXPercents[i];
			var yp:Number = fujiData.layoutYPercents[j];
		
			bc.styleName = "fujiLayout";
			bc.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
			bc.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
			bc.addEventListener(MouseEvent.CLICK, onMouseClick);
			bc.width = wp*w;
			bc.height = hp*h;
			bc.x = xp*w;
			bc.y = yp*h;
			
			if(i == centerX && j == centerY){
				bc.borderStroke = new SolidColorStroke(0x3D5232, 3);
				
				bc.styleName = "fujiLayoutSelected";
				selectedBC = bc;
				selectedX = i;
				selectedY = j;
			}
			
			fujiContainer.addElement(bc);
			selectors.push(bc);
			selectorVectors.push(new Vec(i,j));
		}
	}
}