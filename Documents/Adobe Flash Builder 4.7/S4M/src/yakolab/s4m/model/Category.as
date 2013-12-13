package yakolab.s4m.model
{
	public class Category
	{
		private var _id:int;
		private var rev:int;
		public var name:String;
		public var created:Date;
		public var updated:Date;
		
		public function get id():int {
			return _id;
		}
		
		public function set id(val:int):void {
			_id = val;
			
			loadCategory();
		}
		
		private function loadCategory():void {
			var id:int = _id;
			
			// Impl load from DB
		}
		
		public function Category(id:int, rev:int = -1)
		{
			this.rev = rev;
			this.id = id;
		}
	}
}