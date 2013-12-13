package yakolab.s4m.model
{
	import flash.utils.Dictionary;

	public class CategoryClasses
	{
		public var xml:XML;
		public var id:int;
		public var category_id:int;
		public var rev:int;
		public var currentMaximumId:int = 0;
		public var _classList:Dictionary = new Dictionary();
		
		
		public function createNewFujiClass(name:String):int {
			var cls:FujiClass = new FujiClass();
			cls.name = name;
			
			return addFujiClass(cls); // returns id
		}
	
		public function addFujiClass(cls:FujiClass, id:int=-1):int {
			if(id == -1){
				id = currentMaximumId+1;
				cls.id = id;
				currentMaximumId++;
			}else{
				if(currentMaximumId < id){
					currentMaximumId = id;
				}
			}
			
			_classList[id] = cls;
			
			return id;
		}
		
		public function getFujiClass(id:int):FujiClass {
			return _classList[id];
		}
		
		public function CategoryClasses(xml:XML, id:int, category_id:int, rev:int)
		{
			this.xml = xml.copy();
			this.id = id;
			this.category_id = category_id;
			this.rev = rev;
			
			if(rev == 0) rev = -1;
		}
	}
}