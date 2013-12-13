package yakolab.s4m.util
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.geom.Matrix;

	public class CropUtil
	{
		public static function getCroppedBitmapData(x:Number, y:Number, width:Number, height:Number, scoreImageData:BitmapData):BitmapData {
			var maskObj:Shape = new Shape();
			var g:Graphics;
			
			g = maskObj.graphics;
			g.beginFill(0xFFFFFF, 1);
			g.drawRect(x, y, width, height);
			g.endFill();
			
			if(maskObj.width == 0 && maskObj.height == 0) return null;
			
			var bd:BitmapData = new BitmapData(maskObj.width, maskObj.height, true, 0);
			var matrix:Matrix = new Matrix();
			matrix.translate(-x,-y);
			
			bd.draw(scoreImageData, matrix);
			
			return bd;
		}
		
		public function CropUtil()
		{
		}
	}
}