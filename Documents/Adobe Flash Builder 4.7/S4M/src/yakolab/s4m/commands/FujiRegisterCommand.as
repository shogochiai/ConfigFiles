package yakolab.s4m.commands
{
	import flash.display.BitmapData;
	import flash.utils.Dictionary;
	
	import yakolab.s4m.model.Fuji;
	import yakolab.s4m.model.FujiData;
	import yakolab.s4m.view.BookPanel;
	import yakolab.s4m.view.FujiRegion;

	public class FujiRegisterCommand extends Command
	{	
		private var bookPanel:BookPanel;
		
		private var fujiData:FujiData;
		private var fujiRegionData:Dictionary;
		private var cellX:int;
		private var cellY:int;
		private var fujiX:int;
		private var fujiY:int;
		private var interpret:String;
		private var name:String;
		private var kana:String;
		private var img:BitmapData;
		
		private var redoFuji:Fuji;
		private var redoRegion:FujiRegion;
		private var pastFuji:Fuji;
		private var pastRegion:FujiRegion;
		
		public override function undo():void{
			var fuji:Fuji = fujiData.readFuji(cellX, cellY, fujiX, fujiY);
			
			bookPanel.removeFujiRegion(fuji);
			
			if(pastFuji){
				fujiData.write(fuji);
				bookPanel.addFujiRegion(pastRegion);
			}else{
				fujiData.remove(cellX, cellY, fujiX, fujiY);
			}
			
			bookPanel.redrawGrid(cellX,cellY);
		}
		public override function redo():void{
			pastFuji = fujiData.readFuji(cellX,cellY,fujiX,fujiY);
			
			if(pastFuji){
				var reg:FujiRegion = fujiRegionData[pastFuji.uid];
				pastRegion = reg;
				
				bookPanel.removeFujiRegion(pastFuji);
			}
			
			var fuji:Fuji;
			if(redoFuji){
				fuji = redoFuji;
				bookPanel.addFujiRegion(redoRegion);
			}else{
				fuji = new Fuji(fujiData);
				fuji.createUID();
				fuji.captureData = img;
				fuji.x = fujiX;
				fuji.y = fujiY;
				fuji.cell_x = cellX;
				fuji.cell_y = cellY;
				fuji.name = name;
				fuji.kana = kana;
				fuji.interpret = interpret;
				
				redoFuji = fuji;
				redoRegion = bookPanel.createFujiRegion(fuji);
			}
			
			fujiData.write(fuji);
			bookPanel.redrawGrid(cellX,cellY);
		}
		
		public function FujiRegisterCommand(
				cellX:int, cellY:int, fujiX:int, fujiY:int, name:String, kana:String, interpret:String, img:BitmapData,
				bookPanel:BookPanel, fujiData:FujiData, fujiRegionData:Dictionary)
		{
			this.cellX = cellX;
			this.cellY = cellY;
			this.fujiX = fujiX;
			this.fujiY = fujiY;
			this.name = name;
			this.kana = kana;
			this.interpret = interpret;
			this.img = img;
			this.bookPanel = bookPanel;
			this.fujiData = fujiData;
			this.fujiRegionData = fujiRegionData;
		}
	}
}