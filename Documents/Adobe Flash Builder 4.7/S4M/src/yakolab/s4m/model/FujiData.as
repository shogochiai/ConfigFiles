package yakolab.s4m.model
{
	import flash.utils.Dictionary;

	public class FujiData
	{
		public static const XYLIMIT:int = 1000;
		public var layoutW:int = 3;
		public var layoutH:int = 3;
		
		public var layoutCellW:int = 8;
		public var layoutCellH:int = 12;
		
		public var layoutCenterX:int = 1;
		public var layoutCenterY:int = 1;
		
		public var layoutWPercents:Array = [0.2, 0.6, 0.2];
		public var layoutHPercents:Array = [0.2, 0.6, 0.2];
		
		public var layoutXPercents:Array = [];
		public var layoutYPercents:Array = [];
		
		
		public var fujiRegionData:Dictionary = new Dictionary();
		
		private var dataImpl:Dictionary = new Dictionary();
		
		public function FujiData()
		{
			calcLayoutPositions();
		}
		
		// data read and write methods
		
		public function write(fuji:Fuji):void {
			var cell_x:int = fuji.cell_x;
			var cell_y:int = fuji.cell_y;
			var fuji_x:int = fuji.x;
			var fuji_y:int = fuji.y;
			
			if(cell_x<0 || cell_y<0 || cell_x>=XYLIMIT || cell_y>=XYLIMIT){
				throw new Error("data index must < " + XYLIMIT);
			}
			
			var id:int = xy_to_id(cell_x, cell_y);
			var fid:int = xy_to_id(fuji_x, fuji_y);
			
			if(dataImpl[id]){
				dataImpl[id][fid] = fuji;
			}else{
				dataImpl[id] = new Dictionary();
				dataImpl[id][fid] = fuji;
			}
		}
		
		// return Array<Fuji>
		public function read(cell_x:int, cell_y:int):Array {
			if(cell_x<0 || cell_y<0 || cell_x>=XYLIMIT || cell_y>=XYLIMIT){
				throw new Error("data index must < " + XYLIMIT);
			}
			
			var id:int = xy_to_id(cell_x,cell_y);
			
			var dict:Dictionary = dataImpl[id] as Dictionary;
			
			if(dict){
				var arr:Array = [];
				for (var key:Object in dict)
				{
					arr.push(dict[key]);
				}
				
				return arr;
			}else{
				return null;
			}
		}
		
		public function readFuji(cell_x:int, cell_y:int, fuji_x:int, fuji_y:int):Fuji {
			if(cell_x<0 || cell_y<0 || cell_x>=XYLIMIT || cell_y>=XYLIMIT){
				throw new Error("data index must < " + XYLIMIT);
			}
			
			var id:int = xy_to_id(cell_x, cell_y);
			var fid:int = xy_to_id(fuji_x, fuji_y);
			
			if(dataImpl[id]){
				return dataImpl[id][fid] as Fuji;
			}else{
				return null;
			}
		}
		
		public function readAll():Dictionary {
			return dataImpl;
		}
		
		public function remove(cell_x:int, cell_y:int, fuji_x:int, fuji_y:int):void {
			var id:int = xy_to_id(cell_x, cell_y);
			var fid:int = xy_to_id(fuji_x, fuji_y);
			
			delete dataImpl[id][fid];
		}
		
		
		private function xy_to_id(x:int, y:int):int{
			if(x<0 || y<0 || x>=100 || y>=100){
				throw new Error("data index must < " + XYLIMIT);
			}
			
			return x+y*100;
		}
		
		// Position Calculate Method
		
		public function calcLayoutPositions():void {
			for(var i:int = 0; i< layoutW; i++){
				layoutXPercents[i] = sum(layoutWPercents,0,i-1);
			}
		
			for(var j:int = 0; j< layoutH; j++){
				layoutYPercents[j] = sum(layoutHPercents,0,j-1);
			}
		}
		
		// Basic Functions
		
		private function sum(arr:Array, from:int, to:int):Number {
			if(from > to) return 0;
			
			var sumn:Number = 0;
			
			for(var i:int = from; i <= to; i++){
				sumn += arr[i];
			}
			
			return sumn;
		}
		
	}
}