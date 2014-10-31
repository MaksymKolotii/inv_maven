package {

	import flash.display.Sprite;
	import flash.text.TextField;

	public class Main extends Sprite {

		private var _clickButton:ClickButton;

		public function Main() {
			var textField:TextField = new TextField();
			textField.text = "Hello, World";
			addChild(textField);

			_clickButton = new ClickButton();
			_clickButton.x = _clickButton.y = 50;
			addChild(_clickButton);
			_clickButton.clickSignal.add(onButtonClick);
		}

		private function onButtonClick():void {
			_clickButton.visible = false;
		}
	}
}
