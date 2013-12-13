package yakolab.s4m.util
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;

	public class SQLUtil
	{
		public static var baseURL:String = "/tobiume/service/";
		
		public static function loadImage(url:String, data:URLVariables, feedback:Function):void {
			var img:Loader = new Loader();
			var req:URLRequest = new URLRequest(baseURL + url);
			img.contentLoaderInfo.addEventListener(Event.COMPLETE, feedback);
			req.data = data;
			img.load(req);
		}
		
		public static function query(url:String, data:URLVariables, feedback:Function, isByte:Boolean=false):void {
			var loader:URLLoader = new URLLoader();
			var req:URLRequest = new URLRequest(baseURL + url);
			
			if(data){
				req.method = URLRequestMethod.POST;
				req.data = data;
			}
			loader.addEventListener(Event.COMPLETE, feedback);
			
			if(isByte){
				loader.dataFormat = URLLoaderDataFormat.BINARY;
			}else{
				loader.dataFormat = URLLoaderDataFormat.TEXT;
			}
			loader.load(req);
		}
		
		public function SQLUtil()
		{
		}
	}
}