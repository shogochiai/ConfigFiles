package yakolab.s4m.model
{
	import flash.display.BitmapData;

	public class Book
	{	
		public var fujiData:FujiData;
		
		public var fuji_class_category_version_id:int;
		public var score_id:int;
		public var score_version:int = 0;
		public var image_id:int;
		public var image:BitmapData;
		
		public var songname:String = "";
		public var subtitle1:String = "";
		public var subtitle2:String = "";
		public var songname_kana:String = "";
		public var subtitle1_kana:String = "";
		public var subtitle2_kana:String = "";
		public var source:String = "";
		public var publish_place:String = "";
		public var holder:String = "";
		public var publisher:String = "";
		public var publish_year:String = "";
		public var premiere_year:String = "";
		public var book_type:String = "";
		public var pages_and_lines:String = "";
		public var remarks:String = "";
		public var freecolumn:String = "";
		
		public var imageWidth:int;
		public var imageHeight:int;
		
		public function Book()
		{
			fujiData = new FujiData();
		}
	}
}