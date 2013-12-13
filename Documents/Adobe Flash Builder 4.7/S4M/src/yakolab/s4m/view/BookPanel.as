package yakolab.s4m.view
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.net.URLVariables;
	import flash.utils.Dictionary;
	
	import mx.controls.Alert;
	import mx.core.BitmapAsset;
	import mx.core.UIComponent;
	import mx.managers.CursorManager;
	import mx.managers.PopUpManager;
	import mx.utils.StringUtil;
	
	import spark.components.BorderContainer;
	import spark.components.Group;
	import spark.components.NavigatorContent;
	import spark.filters.DropShadowFilter;
	import spark.filters.GlowFilter;
	import spark.layouts.HorizontalLayout;
	
	import yakolab.s4m.commands.Command;
	import yakolab.s4m.model.Book;
	import yakolab.s4m.model.Fuji;
	import yakolab.s4m.model.FujiData;
	import yakolab.s4m.util.Base64Util;
	import yakolab.s4m.util.CropUtil;
	import yakolab.s4m.util.DashBorder;
	import yakolab.s4m.util.SQLUtil;
	
	public class BookPanel extends Group
	{
		public var book:Book;
		
		private var _width:int;
		private var _height:int;
		private var tab:NavigatorContent;
		private var app:S4M;
		
		public var leftContainer:BorderContainer;
		public var rightContainer:BorderContainer;
//		public var image:Image;
		public var imageContainerUIComponent:UIComponent;
		public var imageContainer:Sprite;
		public var gridContainerUIComponent:UIComponent;
		public var gridContainer:Sprite;
		
		public var selectLayer:UIComponent;
		public var selectedRegion:BorderContainer;
		
		private var lcDragStartX:Number;
		private var lcDragStartY:Number;
		private var lcDragStartMX:Number;
		private var lcDragStartMY:Number;
		
		private var selectionX1:Number;
		private var selectionY1:Number;
		private var selectionX2:Number;
		private var selectionY2:Number;
		
		private var slIsDragging:Boolean = false;
		private var rcIsDragging:Boolean = false;
		private var lcIsDragging:Boolean = false;
		
		private var rcDragStartX:Number;
		private var rcDragStartY:Number;
		private var rcDragStartMX:Number;
		private var rcDragStartMY:Number;
		
		public var selectedCellX:int = -1;
		public var selectedCellY:int = -1;
		
		public var selectedFujiPositionX:int = 0;
		public var selectedFujiPositionY:int = 0; 
		
		private var	baseGridOffsetX:int = 50;
		private var	baseGridOffsetY:int = 30;
		private var baseGridSize:int = 50;
		
		private var undoStack:Array = [];
		private var redoStack:Array = [];
		
		// Current Image Data
		public var scoreImageData:BitmapData;
		
		// Current Selected(cropped) Image Data
		public var selectedImageData:BitmapData;
		
		// Cursors
		
		[Embed(source="../../../assets/icons/Move.png")]
		private static var moveCursor :Class;
		
		[Embed(source="../../../assets/icons/Zoom.png")]
		private static var zoomCursor :Class;
		
		[Embed(source="../../../assets/icons/Zoomout.png")]
		private static var zoomoutCursor :Class
		
		[Embed(source="../../../assets/icons/cross-cursor.png")]
		private static var crossCursor :Class;
		
		private static var zoomFactors:Array = [0.125,0.25,0.5,0.7,1,1.5,2,4,8];
		private var lcZoomLevel:int = 4;
		private var rcZoomLevel:int = 4;
		
		public function BookPanel(_app:S4M, _book:Book, _tab:NavigatorContent)
		{
			super();
			
			book = _book;
			app = _app;
			tab = _tab;
			_width = tab.width;
			_height = tab.height;
			
			var layout:HorizontalLayout = new HorizontalLayout();
			layout.gap = 0;
			layout.paddingLeft = 0;
			layout.paddingRight = 0;
			layout.paddingTop = 0;
			layout.paddingBottom = 0;
			
			this.layout = layout;
			this.percentWidth = 100;
			this.percentHeight = 100;
			
			leftContainer = createBorderContainer(0);
			rightContainer = createBorderContainer(1);
			
			// add EventListeners
			
			leftContainer.addEventListener(MouseEvent.MOUSE_DOWN, leftContainer_onMouseDown);
			leftContainer.addEventListener(MouseEvent.MOUSE_UP, leftContainer_onMouseUp);
			leftContainer.addEventListener(MouseEvent.MOUSE_MOVE, leftContainer_onMouseMove);
			leftContainer.addEventListener(MouseEvent.MOUSE_OUT, leftContainer_onMouseOut);
			leftContainer.addEventListener(MouseEvent.CLICK, leftContainer_onMouseClick);
			
			rightContainer.addEventListener(MouseEvent.MOUSE_DOWN, rightContainer_onMouseDown);
			rightContainer.addEventListener(MouseEvent.MOUSE_UP, rightContainer_onMouseUp);
			rightContainer.addEventListener(MouseEvent.MOUSE_MOVE, rightContainer_onMouseMove);
			rightContainer.addEventListener(MouseEvent.MOUSE_OUT, rightContainer_onMouseOut);
			rightContainer.addEventListener(MouseEvent.CLICK, rightContainer_onMouseClick);
			
			// Common Event Listener
			leftContainer.addEventListener(MouseEvent.MOUSE_OVER, leftContainer_onMouseOver);
			rightContainer.addEventListener(MouseEvent.MOUSE_OVER, rightContainer_onMouseOver);
			
			if(book.image){
				var img:BitmapAsset = new BitmapAsset(book.image);
				book.imageWidth = img.width;
				book.imageHeight = img.height;
			}
			
			if(img){
				scoreImageData = img.bitmapData;
			}
			
			// init ImageContainer
			imageContainer = new Sprite();
			imageContainer.x = 30;
			imageContainer.y = 10;
			if(img) imageContainer.addChild(img);
			imageContainerUIComponent = new UIComponent();
			imageContainerUIComponent.percentWidth = 100;
			imageContainerUIComponent.percentHeight = 100;
			imageContainerUIComponent.addChild(imageContainer);
			
			// init GridContainer
			gridContainer = new Sprite();
			gridContainer.addEventListener(MouseEvent.CLICK, gridContainer_onMouseClick);
			gridContainerUIComponent = new UIComponent();
			gridContainerUIComponent.percentWidth = 100;
			gridContainerUIComponent.percentHeight = 100;
			gridContainerUIComponent.addChild(gridContainer);
			
			// create masks
			imageCropRefresh();
			
			var shadow:DropShadowFilter = new DropShadowFilter(10,45,0,1,10,10);
			imageContainerUIComponent.filters = [shadow];
			
			var glow2:GlowFilter = new GlowFilter(0,1,20,20);
			gridContainerUIComponent.filters = [glow2];
			
			// attatch to root component
			this.addElement(leftContainer);
			this.addElement(rightContainer);
			
			leftContainer.addElement(imageContainerUIComponent);
			rightContainer.addElement(gridContainerUIComponent);
			
			redrawGridAll();
			
			// create Selected Region
			selectLayer = new UIComponent();
			selectLayer.percentWidth = 100;
			selectLayer.percentHeight = 100;
			leftContainer.addElement(selectLayer);
			
			selectedRegion = new BorderContainer();
			selectedRegion.styleName = "selectedRegion";
			var border:DashBorder = new DashBorder();
			border.styleName = "selectedRegionBorder";
			border.percentWidth = 100;
			border.percentHeight = 100;
			selectedRegion.addElement(border);
			selectedRegion.width = 0;
			selectedRegion.height = 0;
			selectedRegion.visible = false;
			selectLayer.addChild(selectedRegion);
			
			// apply effect to selectedRegion
			var glow3:GlowFilter = new GlowFilter(0,0.5,5,5);
			selectLayer.filters = [glow3];
			
			// initialize zoomLevel
			zoomToL(lcZoomLevel);
			zoomToR(rcZoomLevel);
		}
		
		private function writeSimpleArray(name:String, arr:Array):String {
			var target:String = "";
			target += "<"+name+">";
			for each(var val:* in arr){
				target += "<value num='"+val+"'></value>";
			}
			target += "</"+name+">";
			
			return target;
		}
		
		private function writeRegionArray(arr:Dictionary):String {
			var target:String = "";
			target += "<regions>";
			for each(var reg:FujiRegion in arr){
				target += StringUtil.substitute(
							"<region fuji_uid='{0}' base_x='{1}' base_y='{2}' base_w='{3}' base_h='{4}' ></region>",
							[reg.fuji_uid, reg.baseX, reg.baseY, reg.baseWidth, reg.baseHeight]);
			}
			target += "</regions>";
				
			return target;
		}
		
		private function writeFujiDataArray(arr:Dictionary):String {
			var target:String = "";
			target += "<fujidata>";
			for each(var arr2:Dictionary in arr){
				for each(var fuji:Fuji in arr2){
					target += StringUtil.substitute(
						"<fuji uid='{0}' x='{1}' y='{2}' cell_x='{3}' cell_y='{4}' name='{5}' kana='{6}' interpret='{7}' ></fuji>",
						[fuji.uid, fuji.x, fuji.y, fuji.cell_x, fuji.cell_y, fuji.name, fuji.kana, fuji.interpret]);
				}
			}
			target += "</fujidata>"
				
			return target;
		}
		
		private function writeMetaData(book:Book):String {
			var target:String = "";
			target += "<metadata>";
			
			with(book){
				target += StringUtil.substitute(
					"<meta songname='{0}' songname_kana='{1}' subtitle1='{2}' subtitle1_kana='{3}' subtitle2='{4}' subtitle2_kana='{5}'"
					+ "source='{6}' publish_place='{7}' publisher='{8}' holder='{9}' publish_year='{10}' premiere_year='{11}' book_type='{12}'"
					+ "pages_and_lines='{13}' remarks='{14}' freecolumn='{15}'></meta>",
					[songname, songname_kana, subtitle1, subtitle1_kana, subtitle2, subtitle2_kana, source, publish_place,
						publisher, holder, publish_year, premiere_year, book_type, pages_and_lines, remarks, freecolumn]);
			}
			
			target += "</metadata>"
				
			return target;
		}
		
		public function save(comment:String):void {
			var fujiData:FujiData = book.fujiData;
			
			var xmllist:String = "<?xml version='1.0' encoding='utf-8' ?>";
			
			xmllist += "<score-version>";
			xmllist += "<layout>";
				xmllist += StringUtil.substitute(
					"<size layout_cell_h='{0}' layout_cell_w='{1}' layout_w='{2}' layout_h='{3}' ></size>",
					[fujiData.layoutCellH, fujiData.layoutCellW, fujiData.layoutW, fujiData.layoutH]);
				
				xmllist += StringUtil.substitute(
					"<center x='{0}' y='{1}' ></center>",
					[fujiData.layoutCenterX, fujiData.layoutCenterY]);
				
				xmllist += writeSimpleArray("percent_x", fujiData.layoutXPercents);
				xmllist += writeSimpleArray("percent_y", fujiData.layoutYPercents);
				xmllist += writeSimpleArray("percent_w", fujiData.layoutWPercents);
				xmllist += writeSimpleArray("percent_h", fujiData.layoutHPercents);
			xmllist += "</layout>";
				
			xmllist += writeRegionArray(book.fujiData.fujiRegionData);
			xmllist += writeFujiDataArray(fujiData.readAll());
			
			// WORKAROUND 読み込み時の煩雑さ回避
			xmllist += writeMetaData(book);
			
			xmllist += "</score-version>";
			
			var savedXmlString:String = Base64Util.encode(xmllist);
			
			var data:URLVariables = new URLVariables();
			data.score_uid = book.score_id;
			data.score_version = book.score_version + 1; // TODO Fix
			data.category_version_id = book.fuji_class_category_version_id;
			data.image_id = book.image_id;
			data.comment = comment;
			data.xml = savedXmlString;
			
			data.songname = book.songname;
			data.songname_kana = book.songname_kana;
			data.subtitle1 = book.subtitle1;
			data.subtitle1_kana = book.subtitle1_kana;
			data.subtitle2 = book.subtitle2;
			data.subtitle2_kana = book.subtitle2_kana;
			data.source = book.source;
			data.publish_place = book.publish_place;
			data.publisher = book.publisher;
			data.holder = book.holder;
			data.publish_year = book.publish_year;
			data.premiere_year = book.premiere_year;
			data.book_type = book.book_type;
			data.pages_and_lines = book.pages_and_lines;
			data.remarks = book.remarks;
			data.freecolumn = book.freecolumn;
			
			function afterSaved(event:Event):void {
				trace(event.target.data);
				var rev:int = book.score_version + 1; // TODO Fix
				//var rev:int = int(event.target.data);
				
				book.score_version += 1;
				Alert.okLabel = "OK";
				Alert.show("r" + rev.toString() + "として保存しました。","保存完了", Alert.OK);
			}
			
			SQLUtil.query("saveData.php", data, afterSaved);
		}
		
		////////////////////////////
		// Undo & Redo
		////////////////////////////
		
		public function undo():void {
			if(undoStack.length == 0) return;
			var command:Command = undoStack.pop();
			command.undo();
			redoStack.push(command);
		}
		
		public function redo():void {
			if(redoStack.length == 0) return;
			var command:Command = redoStack.pop();
			command.redo();
			undoStack.push(command);
		}
		
		public function execCommand(command:Command):void {
			command.execDo();
			
			if(undoStack.length <= app.undoLimit){
				undoStack.push(command);
				redoStack = [];
			}
		}
		
		////////////////////////////
		// LeftContainer Listeners
		////////////////////////////
		
		private function leftContainer_onMouseDown(event:MouseEvent):void {
			if(app.mode == app.MOVE){
				lcDragStartX = imageContainer.x;
				lcDragStartY = imageContainer.y;
				lcDragStartMX = event.stageX;
				lcDragStartMY = event.stageY;
				
				for each(var reg:FujiRegion in book.fujiData.fujiRegionData){
					reg.dragStartX = reg.x;
					reg.dragStartY = reg.y;
				}
				
				lcIsDragging = true;
			}else if(app.mode == app.SELECT_REGION){
				if(selectedCellX < 0){
					PopUpManager.createPopUp(this, FujiInputErrorMessage, true);
					return;
				}
				
				leftContainer.styleName = "container1Selected";
				
				selectionX1 = event.stageX;
				selectionY1 = event.stageY;
				
				slIsDragging = true;
				
				var zoomFactor:Number = zoomFactorL();
				
				selectedRegion.visible = true;
				selectedRegion.width = 0;
				selectedRegion.height = 0;
				selectedRegion.x = (event.localX*zoomFactor + imageContainer.x);
				selectedRegion.y = (event.localY*zoomFactor + imageContainer.y);
			}
		}
		
		private function leftContainer_onMouseMove(event:MouseEvent):void {
			if(app.mode == app.MOVE && lcIsDragging){
				var dx:Number = (event.stageX - lcDragStartMX);
				var dy:Number = (event.stageY - lcDragStartMY);
				imageContainer.x = lcDragStartX + dx;
				imageContainer.y = lcDragStartY + dy;
				
				for each(var reg:FujiRegion in book.fujiData.fujiRegionData){
					reg.x = reg.dragStartX + dx;
					reg.y = reg.dragStartY + dy;
				}
			}else if(app.mode == app.SELECT_REGION && slIsDragging){
				selectionX2 = event.stageX;
				selectionY2 = event.stageY;
				
				selectedRegion.width = selectionX2 - selectionX1;
				selectedRegion.height = selectionY2 - selectionY1;
			}
		}
		
		private function leftContainer_onMouseOut(event:MouseEvent):void {
			CursorManager.removeAllCursors();
		}
		
		private function leftContainer_onMouseUp(event:MouseEvent):void {
			if( app.mode == app.SELECT_REGION && slIsDragging ){
				refreshSelectedBitmapData();
				PopUpManager.createPopUp(this, FujiConfirmDialog, true);
			}
			
			leftContainer.styleName = "container1";
			selectedRegion.visible = false;
			lcIsDragging = false;
			slIsDragging = false;
			rcIsDragging = false;
		}
		
		private function leftContainer_onMouseClick(event:MouseEvent):void {
			if(app){
				if(app.mode == app.ZOOM) zoominL(imageContainer.x + event.localX, imageContainer.y + event.localY);
				if(app.mode == app.ZOOMOUT) zoomoutL(imageContainer.x + event.localX, imageContainer.y + event.localY);
			}
		}
		
		////////////////////////////
		// Zoom Functions
		////////////////////////////
		
		public function zoomFactorL():Number{
			return zoomFactors[lcZoomLevel];
		}
		
		public function zoomFactorR():Number{
			return zoomFactors[rcZoomLevel];
		}
		
		private function zoomUpperConditionL():Boolean{
			return lcZoomLevel != zoomFactors.length-1;
		}
		private function zoomBottomConditionL():Boolean{
			return lcZoomLevel != 0;
		}
		private function zoomUpInclL():void {
			lcZoomLevel += 1;
		}
		private function zoomDownInclL():void {
			lcZoomLevel -= 1;
		}
		private function zoomUpperConditionR():Boolean{
			return rcZoomLevel != zoomFactors.length-1;
		}
		private function zoomBottomConditionR():Boolean{
			return rcZoomLevel != 0;
		}
		private function zoomUpInclR():void {
			rcZoomLevel += 1;
		}
		private function zoomDownInclR():void {
			rcZoomLevel -= 1;
		}
		
		private function zoomBase(x:Number, y:Number, isLeft:Boolean, cond:Function, incl:Function, scaleFunc:Function):void{
			if(cond()){
				var pzoomFactor:Number = (isLeft)? zoomFactorL() : zoomFactorR();
				
				incl();
				
				var zoomFactor:Number =  (isLeft)? zoomFactorL() : zoomFactorR();
				
				scaleFunc(zoomFactor);
				
				if(isLeft){
					
					for each(var reg:FujiRegion in book.fujiData.fujiRegionData){
						reg.zoomFactor = zoomFactor;
					}
					var r:Number = (zoomFactor/pzoomFactor);
					var dx:Number = (1-r)*x;
					var dy:Number = (1-r)*y;
					
					imageContainer.x += dx;
					imageContainer.y += dy;
					
					for each(var reg:FujiRegion in book.fujiData.fujiRegionData){
						reg.x += dx;
						reg.y += dy;
					}
				}else{
					gridContainer.x += dx;
					gridContainer.y += dy;
				}
			}
		}
		
		private function zoominL(x:Number,y:Number):void{
			zoomBase(x,y,true,zoomUpperConditionL,zoomUpInclL,imageScale);
		}
		private function zoominR(x:Number,y:Number):void{
			zoomBase(x,y,false,zoomUpperConditionR,zoomUpInclR,gridScale);
		}
		private function zoomoutL(x:Number,y:Number):void{
			zoomBase(x,y,true,zoomBottomConditionL,zoomDownInclL,imageScale);
		}
		private function zoomoutR(x:Number,y:Number):void{
			zoomBase(x,y,false,zoomBottomConditionR,zoomDownInclR,gridScale);
		}
		private function zoomToL(zoomLevel:int):void{
			zoomBase(0,0,true,zoomBottomConditionL,function(){ lcZoomLevel = zoomLevel },imageScale);
		}
		private function zoomToR(zoomLevel:int):void{
			zoomBase(0,0,false,zoomBottomConditionL,function(){ rcZoomLevel = zoomLevel },gridScale);
		}
		
		////////////////////////////
		// MouseCursor Change
		////////////////////////////
		
		private function leftContainer_onMouseOver(event:MouseEvent):void {
			if(app){
				var cursor:Class;
				
				if(app.mode == app.MOVE){
					cursor = moveCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.ZOOM){
					cursor = zoomCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.ZOOMOUT){
					cursor = zoomoutCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.SELECT_REGION){
					cursor = crossCursor;
					CursorManager.setCursor(cursor, 3, -12,-12);
				}else{
					CursorManager.removeAllCursors();
					return;
				}
			}
		}
		
		private function rightContainer_onMouseOver(event:MouseEvent):void {
			if(app){
				var cursor:Class;
				
				if(app.mode == app.MOVE){
					cursor = moveCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.ZOOM){
					cursor = zoomCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.ZOOMOUT){
					cursor = zoomoutCursor;
					CursorManager.setCursor(cursor, 3, -16,-16);
				}else if(app.mode == app.SELECT_REGION){
//					cursor = crossCursor;
//					CursorManager.setCursor(cursor, 3, -12,-12);
					CursorManager.removeAllCursors();
				}else{
					CursorManager.removeAllCursors();
					return;
				}
			}
		}
		
		////////////////////////////
		// RightContainer Listeners
		////////////////////////////
		
		private function rightContainer_onMouseDown(event:MouseEvent):void {
			if(app.mode == app.MOVE){
				rcDragStartX = gridContainer.x;
				rcDragStartY = gridContainer.y;
				rcDragStartMX = event.stageX;
				rcDragStartMY = event.stageY;
				
				rcIsDragging = true;
			}
		}
		
		private function rightContainer_onMouseMove(event:MouseEvent):void {
			if(app.mode == app.MOVE && rcIsDragging){
				gridContainer.x = rcDragStartX + (event.stageX - rcDragStartMX);
				gridContainer.y = rcDragStartY + (event.stageY - rcDragStartMY);
			}
		}
		
		private function rightContainer_onMouseUp(event:MouseEvent):void {	
			if( app.mode == app.SELECT_REGION && slIsDragging ){
				refreshSelectedBitmapData();
				PopUpManager.createPopUp(this, FujiConfirmDialog, true);
			}
			
			leftContainer.styleName = "container1";
			selectedRegion.visible = false;
			lcIsDragging = false;
			slIsDragging = false;
			rcIsDragging = false;
		}
		
		private function rightContainer_onMouseClick(event:MouseEvent):void {
			if(app){
				if(app.mode == app.ZOOM){
					zoominR(gridContainer.x + baseGridOffsetX + event.localX,
						gridContainer.y + baseGridOffsetY + event.localY);
				}else if(app.mode == app.ZOOMOUT){
					zoomoutR(gridContainer.x + baseGridOffsetX + event.localX,
						gridContainer.y + baseGridOffsetY + event.localY);
				}
			}
		}
		
		private function rightContainer_onMouseOut(event:MouseEvent):void {
//			rcIsDragging = false;
			CursorManager.removeAllCursors();
		}
		
		private function gridContainer_onMouseClick(event:MouseEvent):void {
//			var sx:Number = (event.localX/gridContainer.scaleX) - baseGridOffsetX;//- gridContainer.x;
//			var sy:Number = (event.localY/gridContainer.scaleY) - baseGridOffsetY;//- gridContainer.y;
			
			var sx:Number = event.localX - baseGridOffsetX;//- gridContainer.x;
			var sy:Number = event.localY - baseGridOffsetY;//- gridContainer.y;
			
			var cnx:int = int( sx / baseGridSize );
			var cny:int = int( sy / baseGridSize ); 
						
			if(app.mode == app.SELECT_REGION){	
				selectedCellX = cnx;
				selectedCellY = cny;
				redrawGridAll();
			}else if(app.mode == app.SELECT){
				selectedCellX = cnx;
				selectedCellY = cny;
				redrawGridAll();
			}
		}
		
		////////////////////////////
		// Image Controll Methods
		////////////////////////////
		
		private function refreshSelectedBitmapData():void{
			var zoom:Number = zoomFactorL();
			var img:BitmapData = scoreImageData;
			var imc:Sprite = imageContainer;
			var reg:BorderContainer = selectedRegion;
			var bx:Number = baseGridOffsetX;
			var by:Number = baseGridOffsetY;
			
			var x:Number = (reg.x - imc.x)/zoom;
			var y:Number = (reg.y - imc.y)/zoom;
			var w:Number = reg.width/zoom;
			var h:Number = reg.height/zoom;
			
//			selectedRegion.x = (event.localX*zoomFactor + imageContainer.x);
//			selectedRegion.y = (event.localY*zoomFactor + imageContainer.y);
			
			selectedImageData = CropUtil.getCroppedBitmapData(x,y,w,h,scoreImageData);
		}
		
		
		
		public function createFujiRegion(fuji:Fuji):FujiRegion {
			var reg:FujiRegion = new FujiRegion(this);
			var zoomFactor:Number = zoomFactorL();
			reg.fuji_uid = fuji.uid;
			reg.styleName = "fujiRegion";
			reg.baseX = (selectedRegion.x - imageContainer.x)/zoomFactor;
			reg.baseY = (selectedRegion.y - imageContainer.y)/zoomFactor;
			reg.baseWidth = selectedRegion.width/zoomFactor;
			reg.baseHeight = selectedRegion.height/zoomFactor;
			reg.zoomFactor = zoomFactor;
			
			book.fujiData.fujiRegionData[fuji.uid] = reg;
			
			selectLayer.addChild(reg);
			
			return reg;
		}
		
		public function addFujiRegion(reg:FujiRegion):void {
			reg.zoomFactor = zoomFactorL();
			
			book.fujiData.fujiRegionData[reg.fuji_uid] = reg;
			
			selectLayer.addChild(reg);
		}
		
		public function removeFujiRegion(fuji:Fuji):void {
			var reg:FujiRegion = book.fujiData.fujiRegionData[fuji.uid];
			selectLayer.removeChild(reg);
			
			delete book.fujiData.fujiRegionData[fuji.uid];
		}
		
		public function imageCropRefresh():void {
			var g:Graphics;
			if(app.panelViewType == app.SCORE_AND_GRID || app.panelViewType == app.SCORE_ONLY){
				var w1:Number = leftContainer.percentWidth==100? tab.width : tab.width/2;
				var mask:Shape = new Shape();
					
				g = mask.graphics;
				g.beginFill(0xFFFFFF, 1);
				g.drawRect(tab.x, tab.y+50, w1, tab.height+300);
				g.endFill();
				
				imageContainerUIComponent.mask = mask;
//			}else{
//				var mask:Shape = new Shape();
//				
//				g = mask.graphics;
//				g.beginFill(0xFFFFFF, 1);
//				g.drawRect(0,0,2000,2000);
//				g.endFill();
//				
//				imageContainerUIComponent.mask = mask;
			}
			
			if(app.panelViewType == app.SCORE_AND_GRID || app.panelViewType == app.GRID_ONLY){
				var x1:Number = leftContainer.percentWidth==100? tab.x : tab.x + tab.width/2;
				var w2:Number = leftContainer.percentWidth==100? tab.width : tab.width/2;
				var mask2:Shape = new Shape();
				
				g = mask2.graphics;
				g.beginFill(0xFFFFFF, 1);
				g.drawRect(x1, tab.y+50, w2, tab.height+300);
				g.endFill();
				
				
				gridContainerUIComponent.mask = mask2;
			}
		}
		
		public function imageScale(factor:Number):void {
			imageContainer.scaleX = factor;
			imageContainer.scaleY = factor;
		}
		
		public function gridScale(factor:Number):void {
			gridContainer.scaleX = factor;
			gridContainer.scaleY = factor;
		}
		
		private function createBorderContainer(index:int):BorderContainer {
			var container:BorderContainer = new BorderContainer();
			container.percentWidth = 50;
			container.percentHeight = 100;
			container.styleName = "container" + (index+1);
			container.id = "container" + index;
			return container;
		}
		
		public function redrawGridAll():void {
			var g:Graphics = gridContainer.graphics;
			g.clear();
			for(var i:int = 0; i< book.fujiData.layoutCellW; i++){
				for(var j:int = 0; j< book.fujiData.layoutCellH; j++){
					redrawGrid(i,j,g);
				}
			}
		}
		public function redrawGrid(x:int, y:int, g:Graphics = null):void {
			
			if(g == null){
				g = gridContainer.graphics;
			}
			
			var posX:Number = baseGridOffsetX + baseGridSize*x;
			var posY:Number = baseGridOffsetY + baseGridSize*y;
			var size:Number = baseGridSize;
			
			g.beginFill(0xF7F3DE);
			
			if(app.isShowFujiGrid){
				g.lineStyle(1,0x000000);
			}
			g.drawRect(posX,posY,size,size);
			g.endFill();
			
			var fujiData:FujiData = book.fujiData;
			var fujis:Array = fujiData.read(x,y);
			
			for each(var fuji:Fuji in fujis){
				if(fuji){
					var img:BitmapData = fuji.captureData;
					var wp:Number = fujiData.layoutWPercents[fuji.x];
					var hp:Number = fujiData.layoutHPercents[fuji.y];
					var xp:Number = fujiData.layoutXPercents[fuji.x];
					var yp:Number = fujiData.layoutYPercents[fuji.y];
					
					g.lineStyle(0,0,0); //FIXME How to line off ?
					drawImageStretch(g, img, posX + xp*size, posY + yp*size, wp*size, hp*size);
				}
			}
			
			if(app.isShowFujiwakuGrid){
				g.lineStyle(0.5,0x0000FF,0.2);
				with(fujiData){
					for(var i:int = 0; i< fujiData.layoutW; i++){
						g.moveTo(posX+layoutXPercents[i]*size, posY);
						g.lineTo(posX+layoutXPercents[i]*size, posY + size);
					}
					for(var j:int = 0; j< fujiData.layoutH; j++){
						g.moveTo(posX, posY+layoutYPercents[j]*size);
						g.lineTo(posX + size, posY+layoutYPercents[j]*size);
					}
				}
			}
			
			if(selectedCellX == x && selectedCellY == y){
				g.beginFill(0xFFBDB0,0.4);
				g.lineStyle(0,0,0);
				g.drawRect(posX,posY,size,size);
				g.endFill();
			}
			
		}
		
		public static function drawImage(g:Graphics, image:BitmapData, x:Number, y:Number, w:Number, h:Number):void {
			var mtx:Matrix = new Matrix();
			mtx.translate(x, y);
			g.beginBitmapFill(image, mtx, false, false);
			g.drawRect(x,y,w,h);
			g.endFill();
		}
		
		public static function drawImageStretch(g:Graphics, image:BitmapData, x:Number, y:Number, w:Number, h:Number):void {
			var mtx:Matrix = new Matrix();
			mtx.scale(w/image.width, h/image.height);
			mtx.translate(x, y);
			g.beginBitmapFill(image, mtx, false, false);
			g.drawRect(x,y,w,h);
			g.endFill();
		}
		
		
	}
}