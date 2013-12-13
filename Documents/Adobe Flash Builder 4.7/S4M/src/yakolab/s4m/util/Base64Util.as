package yakolab.s4m.util
{
	import flash.utils.ByteArray;
	
	import mx.utils.Base64Decoder;
	import mx.utils.Base64Encoder;

	public class Base64Util
	{
		public static function encodeByte(ba:ByteArray):String {
			var enc:Base64Encoder = new Base64Encoder();
			enc.encodeBytes(ba);
			var s:String = enc.toString();
			return s;
		}
		
		public static function encode(str:String):String {
			var enc:Base64Encoder = new Base64Encoder();
			enc.encodeUTFBytes(str);
			var s:String = enc.toString();
			return escape(s);
		}
		
		public static function decode(str:String):String {
			var str2:String = unescape(str);
			var dec:Base64Decoder = new Base64Decoder();
			dec.decode(str2);
			var ba:ByteArray = dec.toByteArray();
			var s:String = ba.readUTFBytes(ba.length);
			return s;
		}
		
		public function Base64Util()
		{
		}
	}
}