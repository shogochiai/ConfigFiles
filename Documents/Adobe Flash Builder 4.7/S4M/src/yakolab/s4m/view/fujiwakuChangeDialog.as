
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

import mx.events.CloseEvent;
import mx.events.FlexEvent;
import mx.events.SliderEvent;
import mx.managers.PopUpManager;

import yakolab.s4m.model.FujiData;
import yakolab.s4m.view.BookPanel;
import yakolab.s4m.view.FujiGridSelector;

private var app:S4M;
private var bookPanel:BookPanel;
private var fujiData:FujiData;
private var gridViewer:Sprite;

private var pastRow:int;
private var pastColumn:int;

private var pastValuesV:Array;
private var pastValuesH:Array;

protected function closeHandler(event:CloseEvent):void
{
	PopUpManager.removePopUp(this);
}

private function onCreationComplete(event:FlexEvent):void
{
	app = S4M(this.parentApplication);
	bookPanel = app.currentBookPanel;
	fujiData = bookPanel.book.fujiData;
	gridViewer = new Sprite();
	gridUIComponent.addChild(gridViewer);
	
	initValues();
	refresh();
}

private function initValues():void {
	with(fujiData){
		rowNW.value = layoutW;
		columnNH.value = layoutH;
		pastRow = layoutW;
		pastColumn = layoutH;
		centerNX.value = layoutCenterX+1;
		centerNY.value = layoutCenterY+1;
		
		hslider.thumbCount = layoutW-1;
		vslider.thumbCount = layoutH-1;
		
		for(var i:int = layoutW-1; i>=1 ; i--){
			hslider.setThumbValueAt(i-1,  layoutXPercents[i]*100);
		}
			
		for(var j:int = layoutH-1; j>=1 ; j--){
			vslider.setThumbValueAt(j-1,  layoutYPercents[j]*100);
		}
	}
	
	centerNX.maximum = hslider.thumbCount+1;
	centerNY.maximum = vslider.thumbCount+1;
}

private function refresh():void {
	var w:int = rowNW.value;
	var h:int = columnNH.value;
	var centerX:int = centerNX.value-1;
	var centerY:int = centerNY.value-1;
	var valuesV:Array = vslider.values;
	var valuesH:Array = hslider.values;
	var g:Graphics = gridViewer.graphics;
	
	var width:Number = gridContainer.width;
	var height:Number = gridContainer.height;
	
	g.clear();
	g.lineStyle(1,0x0000FF);
	
	for(var i:int=0; i<w-1 ; i++){
		g.moveTo(valuesH[i]/100.0*width,0);
		g.lineTo(valuesH[i]/100.0*width,height);
	}
	
	for(var j:int=0; j<h-1 ; j++){
		g.moveTo(0,(1-valuesV[j]/100)*height);
		g.lineTo(width,(1-valuesV[j]/100)*height);
	}
	
	pastValuesV = valuesV.concat();
	pastValuesH = valuesH.concat();
	
	var valuesV2:Array = valuesV.concat();
	var valuesH2:Array = valuesH.concat();
	
	valuesV2.unshift(0);
	valuesV2.push(100);
	valuesH2.unshift(0);
	valuesH2.push(100);
	
	var x1:Number = (valuesH2[centerX])/100*width;
	var y1:Number = (1-valuesV2[h-centerY]/100)*height;
	var x2:Number = (valuesH2[centerX+1])/100*width;
	var y2:Number = (1-valuesV2[h-(centerY+1)]/100)*height;
	
//	g.beginFill(0xFF0000,0.4);
	g.lineStyle(3,0x0000FF);
	g.drawRect( x1, y1, x2-x1, y2-y1 );
//	g.endFill();
}

private function onOKClick(event:MouseEvent):void {
	fujiData.layoutW = rowNW.value;
	fujiData.layoutH = columnNH.value;
	fujiData.layoutCenterX = centerNX.value-1;
	fujiData.layoutCenterY = centerNY.value-1;
	fujiData.layoutWPercents = [];
	fujiData.layoutHPercents = [];
	
	var valuesV:Array = vslider.values.concat();
	var valuesH:Array = hslider.values.concat();
	
	valuesV.unshift(0);
	valuesH.unshift(0);
	valuesV.push(100);
	valuesH.push(100);
	
	for(var i:int = 0; i<valuesH.length-1 ; i++){
		fujiData.layoutWPercents.push((valuesH[i+1]-valuesH[i])/100.0);
	}
	
	for(var j:int = 0; j<valuesV.length-1 ; j++){
		fujiData.layoutHPercents.push((valuesV[j+1]-valuesV[j])/100.0);
	}
	
	fujiData.layoutHPercents.reverse();
	
	trace(fujiData.layoutWPercents);
	trace(fujiData.layoutHPercents);
	
	fujiData.calcLayoutPositions();
	bookPanel.redrawGridAll();
	
	PopUpManager.removePopUp(this);
}

private function onCancelClick(event:MouseEvent):void {
	PopUpManager.removePopUp(this);
}

private function onRowNumberChange(event:Event):void {
	if(pastValuesH == null) return;
	
	hslider.thumbCount = rowNW.value-1;
	
	// Reset
	for(var i:int = hslider.thumbCount-1; i>=0 ; i--){
		hslider.setThumbValueAt(i, 0);	
	}
	
	for(var i:int = hslider.thumbCount-1; i>=0 ; i--){
		if(pastValuesH.length-1<i){
			hslider.setThumbValueAt(i,100);
		}else{
			hslider.setThumbValueAt(i, pastValuesH[i]);	
		}
	}
	
	pastRow = rowNW.value;
	
	centerNX.maximum = hslider.thumbCount+1;
	
	refresh();
}

private function onColumnNumberChange(event:Event):void {
	if(pastValuesV == null) return;
	
	vslider.thumbCount = columnNH.value-1;
	
	// Reset
	for(var i:int = vslider.thumbCount-1; i>=0 ; i--){
		vslider.setThumbValueAt(i, 0);	
	}
	
	for(var i:int = vslider.thumbCount-1; i>=0 ; i--){
		if(pastValuesV.length-1<i){
			vslider.setThumbValueAt(i,100);
		}else{
			vslider.setThumbValueAt(i, pastValuesV[i]);
		}
	}
	
	pastColumn = columnNH.value;
	
	centerNY.maximum = vslider.thumbCount+1;
	
	refresh();
}

private function onCenterPositionChange(event:Event):void{
	refresh();
}

private function onSliderChange(event:SliderEvent):void {
	refresh();
}