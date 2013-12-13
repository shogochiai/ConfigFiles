package yakolab.s4m.view
{
	import spark.components.BorderContainer;
	
	public class FujiRegion extends BorderContainer
	{
		private var zoom:Number;
		private var bookPanel:BookPanel
		public var fuji_uid:String;
		public var baseX:Number;
		public var baseY:Number;
		public var baseWidth:Number;
		public var baseHeight:Number;
		public var dragStartX:Number;
		public var dragStartY:Number;
		
		public function set zoomFactor(zoom:Number):void {
			this.zoom = zoom;
			if(bookPanel) refresh();
		}
		
		private function refresh():void {
			this.x = baseX*zoom + bookPanel.imageContainer.x;
			this.y = baseY*zoom + bookPanel.imageContainer.y;
			this.width = baseWidth*zoom;
			this.height = baseHeight*zoom;
		}
		
		public function FujiRegion(bookPanel:BookPanel)
		{
			super();
			
			this.bookPanel = bookPanel;
		}
	}
}