package yakolab.s4m.commands
{
	import flash.display.BitmapData;
	import flash.utils.Dictionary;
	
	import yakolab.s4m.model.Fuji;
	import yakolab.s4m.model.FujiData;
	import yakolab.s4m.view.BookPanel;
	import yakolab.s4m.view.FujiRegion;

	public class CellChangeCommand extends Command
	{	
		private var bookPanel:BookPanel;
		
		private var fujiData:FujiData;
		private var cellW:int;
		private var cellH:int;
		private var pastCellW:int;
		private var pastCellH:int;
		
		public override function undo():void{
			fujiData.layoutCellW = pastCellW;
			fujiData.layoutCellH = pastCellH;
			bookPanel.redrawGridAll();
		}
		public override function redo():void{
			fujiData.layoutCellW = cellW;
			fujiData.layoutCellH = cellH;
			bookPanel.redrawGridAll();
		}
		
		public function CellChangeCommand(
				cellW:int, cellH:int, pastCellW:int, pastCellH:int, bookPanel:BookPanel, fujiData:FujiData)
		{
			this.cellW = cellW;
			this.cellH = cellH;
			this.pastCellW = pastCellW;
			this.pastCellH = pastCellH;
			this.bookPanel = bookPanel;
			this.fujiData = fujiData;
		}
	}
}