package yakolab.s4m.model
{
	import flash.display.BitmapData;
	
	import mx.utils.UIDUtil;
	
	import yakolab.s4m.util.Vec;

	public class Fuji
	{
		public var uid:String;
		
		public function createUID():void {
			//uid = UIDUtil.getUID(this);
			uid = UIDUtil.createUID();
		}
		
		public var parent:FujiData;
		public var drawData:BitmapData = null;
		public var captureData:BitmapData = null;
		
		public var cell_x:int;
		public var cell_y:int;
		public var x:int = 0;
		public var y:int = 0;
		
		public var interpret:String = "";
		public var name:String;
		public var kana:String;
		
		public function Fuji(_parent:FujiData=null){
			parent = _parent;
		}
		
	}
}