package {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;

	import org.osflash.signals.ISignal;
	import org.osflash.signals.Signal;

	public class ClickButton extends Sprite {
		private var _textField:TextField;
		private var _bitmap:Bitmap;
		private var _clickSignal:ISignal;

		public function ClickButton() {
			super();

			_clickSignal = new Signal();
			_textField = new TextField();
			_bitmap = new Bitmap(new BitmapData(100, 100, false, 0xff00ff));

			_textField.y = (_bitmap.height - _textField.height) << 1;

			addChild(_bitmap);
			addChild(_textField);

			_textField.text = "Click it";

			addEventListener(MouseEvent.CLICK, onClick);
		}

		private function onClick(event:MouseEvent):void {
			_clickSignal.dispatch();
		}

		//--------------------------------------------------------------------------
		//   							PUBLIC METHODS
		//--------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//   					  PRIVATE\PROTECTED METHODS
		//--------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//   							HANDLERS
		//--------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//  							GETTERS/SETTERS
		//--------------------------------------------------------------------------
		public function get clickSignal():ISignal {
			return _clickSignal;
		}
	}
}
